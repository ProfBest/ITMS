﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using ITMS.BusinessObjects;
//using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Scholar;
using System.Data.SqlClient;
using ITMS.BusinessObjects.Collection;
//using ITMS.BusinessObjects.Sponsor;

namespace ITMS.Web
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        StudentCollection objStudentList = new StudentCollection();

        protected void Page_Load(object sender, EventArgs e)
        {
            CST4900Panel.Visible = false;
            CST4905Panel.Visible = false;

            StudentTestPanel1.Visible = false;

            //graduation date 
            CompValidatorGradDte2.ValueToCompare = DateTime.Now.ToString("MM/dd/yyyy");
            //semester date 
           // CompValidatorSemesterYear.ValueToCompare = DateTime.Now.ToString("yyyy");

            /* ASP.NET CODE REQUIRED TO DETERMINE IF THIS IS FIRST TIME PAGE IS LOADED (FIRST TRIP POSTBACK = False) OR IS THIS SECOND TRIP AND
             * FORWARD (POSTBACK = True) or POSTBACK/REVISIT OF THE PAGE AFTER IT HAS TRAVELLED BACK FROM CLIENT BROWSER.
             */
            if (!IsPostBack)
            {
                //One call to the database to load the moduels into the dropdown
                var modules = ModuleCollection.GetAll();

                ddlModule1.DataSource = modules;
                ddlModule1.DataTextField = "Description";
                ddlModule1.DataValueField = "ModuleId";
                ddlModule1.DataBind();

                ddlModule2.DataSource = modules;
                ddlModule2.DataTextField = "Description";
                ddlModule2.DataValueField = "ModuleId";
                ddlModule2.DataBind();

                ddlModule3.DataSource = modules;
                ddlModule3.DataTextField = "Description";
                ddlModule3.DataValueField = "ModuleId";
                ddlModule3.DataBind();

                // StudentCollection.Load();

                // Session.Add("objStudentList", objStudentList);
            }

            else
            {
                // >= SECOND TRIPS (PostBack = True)
                // Get Pointer to Collection stored in Session Object for USE Trought
                //Session.Add("objStudentList", objStudentList);
            }
        }


 
        protected void CheckCST(object sender, EventArgs e)
        {
            
             if (DropDownListCST.SelectedValue == "CST4900")
             {
                 CST4900Panel.Visible = true;
                 CST4905Panel.Visible = false;
             }
             else
                 if (DropDownListCST.SelectedValue == "CST4905")
                 {
                     CST4905Panel.Visible = true;
                     CST4900Panel.Visible = false;
                 }
          
        }

        protected void rbtnCST4900_CheckedChanged(object sender, EventArgs e)
        {
        //    rbtnCST4900.Checked = true;
        //    rbtnCST4905.Checked = false;
            CST4900Panel.Visible = true;
            CST4905Panel.Visible = false;
        }

        protected void rbtnCST4905_CheckedChanged(object sender, EventArgs e)
        {

        //    rbtnCST4905.Checked = true;
        //    rbtnCST4900.Checked = false;
            CST4905Panel.Visible = true;
            CST4900Panel.Visible = false;
        }

        protected void SubmitStudentBtn_Click(object sender, EventArgs e)
        {


            //Create default Object
            Student objStudent = new Student();

            //Set Object with Form data
            objStudent.StudentID = txtCUNYID.Text;
            objStudent.FirstName = txtFirstName.Text;
            objStudent.LastName = txtLastName.Text;
            objStudent.Address = txtStreet.Text;

            objStudent.PhoneDay = txtDayPhone.Text;
            objStudent.PhoneEvening = txtEveningPhone.Text;
            objStudent.Last4SSN = txtLast4SSN.Text;
            objStudent.City = txtCity.Text;
            objStudent.State = ddlState.SelectedValue;


            objStudent.PhoneCell = txtCellPhone.Text;
            objStudent.Email = txtEmail.Text;
            objStudent.Zipcode = txtZip.Text;

            //TODO: Need validation on this items
            objStudent.GPA = (Convert.ToDecimal(txtGPA.Text));
            objStudent.GraduationDate = Convert.ToDateTime(txtGradDate.Text);

            objStudent.InternshipRequirement = new InternshipRequirement();
            objStudent.InternshipRequirement.Semester = ddlCurrentSemester.SelectedItem.Text + " " + txtSemesterYear.Text;


            var module1 = new Module();
            module1.ModuleId = Convert.ToInt16(ddlModule1.SelectedValue);

            var module2 = new Module();
            module2.ModuleId = Convert.ToInt16(ddlModule2.SelectedValue);

            var module3 = new Module();
            module3.ModuleId = Convert.ToInt16(ddlModule3.SelectedValue);

            //Complex object: adding modules
            objStudent.InternshipRequirement.ModulesTaken.Add(new ModuleTaken() { Module = module1 });
            objStudent.InternshipRequirement.ModulesTaken.Add(new ModuleTaken() { Module = module2 });
            objStudent.InternshipRequirement.ModulesTaken.Add(new ModuleTaken() { Module = module3 });

            var ProgrammingPref = Convert.ToInt16(ddlProgramming.SelectedValue);
            var NetworkingPref = Convert.ToInt16(ddlNetworking.SelectedValue);
            var WebDesignPref = Convert.ToInt16(ddlWebDesign.SelectedValue);
            var DatabasePref = Convert.ToInt16(ddlDatabase.SelectedValue);
            var SecurityPref = Convert.ToInt16(ddlSecurity.SelectedValue);

            objStudent.InternshipRequirement.PreferenceRanks.Add(new PreferenceRank() { Rank = ProgrammingPref, Preference = new PreferenceOption() { PreferenceId = 1 } });
            objStudent.InternshipRequirement.PreferenceRanks.Add(new PreferenceRank() { Rank = NetworkingPref, Preference = new PreferenceOption() { PreferenceId = 2 } });
            objStudent.InternshipRequirement.PreferenceRanks.Add(new PreferenceRank() { Rank = WebDesignPref, Preference = new PreferenceOption() { PreferenceId = 3 } });
            objStudent.InternshipRequirement.PreferenceRanks.Add(new PreferenceRank() { Rank = DatabasePref, Preference = new PreferenceOption() { PreferenceId = 4 } });
            objStudent.InternshipRequirement.PreferenceRanks.Add(new PreferenceRank() { Rank = SecurityPref, Preference = new PreferenceOption() { PreferenceId = 5 } });

           // if (rbtnCST4905.Checked)
                if (DropDownListCST.SelectedValue == "CST4905")

                objStudent.InternshipRequirement.InternshipType = BusinessObjects.InternshipType.Project;
            else
                objStudent.InternshipRequirement.InternshipType = BusinessObjects.InternshipType.Internship;


            if (objStudent.InternshipRequirement.InternshipType == BusinessObjects.InternshipType.Internship)
            {
                if (ddlDriverLicense.SelectedItem.Text.ToLower() == "yes")
                    objStudent.InternshipRequirement.DriverLicense = true;
                else
                    objStudent.InternshipRequirement.DriverLicense = false;

                if (ddlOwnAcar.SelectedItem.Text.ToLower() == "yes")
                    objStudent.InternshipRequirement.Owncar = true;
                else
                    objStudent.InternshipRequirement.Owncar = false;

                if (ddlTravelToNJ.SelectedItem.Text.ToLower() == "yes")
                    objStudent.InternshipRequirement.TravelNJ = true;
                else
                    objStudent.InternshipRequirement.TravelNJ = false;

                if (ddlTravelToWestchester.SelectedItem.Text.ToLower() == "yes")
                    objStudent.InternshipRequirement.TravelWestchester = true;
                else
                    objStudent.InternshipRequirement.TravelWestchester = false;

                if (ddlLimitations.SelectedItem.Text.ToLower() == "yes")
                {
                    objStudent.InternshipRequirement.Limitation = true;
                    objStudent.InternshipRequirement.LimitationExplanation = txtLimitations.Text;
                }
                else
                    objStudent.InternshipRequirement.Limitation = false;
            }

            if (objStudent.InternshipRequirement.InternshipType == BusinessObjects.InternshipType.Project)
            {
                objStudent.Employer = new Employer()
                {
                    CompanyName = txtEmpName.Text
                    ,SupervisorName = TxtMgrName.Text
                    ,Title = txtEmployeeTitle.Text
                    ,Department = txtEmployeeDept.Text
                    ,PhoneNumber = txtMgrPhone.Text
                    ,Address = txtEmployerStreet.Text
                    ,City = txtEmployerCity.Text
                    ,State = ddlEmployerState.SelectedItem.Text
                    ,Zipcode = txtEmployerZip.Text
                    ,Duties = txtJobDescription.Text
                };
            }

            // This is a check if CUNYID already exists on database
            // objStudent.StudentID = txtCUNYID.Text;
            var student = Student.Load(txtCUNYID.Text);
            if (student != null)
            {
                Response.Write("<script>alert('CUNY First ID already exists on database. Please reenter!')</script>");
                if (DropDownListCST.SelectedValue == "CST4900")
                {
                    CST4900Panel.Visible = true;
                    CST4905Panel.Visible = false;
                }
                else
                    if (DropDownListCST.SelectedValue == "CST4905")
                    {
                        CST4905Panel.Visible = true;
                        CST4900Panel.Visible = false;
                    }
            }
            else
            {
                objStudent.Insert();
                Session["student"] = objStudent;
                Response.Redirect("~/StudentUpload.aspx");
                StudentTestPanel1.Visible = true;
            }
           
           
        }

        protected void ddlModule1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //********************************************************************************
        //    this is for duplictae modules 
        protected void ddlModule1_SelectedIndexChangedX(object sender, EventArgs e)
        {
            ddlModule1.Attributes.Add("onchange", "javascript:return ReValidateMod();");

        }

        protected void ddlModule2_SelectedIndexChanged(object sender, EventArgs e)
        {

            ddlModule2.Attributes.Add("onchange", "javascript:return ReValidateMod();");

        }

        protected void ddlModule3_SelectedIndexChanged(object sender, EventArgs e)
        {

            ddlModule3.Attributes.Add("onchange", "javascript:return ReValidateMod();");

        }
        //********************************************************************************
        protected void ClearStudentBtn_Click(object sender, EventArgs e)
        {
            // Clearing out fields inside form 
            Control maincontentctl = this.Master.FindControl("MainContent");
            if (maincontentctl != null)
            // put a check in for undefined object 
            {
                foreach (Control ctrl in maincontentctl.Controls)
                {
                    if (ctrl is TextBox)
                    {
                        TextBox tb = (TextBox)ctrl;
                        tb.Text = string.Empty;
                    }
                    else if (ctrl is DropDownList)
                    {
                        DropDownList dl = (DropDownList)ctrl;
                        dl.SelectedIndex = 0;
                    }
                    else if (ctrl is CheckBox)
                    {
                        CheckBox cb = (CheckBox)ctrl;
                        cb.Checked = false;
                    }
                } // end of foreach MainContent
            } // end of if not null or undefined

            //Clear text in  CST4900 Panel

            ClearCST4900Text(CST4900Panel);

            //Clear text in CST4905Panel

            ClearCST4905Text(CST4905Panel);
        }

        //********************************************************************************
        protected void ClearCST4900Text(Control control)
        {
            foreach (Control ctrl in control.Controls)
            {
                if (ctrl is TextBox)
                {
                    TextBox tb = (TextBox)ctrl;
                    tb.Text = string.Empty;
                }
                else if (ctrl is DropDownList)
                {
                    DropDownList dl = (DropDownList)ctrl;
                    dl.SelectedIndex = 0;
                }
                else if (ctrl is CheckBox)
                {
                    CheckBox cb = (CheckBox)ctrl;
                    cb.Checked = false;
                }

            } // end of foreach cst4900panel
         //   txtLimitations.InnerText = "";


        } // end of ClearCST4900Text

        //********************************************************************************

        protected void ClearCST4905Text(Control control)
        {
            foreach (Control ctrl in control.Controls)
            {
                if (ctrl is TextBox)
                {
                    TextBox tb = (TextBox)ctrl;
                    tb.Text = string.Empty;
                }
                else if (ctrl is DropDownList)
                {
                    DropDownList dl = (DropDownList)ctrl;
                    dl.SelectedIndex = 0;
                }
                else if (ctrl is CheckBox)
                {
                    CheckBox cb = (CheckBox)ctrl;
                    cb.Checked = false;
                }

            } // end of foreach cst4905panel
        //    txtJobDescription.InnerText = "";

        } // end of ClearCST4905Text
        //******************************************************************************* 
    }
}
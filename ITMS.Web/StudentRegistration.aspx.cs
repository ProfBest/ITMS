using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using ITMS.BusinessObjects;
//using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Scholar;
//using ITMS.BusinessObjects.Sponsor;

namespace ITMS.Web
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


          CST4900Panel.Visible =false;
          CST4905Panel.Visible =false;

          StudentTestPanel1.Visible = false;

        }

    

        protected void rbtnCST4900_CheckedChanged(object sender, EventArgs e)
        {
            rbtnCST4900.Checked = true;
            rbtnCST4905.Checked = false;
            CST4900Panel.Visible = true;
            CST4905Panel.Visible = false;
        }

        protected void rbtnCST4905_CheckedChanged(object sender, EventArgs e)
        {

            rbtnCST4905.Checked = true;
            rbtnCST4900.Checked = false;
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
           // objStudent.InternshipRequirement.Semester = ddlCurrentSemester.SelectedValue;

            //rm 03/21/2014 GPA and graduation date not initialized correctly Temporary Fix

           // objStudent.GPA = Convert.ToDecimal(txtGPA.Text);
           // objStudent.GraduationDate = Convert.ToDateTime(txtGradDate.Text);
            

         if (txtGPA.Text == ""  )
                   {
                  objStudent.GPA = 0.000M;  
                  }

         else
                 {
                  objStudent.GPA = (Convert.ToDecimal(txtGPA.Text));
                  }

         if (txtGradDate.Text == "")
         {
             DateTime saveNow = DateTime.Now;
             objStudent.GraduationDate = saveNow;
         }
         else
         {
             objStudent.GraduationDate = Convert.ToDateTime(txtGradDate.Text);
         }

            //Create Module object for First Module
            Module objModule1 = new Module();
            objModule1.ModuleId = 1;
            objModule1.Description = ddlModule1.SelectedValue;
            
            //Assign Module to Student Object
           // objStudent.InternshipRequirement.ModulesTaken.Add(objModule1);

                        
            //Label18.Text = ddlModule2.SelectedValue;
            //Label19.Text = ddlModule3.SelectedValue;

/*
           //Handling the selection of the Internship Course (CST4900 or CST4905) radio buttons.
        If intyp.SelectedItem.Text = "CST4900" Then
            objStudent.IntershipRequirements.InternshipClass = InternShipClass.CST4900

        Else
            'Set the internship class selection
            objStudent.IntershipRequirements.InternshipClass = InternShipClass.CST4905

            'Set properties of Employer object
            objStudent.CST4905Employeer.StudentID = stdid.Text.Trim
            objStudent.CST4905Employeer.Title = tle.Text.Trim
            objStudent.CST4905Employeer.CompanyName = frm.Text.Trim
            objStudent.CST4905Employeer.Department = dept.Text.Trim
            objStudent.CST4905Employeer.Manager = spname.Text.Trim
            objStudent.CST4905Employeer.Address = saddr2.Text.Trim

            objStudent.CST4905Employeer.City = cty2.Text.Trim
            objStudent.CST4905Employeer.State = statedd3.SelectedItem.Value.Trim
            objStudent.CST4905Employeer.ZipCode = zip2.Text.Trim
            objStudent.CST4905Employeer.Phone = ph2.Text.Trim
            objStudent.CST4905Employeer.DutiesDesc = duties.Text.Trim

        End If

*/
            
            StudentTestPanel1.Visible = true;

            Label2.Text = txtCUNYID.Text;
            Label3.Text = txtFirstName.Text;
            Label4.Text = txtLastName.Text;
            Label5.Text = txtStreet.Text;
            Label6.Text = txtDayPhone.Text;
            Label7.Text = txtEveningPhone.Text;
            Label8.Text = txtLast4SSN.Text;
            Label9.Text = txtCity.Text;
            Label10.Text = ddlState.SelectedValue;
            Label11.Text = txtCellPhone.Text;
            Label12.Text = txtEmail.Text;
            Label13.Text = txtZip.Text;
            Label14.Text = ddlCurrentSemester.SelectedValue;
            Label15.Text = txtGPA.Text;
            Label16.Text = txtGradDate.Text;
            Label17.Text = ddlModule1.SelectedValue;
            Label18.Text = ddlModule2.SelectedValue;
            Label19.Text = ddlModule3.SelectedValue;

        }

     
        }
}
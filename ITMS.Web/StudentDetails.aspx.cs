using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects.Scholar;

namespace WebApplication {
    public partial class StudentDetails : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {

                if (Request.QueryString.AllKeys.Contains("Id")) {
                    //int studentId = 0;
                    var studentId = Request.QueryString.Get("Id");

                    var student = Student.Load(studentId);

                    //setup UI
                    txtCunyFirstId.Text = student.StudentID;
                    txtDayPhone.Text = student.PhoneDay;
                    txtFirstName.Text = student.FirstName;
                    txtLastName.Text = student.LastName;
                    txtEveningPhone.Text = student.PhoneEvening;
                    txtLastName.Text = student.LastName;
                    txtCellPhone.Text = student.PhoneCell;
                    txtEmail.Text = student.Email;
                    txtAddress.Text = student.Address;
                    txtCity.Text = student.City;
                    txtGraduationDate1.Text = student.GraduationDate.ToShortDateString();
                    txtState.Text = student.State;
                    txtGpa.Text = student.GPA.ToString();
                    txtZipCode.Text = student.Zipcode;
                    txtSsnum.Text = student.Last4SSN;

                    txtInfoGraduationDate.Text = student.GraduationDate.ToShortDateString();
                    txtInfoGpa.Text = student.GPA.ToString();
                    student.InternshipRequirement.ModulesTaken.ForEach(x =>
                        txtModulesTaken.Text += x.Module.Description + "\r"
                   );

                    //Internship Info
                    txtInternshipSemester.Text = student.InternshipRequirement.Semester;
                    txtProgramming.Text = student.InternshipRequirement.PreferenceRanks.FirstOrDefault(x => x.Preference.Description.ToLower() == "programming").Rank.ToString();
                    txtDatabase.Text = student.InternshipRequirement.PreferenceRanks.FirstOrDefault(x => x.Preference.Description.ToLower() == "database").Rank.ToString();
                    txtWebDesign.Text = student.InternshipRequirement.PreferenceRanks.FirstOrDefault(x => x.Preference.Description.ToLower() == "web design").Rank.ToString();
                    txtNetworking.Text = student.InternshipRequirement.PreferenceRanks.FirstOrDefault(x => x.Preference.Description.ToLower() == "networking").Rank.ToString();

                    txtHasDriverLicense.Text = student.InternshipRequirement.DriverLicense ? "Yes" : "No";
                    txtOwnsCar.Text = student.InternshipRequirement.Owncar ? "Yes" : "No";
                    txtTravelNj.Text = student.InternshipRequirement.TravelNJ ? "Yes" : "No";
                    txtTravelNy.Text = student.InternshipRequirement.TravelWestchester ? "Yes" : "No";
                    txtLimitations.Text = student.InternshipRequirement.LimitationExplanation;

                    //Employer Information

                    txtEmployerName.Text = student.Employer.CompanyName;
                    txtEmpInfoCity.Text = student.Employer.City;
                    txtTitle.Text = student.Employer.Title;
                    txtManagerName.Text = student.Employer.SupervisorName;
                    txtManagerPhone.Text = student.Employer.PhoneNumber;
                    txtDepartment.Text = student.Employer.Department;
                    txtEmpInfoCity.Text = student.Employer.City;
                    txtJobDescription.Text = student.Employer.Duties;
                    txtZip.Text = student.Employer.Zipcode;
                    
                    //txtState.Text = student.Employer.State;








                }



                ddlStates.DataSource = PopulateStates();
                ddlStates.DataTextField = "StateName";
                ddlStates.DataValueField = "StateName";

                ddlStates.DataBind();

                ddlStates.SelectedIndex = 0;
            }
        }

        //protected void ShowFilledInformation(object sender, EventArgs e)
        //{

        //}

        private ICollection PopulateStates() {
            DataTable dataTable = new DataTable();
            dataTable.Columns.Add(new DataColumn("StateName", typeof(string)));

            dataTable.Rows.Add(CreateStateRow("", dataTable));
            dataTable.Rows.Add(CreateStateRow("Alabama", dataTable));
            dataTable.Rows.Add(CreateStateRow("Alaska", dataTable));
            dataTable.Rows.Add(CreateStateRow("American Samoa", dataTable));
            dataTable.Rows.Add(CreateStateRow("Arizona", dataTable));
            dataTable.Rows.Add(CreateStateRow("Arkansas", dataTable));
            dataTable.Rows.Add(CreateStateRow("California", dataTable));
            dataTable.Rows.Add(CreateStateRow("Colorado", dataTable));
            dataTable.Rows.Add(CreateStateRow("Connecticut", dataTable));
            dataTable.Rows.Add(CreateStateRow("Delaware", dataTable));
            dataTable.Rows.Add(CreateStateRow("District of Columbia", dataTable));
            dataTable.Rows.Add(CreateStateRow("Florida", dataTable));
            dataTable.Rows.Add(CreateStateRow("Georgia", dataTable));
            dataTable.Rows.Add(CreateStateRow("Guam", dataTable));
            dataTable.Rows.Add(CreateStateRow("Hawaii", dataTable));
            dataTable.Rows.Add(CreateStateRow("Idaho", dataTable));
            dataTable.Rows.Add(CreateStateRow("Illinois", dataTable));
            dataTable.Rows.Add(CreateStateRow("Indiana", dataTable));
            dataTable.Rows.Add(CreateStateRow("Iowa", dataTable));
            dataTable.Rows.Add(CreateStateRow("Kansas", dataTable));
            dataTable.Rows.Add(CreateStateRow("Kentucky", dataTable));
            dataTable.Rows.Add(CreateStateRow("Louisiana", dataTable));
            dataTable.Rows.Add(CreateStateRow("Maine", dataTable));
            dataTable.Rows.Add(CreateStateRow("Maryland", dataTable));
            dataTable.Rows.Add(CreateStateRow("Massachusetts", dataTable));
            dataTable.Rows.Add(CreateStateRow("Michigan", dataTable));
            dataTable.Rows.Add(CreateStateRow("Minnesota", dataTable));
            dataTable.Rows.Add(CreateStateRow("Mississippi", dataTable));
            dataTable.Rows.Add(CreateStateRow("Missouri", dataTable));
            dataTable.Rows.Add(CreateStateRow("Montana", dataTable));
            dataTable.Rows.Add(CreateStateRow("Nebraska", dataTable));
            dataTable.Rows.Add(CreateStateRow("Nevada", dataTable));
            dataTable.Rows.Add(CreateStateRow("New Hampshire", dataTable));
            dataTable.Rows.Add(CreateStateRow("New Jersey", dataTable));
            dataTable.Rows.Add(CreateStateRow("New Mexico", dataTable));
            dataTable.Rows.Add(CreateStateRow("New York", dataTable));
            dataTable.Rows.Add(CreateStateRow("North Carolina", dataTable));
            dataTable.Rows.Add(CreateStateRow("North Dakota", dataTable));
            dataTable.Rows.Add(CreateStateRow("Northern Marianas Islands", dataTable));
            dataTable.Rows.Add(CreateStateRow("Ohio", dataTable));
            dataTable.Rows.Add(CreateStateRow("Oklahoma", dataTable));
            dataTable.Rows.Add(CreateStateRow("Oregon", dataTable));
            dataTable.Rows.Add(CreateStateRow("Pennsylvania", dataTable));
            dataTable.Rows.Add(CreateStateRow("Puerto Rico", dataTable));
            dataTable.Rows.Add(CreateStateRow("Rhode Island", dataTable));
            dataTable.Rows.Add(CreateStateRow("South Carolina", dataTable));
            dataTable.Rows.Add(CreateStateRow("South Dakota", dataTable));
            dataTable.Rows.Add(CreateStateRow("Tennessee", dataTable));
            dataTable.Rows.Add(CreateStateRow("Texas", dataTable));
            dataTable.Rows.Add(CreateStateRow("Utah", dataTable));
            dataTable.Rows.Add(CreateStateRow("Vermont", dataTable));
            dataTable.Rows.Add(CreateStateRow("Virginia", dataTable));
            dataTable.Rows.Add(CreateStateRow("Virgin Islands", dataTable));
            dataTable.Rows.Add(CreateStateRow("Washington", dataTable));
            dataTable.Rows.Add(CreateStateRow("West Virginia", dataTable));
            dataTable.Rows.Add(CreateStateRow("Wisconsin", dataTable));
            dataTable.Rows.Add(CreateStateRow("Wyoming", dataTable));

            DataView dataView = new DataView(dataTable);
            return dataView;
        }

        private DataRow CreateStateRow(string state, DataTable dataTable) {
            DataRow dataRow = dataTable.NewRow();
            dataRow[0] = state;

            return dataRow;
        }
    }
}
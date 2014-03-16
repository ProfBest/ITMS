using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Sponsor;

namespace ITMS.Web
{
    public partial class SponsorCompanyMainRegistrationPage : System.Web.UI.Page
    {
        Company objCompany = new Company();


        protected void Page_Load(object sender, EventArgs e)
        {
            CompAddManagerPanel.Visible = false;
            CompButtonPanel.Visible = false;
            //CompAddMOREManagerButton.Visible = false;
            //CompAddPositionButton.Visible = false;
            
        }


        protected void CompSubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                objCompany.CompanyName = NewCompRegNameTextBox.Text;
                objCompany.Address = CompAddressTextBox.Text;
                objCompany.City = CompCityTextBox.Text;
                objCompany.State = StateDropDownList.SelectedItem.Text;
                objCompany.Zipcode = CompZIPTextBox.Text;
                objCompany.PhoneNumber = CompPhoneTextBox.Text;
                objCompany.Insert();
               // CompanyCollection.Add(objCompany);
            }
            catch (NullReferenceException)
            {
                //Add Exception handle code HERE
                
            }
            catch (ArgumentNullException)
            {

            }
        }

        protected void CompAddManagerButton_Click(object sender, EventArgs e)
        {
            try
            {    
                //Have the Manager Object ready
                Manager objManager = new Manager();

                //Save Company Info fir later insert into the database 
                objCompany.CompanyName = NewCompRegNameTextBox.Text;
                objCompany.Address = CompAddressTextBox.Text;
                objCompany.City = CompCityTextBox.Text;
                objCompany.State = StateDropDownList.SelectedItem.Text;
                objCompany.Zipcode = CompZIPTextBox.Text;
                objCompany.PhoneNumber = CompPhoneTextBox.Text;

                //Hide the Company panel to add Manager 
                Panel2.Visible = false;               
                CompAddManagerPanel.Visible = true;
                CompButtonPanel.Visible = true;
                

            }
            catch (NullReferenceException)
            {
                //Add Exception handle code HERE

            }
            catch (ArgumentNullException)
            {

            }
            
        }

        protected void CompClearButton0_Click(object sender, EventArgs e)
        {
            try
            {
                NewCompRegNameTextBox.Text = "";
                CompAddressTextBox.Text = "";
                CompCityTextBox.Text = "";
                StateDropDownList.Text = "";
                CompZIPTextBox.Text = "";
                CompPhoneTextBox.Text = "";
            }
            catch
            {
                // Add exception code
            }
        }

        protected void CompAddMOREManagerButton_Click(object sender, EventArgs e)
        {
            try
            {
                //Reusable Method to Add Manager to the collection
                Manager objAddManager = new Manager();
                objAddManager.FirstName = CompAddManFNameTextBox.Text;
                objAddManager.LastName = CompAddManLNameTextBox.Text;
                objAddManager.Title = CompAddManTitleDropList.SelectedValue;
                objAddManager.Department = CompAddManDeptmntTextBox.Text;
                objAddManager.Organization = CompAddManOrgTextBox.Text;
                objAddManager.Address = CompAddManAddressTextBox.Text;
                objAddManager.City = CompAddManCityTextBox.Text;
                objAddManager.State = CompAddManStateDropDown.SelectedValue;
                objAddManager.PhoneWork = CompAddManPhoneTextBox.Text;
                objAddManager.PhoneCell = CompAddManCELLTextBox.Text;
                objAddManager.Email = CompAddManEMailTextBox.Text;
                objCompany.AddManager(objAddManager);
                
                //Clear Fields for next Manager
                CompAddManFNameTextBox.Text = "";
                CompAddManLNameTextBox.Text = "";
                CompAddManTitleDropList.Text = "";
                CompAddManDeptmntTextBox.Text = "";
                CompAddManOrgTextBox.Text = "";
                CompAddManAddressTextBox.Text = "";
                CompAddManCityTextBox.Text = "";
                CompAddManStateDropDown.Text = "";
                CompAddManPhoneTextBox.Text = "";
                CompAddManCELLTextBox.Text = "";
                CompAddManEMailTextBox.Text = "";
                
            }
            catch
            {
                // Add exception code

            }
        }

        protected void AddManagerPanelSaveButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Add exception code
            }
            catch
            {
                // Add exception code

            }
            
        }

        protected void CompAddPositionButton_Click(object sender, EventArgs e)
        {
            try
            {
                //Dragons be Here
            }
            catch
            {
                // Add exception code

            }

        }

       

       

    

    }
}
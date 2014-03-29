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
            
        }


        

        //protected void CompAddManagerButton_Click(object sender, EventArgs e)
        

        //        //Hide the Company panel to add Manager 
        //        Panel2.Visible = false;               
        //        CompAddManagerPanel.Visible = true;
        //        CompButtonPanel.Visible = true;
                
           

        
        protected void CompAddMOREManagerButton_Click(object sender, EventArgs e)
        {
            try
            {

                if (Company_Panel.Visible == true)
                {
                    objCompany.CompanyName = NewCompRegNameTextBox.Text;
                    objCompany.Address = CompAddressTextBox.Text;
                    objCompany.City = CompCityTextBox.Text;
                    objCompany.State = StateDropDownList.SelectedItem.Text;
                    objCompany.Zipcode = CompZIPTextBox.Text;
                    objCompany.PhoneNumber = CompPhoneTextBox.Text;
                    objCompany.Insert();
                    //CompanyCollection.Add(objCompany);

                    
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
                    CompAddManZIPTextBox.Text = "";
                    CompAddManStateDropDown.Text = "";
                    CompAddManPhoneTextBox.Text = "";
                    CompAddManCELLTextBox.Text = "";
                    CompAddManEMailTextBox.Text = "";
                    Company_Panel.Visible = false;
                }
                else
                {
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
                    CompAddManZIPTextBox.Text = "";
                    CompAddManStateDropDown.Text = "";
                    CompAddManPhoneTextBox.Text = "";
                    CompAddManCELLTextBox.Text = "";
                    CompAddManEMailTextBox.Text = "";
                    Company_Panel.Visible = false;
                }
                
                


            }
            catch (System.Data.SqlClient.SqlException)
            {
                throw;
            }
            catch (NullReferenceException)
            {
                //Add Exception handle code HERE

            }
            catch (ArgumentNullException)
            {

            }
            catch
            {
                // Add exception code

            }  
           
        }

       

       

        protected void AddManagerPanelClearButton_Click(object sender, EventArgs e)
        {
             try
             {
                 NewCompRegNameTextBox.Text = "";
                 CompAddressTextBox.Text = "";
                 CompCityTextBox.Text = "";
                 StateDropDownList.Text = "";
                 CompZIPTextBox.Text = "";
                 CompPhoneTextBox.Text = "";

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

        protected void CompAddPositionButton_Click(object sender, EventArgs e)
        {

        }

        protected void AddManagerPanelSaveButton_Click(object sender, EventArgs e)
        {

        }

       

       

    

    }
}
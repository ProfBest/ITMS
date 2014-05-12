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
        Manager objAddManager = new Manager();



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        ///<remarks>
        ///In the event an additional Manager needs to
        ///be added, create a button and point it to the
        ///method below
        ///</remarks>

        //protected void CompAddMOREManagerButton_Click(object sender, EventArgs e)
        //{
        //    try
        //    {

        //        if (Company_Panel.Visible == true)
        //        {
        //            objCompany.CompanyName = NewCompRegNameTextBox.Text;
        //            objCompany.Address = CompAddressTextBox.Text;
        //            objCompany.City = CompCityTextBox.Text;
        //            objCompany.State = StateDropDownList.SelectedValue.ToString();
        //            objCompany.Zipcode = CompZIPTextBox.Text;
        //            objCompany.PhoneNumber = CompPhoneTextBox.Text;
        //            objCompany.Insert();




        //            objAddManager.FirstName = CompAddManFNameTextBox.Text;
        //            objAddManager.LastName = CompAddManLNameTextBox.Text;
        //            objAddManager.Title = CompAddManTitleDropList.SelectedValue.ToString();
        //            objAddManager.Department = CompAddManDeptmntTextBox.Text;
        //            objAddManager.Organization = CompAddManOrgTextBox.Text;
        //            objAddManager.Address = CompAddManAddressTextBox.Text;
        //            objAddManager.City = CompAddManCityTextBox.Text;
        //            objAddManager.State = CompAddManStateDropDown.SelectedValue.ToString();
        //            objAddManager.PhoneWork = CompAddManPhoneTextBox.Text;
        //            objAddManager.PhoneCell = CompAddManCELLTextBox.Text;
        //            objAddManager.Email = CompAddManEMailTextBox.Text;
        //            objCompany.AddManager(objAddManager);

        //            //Clear Fields for next Manager
        //            CompAddManFNameTextBox.Text = "";
        //            CompAddManLNameTextBox.Text = "";
        //            CompAddManTitleDropList.Text = "";
        //            CompAddManDeptmntTextBox.Text = "";
        //            CompAddManOrgTextBox.Text = "";
        //            CompAddManAddressTextBox.Text = "";
        //            CompAddManCityTextBox.Text = "";
        //            CompAddManZIPTextBox.Text = "";
        //            CompAddManStateDropDown.Text = "";
        //            CompAddManPhoneTextBox.Text = "";
        //            CompAddManCELLTextBox.Text = "";
        //            CompAddManEMailTextBox.Text = "";
        //            Company_Panel.Visible = false;
        //            Session["Manager"] = objAddManager;
        //        }
        //        else
        //        {

        //            objAddManager.FirstName = CompAddManFNameTextBox.Text;
        //            objAddManager.LastName = CompAddManLNameTextBox.Text;
        //            objAddManager.Title = CompAddManTitleDropList.SelectedValue;
        //            objAddManager.Department = CompAddManDeptmntTextBox.Text;
        //            objAddManager.Organization = CompAddManOrgTextBox.Text;
        //            objAddManager.Address = CompAddManAddressTextBox.Text;
        //            objAddManager.City = CompAddManCityTextBox.Text;
        //            objAddManager.State = CompAddManStateDropDown.SelectedValue;
        //            objAddManager.PhoneWork = CompAddManPhoneTextBox.Text;
        //            objAddManager.PhoneCell = CompAddManCELLTextBox.Text;
        //            objAddManager.Email = CompAddManEMailTextBox.Text;
        //            objCompany.AddManager(objAddManager);

        //            //Clear Fields for next Manager
        //            CompAddManFNameTextBox.Text = "";
        //            CompAddManLNameTextBox.Text = "";
        //            CompAddManTitleDropList.Text = "";
        //            CompAddManDeptmntTextBox.Text = "";
        //            CompAddManOrgTextBox.Text = "";
        //            CompAddManAddressTextBox.Text = "";
        //            CompAddManCityTextBox.Text = "";
        //            CompAddManZIPTextBox.Text = "";
        //            CompAddManStateDropDown.Text = "";
        //            CompAddManPhoneTextBox.Text = "";
        //            CompAddManCELLTextBox.Text = "";
        //            CompAddManEMailTextBox.Text = "";
        //            Company_Panel.Visible = false;
        //            Session["Manager"] = objAddManager;
        //        }




        //    }
        //    catch (System.Data.SqlClient.SqlException)
        //    {
        //        throw;
        //    }
        //    catch (NullReferenceException)
        //    {
        //        //Add Exception handle code HERE

        //    }
        //    catch (ArgumentNullException)
        //    {

        //    }
        //    catch
        //    {
        //        // Add exception code

        //    }  

        //}





        protected void AddManagerPanelClearButton_Click(object sender, EventArgs e)
        {
            try
            {
                //Clear the Values for the company and manager form

                NewCompRegNameTextBox.Text = "";
                CompAddressTextBox.Text = "";
                CompCityTextBox.Text = "";
                StateDropDownList.Text = "";
                CompZIPTextBox.Text = "";
                CompPhoneTextBox.Text = "";
                objCompany = null;
                //Clear Fields for next Manager
                CompAddManFNameTextBox.Text = "";
                CompAddManLNameTextBox.Text = "";
                CompAddManTitleDropList.Text = "";
                CompAddManDeptmntTextBox.Text = "";
                CompAddManOrgTextBox.Text = "";
                CompAddManAddressTextBox.Text = "";
                CompAddManCityTextBox.Text = "";
                CompAddManStateDropDown.Text = "";
                CompAddManZIPTextBox.Text = "";
                CompAddManPhoneTextBox.Text = "";
                CompAddManCELLTextBox.Text = "";
                CompAddManEMailTextBox.Text = "";
                objAddManager = null;
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
                //Set Company Object         
                objCompany.CompanyName = NewCompRegNameTextBox.Text;
                objCompany.Address = CompAddressTextBox.Text;
                objCompany.City = CompCityTextBox.Text;
                objCompany.State = StateDropDownList.SelectedValue.ToString();
                objCompany.Zipcode = CompZIPTextBox.Text;
                objCompany.PhoneNumber = CompPhoneTextBox.Text;

                // Set Manager Object
                objAddManager.FirstName = CompAddManFNameTextBox.Text;
                objAddManager.LastName = CompAddManLNameTextBox.Text;
                objAddManager.Title = CompAddManTitleDropList.SelectedValue.ToString();
                objAddManager.Department = CompAddManDeptmntTextBox.Text;
                objAddManager.Organization = CompAddManOrgTextBox.Text;
                objAddManager.Address = CompAddManAddressTextBox.Text;
                objAddManager.City = CompAddManCityTextBox.Text;
                objAddManager.State = CompAddManStateDropDown.SelectedValue.ToString();
                objAddManager.PhoneWork = CompAddManPhoneTextBox.Text;
                objAddManager.PhoneCell = CompAddManCELLTextBox.Text;
                objAddManager.Email = CompAddManEMailTextBox.Text;
                objCompany.Insert();
                objCompany.AddManager(objAddManager);

                Session["Manager"] = objAddManager;
                Response.Redirect("~/SponsorCompanyPositionsPage.aspx");
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









    }
}
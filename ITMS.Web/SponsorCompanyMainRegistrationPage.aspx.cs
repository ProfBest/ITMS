using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects.Sponsor;

namespace ITMS.Web
{
    public partial class SponsorCompanyMainRegistrationPage : System.Web.UI.Page
    {
        Company objCompany = new Company();


        protected void Page_Load(object sender, EventArgs e)
        {
            CompAddManagerPanel.Visible = false;
        }


        protected void CompSubmitButton_Click(object sender, EventArgs e)
        {
            try
            {              
                objCompany.Insert();
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
                Manager objManager = new Manager();

                objCompany.CompanyName = NewCompRegNameTextBox.Text;
                objCompany.Address = CompAddressTextBox.Text;
                objCompany.City = CompCityTextBox.Text;
                objCompany.State = StateDropDownList.SelectedItem.Text;
                objCompany.Zipcode = CompZIPTextBox.Text;
                objCompany.PhoneNumber = CompPhoneTextBox.Text;

                Panel2.Visible = false;
                CompButtonPanel.Visible = false;
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

       

    

    }
}
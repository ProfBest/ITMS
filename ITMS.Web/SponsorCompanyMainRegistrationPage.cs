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
            

        protected void CompSubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
          //Company objCompany = new Company();
               
          //    objCompany.CompanyName = NewCompRegNameTextBox.Text;
          //    objCompany.Address = CompAddressTextBox.Text;
          //    objCompany.City = CompCityTextBox.Text;
          //    objCompany.State = StateDropDownList.SelectedItem.Text;
          //    objCompany.Zipcode = CompZIPTextBox.Text;
          //    objCompany.PhoneNumber = CompPhoneTextBox.Text;
          //    objCompany.Insert();
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
           // Manager objManager = new Manager();
           // Panel3.Visible = false;
        }        
    

    }
}
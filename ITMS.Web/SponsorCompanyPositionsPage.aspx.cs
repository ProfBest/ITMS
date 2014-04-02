using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects;
using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Sponsor;

namespace ITMS.Web
{
    public partial class SponsorCompanyPositionsPage : System.Web.UI.Page
    {
        string ManagerId = "";
        protected void Page_Load(object sender, EventArgs e)
        {            
                if (!IsPostBack)
                {
                    if (Request.QueryString.AllKeys.Contains("Id"))
                    {
                        ManagerId = Request.QueryString.Get("Id");
                        ManagerID_Label.Text = ManagerId;
                    }
                }
         }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                PositionDropDownList.Text = "";
                PositionTitleTextBox.Text = "";
                PositionDescriptionTextBox.Text = "";
                PosSkillSetTextBox.Text = "";
                PosWorkHoursTextBox.Text = "";
                PosWorkDaysTextBox.Text = "";

            }
            catch
            {
                // Add catch block code
            }

        }        

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Position objPosition = new Position();
                //objPosition.PositionType = (PositionType)Enum.Parse(typeof(PositionType),); Need to convert to Enum
                objPosition.Title = PositionTitleTextBox.Text;
                objPosition.Duties = PositionDescriptionTextBox.Text;
                objPosition.Skills = PosSkillSetTextBox.Text;
                objPosition.WorkHours = Convert.ToDecimal(PosWorkHoursTextBox.Text);
                objPosition.WorkDays = Convert.ToInt32(PosWorkDaysTextBox);
                //PositionCollection.Insert(objPosition);
            }
            catch
            {

            }
        }

        protected void PositionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] = "this.style.cursor='hand'";
                e.Row.Attributes["onmouseout"] = "this.style.textDecoration='none';";

                e.Row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(this.PositionGridView, "Select$" + e.Row.RowIndex);
            }
        }

        protected void PositionGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            //PositionDropDownList.Text = PositionGridView.SelectedRow.Cells[2].Text;
            //PositionDropDownList.Text = PositionGridView.SelectedRow.Cells[1].Text;
            PositionTitleTextBox.Text = PositionGridView.SelectedRow.Cells[1].Text;
            
        }      

       
        
        
    }
}
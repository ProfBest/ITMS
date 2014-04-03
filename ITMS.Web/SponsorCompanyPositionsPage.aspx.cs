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
                    if (Request.QueryString.AllKeys.Contains("ManagerId"))
                    {
                        //Manager objManager = (Manager)Session.Item("Manager");
                        ManagerId = Request.QueryString.Get("ManagerId");
                        ManagerID_Label.Text = ManagerId;
                    }
                }
         }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                AddNew_PositionButton.Enabled = true;
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

        protected void AddNew_PositionButton_Click(object sender, EventArgs e)
        {
            try
            {
                Position objPosition = new Position();
                objPosition.PositionType = (PositionType)Enum.Parse(typeof(PositionType), PositionDropDownList.SelectedItem.Value.ToString());
                objPosition.Title = PositionTitleTextBox.Text;
                objPosition.Duties = PositionDescriptionTextBox.Text;
                objPosition.Skills = PosSkillSetTextBox.Text;
                objPosition.WorkHours = Convert.ToDecimal(PosWorkHoursTextBox.Text);
                objPosition.WorkDays = Convert.ToInt32(PosWorkDaysTextBox);
                //PositionCollection.Insert(objPosition);
                PositionGridView.DataBind();
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
                e.Row.Attributes["onmouseout"] = "this.style.textDecoration='none'";
                e.Row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(this.PositionGridView, "Select$" + e.Row.RowIndex);
                
            }
        }

        protected void PositionGridView_SelectedIndexChanged(object sender, EventArgs e)
        {            
            // Add the values of the row to the textboxes for processing by the manager
            AddNew_PositionButton.Enabled = false;
            ManagerID_Label.Text = PositionGridView.SelectedRow.Cells[1].Text;
            PositionDropDownList.Text = PositionGridView.SelectedRow.Cells[2].Text; 
            PositionTitleTextBox.Text = PositionGridView.SelectedRow.Cells[3].Text; 
            PositionDescriptionTextBox.Text = PositionGridView.SelectedRow.Cells[4].Text; 
            PosSkillSetTextBox.Text = PositionGridView.SelectedRow.Cells[5].Text; 
            PosWorkHoursTextBox.Text = PositionGridView.SelectedRow.Cells[6].Text.ToString(); 
            PosWorkDaysTextBox.Text = PositionGridView.SelectedRow.Cells[7].Text.ToString(); 
        }      

       
        
        
    }
}
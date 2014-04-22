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
        Manager objManager = new Manager();

        protected void Page_Load(object sender, EventArgs e)
        {

          

            if (!IsPostBack)
                /*Save position Id to a hidden control, this is used so that we can tell if we are going to update an existing
                position or create a new one. zero assumes we are going to create a new one
              */
                hdnPositionId.Value = "0";
                if (Session["Manager"] != null)
                {

                    objManager = (Manager)Session["Manager"];
                    //Load all positions for a manager on page load
                    LoadPositionsToGrid(objManager.ManagerId);
                }
                else
                {
                    //TODO: Need to add validation logic if manager session is null
                    //A position cannot be added without a manager

                    //This code is for testing purposes only
                    Session["Manager"] = Manager.Load(5);
                    objManager = (Manager)Session["Manager"];
                    LoadPositionsToGrid(objManager.ManagerId);
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
                hdnPositionId.Value = "0";

            }
            catch
            {
                // Add catch block code
            }

        }

        private void LoadPositionsToGrid(int ManagerId)
        {
            //Loads all positions to the datagrid whenever called
            PositionGridView.DataSource = PositionCollection.Load(ManagerId);
            PositionGridView.DataBind();
        }

        protected void AddNew_PositionButton_Click(object sender, EventArgs e)
        {
            try
            {
                //Need this to get the manager out of the session so that it may save with the current manager's information
                objManager = (Manager)Session["Manager"];

                Position objPosition = new Position();
                objPosition.PositionType = (PositionType)Enum.Parse(typeof(PositionType), PositionDropDownList.SelectedItem.Value.ToString());
                objPosition.Title = PositionTitleTextBox.Text;
                objPosition.Duties = PositionDescriptionTextBox.Text;
                objPosition.Skills = PosSkillSetTextBox.Text;
                objPosition.WorkHours = Convert.ToDecimal(PosWorkHoursTextBox.Text);
                objPosition.WorkDays = Convert.ToDecimal(PosWorkDaysTextBox.Text);

                //Check the position Id, if its zero we are adding a position
                int positionId = Convert.ToInt32(hdnPositionId.Value);
                objPosition.PositionId = positionId;

                objManager.AddPosition(objPosition);

                LoadPositionsToGrid(objManager.ManagerId);

            }
            catch (Exception ex)
            {
                throw ex;
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
            //AddNew_PositionButton.Enabled = false;
            ManagerID_Label.Text = PositionGridView.SelectedRow.Cells[1].Text;
            PositionDropDownList.Text = PositionGridView.SelectedRow.Cells[2].Text;
            PositionTitleTextBox.Text = PositionGridView.SelectedRow.Cells[3].Text;
            PositionDescriptionTextBox.Text = PositionGridView.SelectedRow.Cells[4].Text;
            PosSkillSetTextBox.Text = PositionGridView.SelectedRow.Cells[5].Text;
            PosWorkHoursTextBox.Text = PositionGridView.SelectedRow.Cells[6].Text.ToString();
            PosWorkDaysTextBox.Text = PositionGridView.SelectedRow.Cells[7].Text.ToString();

            /*Save position Id to a hidden control, this is used so that we can tell if we are going to update an existing
                position or create a new one   
              */
            hdnPositionId.Value = PositionGridView.SelectedRow.Cells[1].Text;
            Position_ID_Label.Text = PositionGridView.SelectedRow.Cells[1].Text;
        }

       




    }
}
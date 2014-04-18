using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Scholar;
using ITMS.BusinessObjects.Sponsor;
using System.IO;

namespace RegSkillUploadPage
{
    public partial class _Default : System.Web.UI.Page
    {
        string studentId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString.AllKeys.Contains("Id"))
                {
                    studentId = Request.QueryString.Get("Id");
                }
            }
        }


        protected void Check(Object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {

                //documents upload
                var student = Student.Load(studentId);
                var resumePath = "";
                var transcriptPath = "";

                if (ResumeUpload.HasFile == true)
                {
                    resumePath = Server.MapPath("~/ResumeUploads/" + ResumeUpload.FileName.ToString());//ResumeUploads is a folder on the server   
                    ResumeUpload.SaveAs(resumePath);
                }
                if (TranscriptUpload.HasFile == true)
                {
                    transcriptPath = Server.MapPath("~/TranscriptUploads/" + TranscriptUpload.FileName.ToString());//TranscriptUploads is a folder on the server
                    ResumeUpload.SaveAs(transcriptPath);
                }
                //setting properties for Fileupload class 
                student.InternshipRequirement.FileUpload.FileId = Convert.ToInt16(studentId);//not sure
                //student.InternshipRequirement.FileUpload.ResumeURL = resumePath;
                //student.InternshipRequirement.FileUpload.TranscriptURL = transcriptPath;


                //resume form content 
                student.InternshipRequirement.FileUpload.Resume = txtResumeFormContent.Text;
                student.InternshipRequirement.FileUpload.Transcript = txtTranscriptFormContent.Text;
                //student.InternshipRequirement.FileUpload.TechSkill = txtAreaTechSkill.Text;
                //student.InternshipRequirement.FileUpload.WorkExp = txtAreaWorkExpFormContent.Text;

                //updating and saving database
            }
            catch (ApplicationException e3)
            {
                lblTestingErrors.Text = e3.Message;
            }
            catch (NotSupportedException e2)
            {
                lblTestingErrors.Text = e2.Message;
            }
            catch (Exception e1)
            {
                lblTestingErrors.Text = e1.Message;
            }
        }



        // my test button -- Dioscr Rodriguez
        protected void myb_Click(object sender, EventArgs e)
        {
            try
            {
                var student = Student.Load("89498195");

                var i = 0;
                //loop through each check box and set properties
                lblTestingErrors.Text = "<p>Selected Item(s):</p>";
                for (i = 0; i < CheckBoxList1.Items.Count; i++)
                {
                    if (CheckBoxList1.Items[i].Selected == true)
                    {
                        switch (CheckBoxList1.Items[i].Value)
                        {
                            case "1":

                                lblTestingErrors.Text += CheckBoxList1.Items[i].Value + "<br>";

                                student.InternshipRequirement.FileUpload.CiscoRouter = CheckBoxList1.Items[i].Value;

                                break;
                            case "2":
                                lblTestingErrors.Text += CheckBoxList1.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.WAN = CheckBoxList1.Items[i].Value;
                                break;
                            case "3":
                                lblTestingErrors.Text += CheckBoxList1.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.TCPIP = CheckBoxList1.Items[i].Value;
                                break;
                        }
                    }
                }
                for (i = 0; i < CheckBoxList2.Items.Count; i++)
                {
                    if (CheckBoxList2.Items[i].Selected == true)
                    {
                        switch (CheckBoxList2.Items[i].Value)
                        {
                            case "4":
                                lblTestingErrors.Text += CheckBoxList2.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.Data = CheckBoxList2.Items[i].Value;
                                break;
                            case "5":
                                lblTestingErrors.Text += CheckBoxList2.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.Network = CheckBoxList2.Items[i].Value;
                                break;
                        }
                    }
                }
                for (i = 0; i < CheckBoxList3.Items.Count; i++)
                {
                    if (CheckBoxList3.Items[i].Selected == true)
                    {
                        switch (CheckBoxList3.Items[i].Value)
                        {
                            case "6":

                                lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.Java = CheckBoxList3.Items[i].Value;
                                break;
                            case "7":
                                lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.Csharp = CheckBoxList3.Items[i].Value;
                                break;
                            case "8":
                                lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.Vilnet = CheckBoxList3.Items[i].Value;
                                break;
                            case "9":
                                lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.CplusPlus = CheckBoxList3.Items[i].Value;
                                break;
                            case "10":
                                lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.PHP = CheckBoxList3.Items[i].Value;
                                break;
                            case "11":
                                lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.ASPNET = CheckBoxList3.Items[i].Value;
                                break;
                        }
                    }
                }
                for (i = 0; i < CheckBoxList4.Items.Count; i++)
                {
                    if (CheckBoxList4.Items[i].Selected == true)
                    {
                        switch (CheckBoxList4.Items[i].Value)
                        {
                            case "12":
                                lblTestingErrors.Text += CheckBoxList4.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.SQL = CheckBoxList4.Items[i].Value;
                                break;
                            case "13":
                                lblTestingErrors.Text += CheckBoxList4.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.Oracle = CheckBoxList4.Items[i].Value;
                                break;
                            case "14":
                                lblTestingErrors.Text += CheckBoxList4.Items[i].Value + "<br>";
                                student.InternshipRequirement.FileUpload.PMySQL = CheckBoxList4.Items[i].Value;
                                break;
                        }
                    }
                }

                student.InternshipRequirement.FileUpload.proInsert(student.StudentID);



            }
            catch (Exception ex22)
            {
                lblTestingErrors.Text = ex22.Message;
            }

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

    }
}

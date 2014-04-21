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
                    Session["studentId"] = studentId;
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
               
                //updating and saving database

                if(ResumeUpload.HasFile)
                {
                    var resume = new StudentDocument()
                    {
                        FileName = ResumeUpload.FileName
                        ,
                        FileExt = "." + ResumeUpload.FileName.Split('.')[1]
                        ,
                        StudentID = (string)Session["studentId"]
                        ,
                        docType = ITMS.BusinessObjects.DocumentType.Resume
                        ,
                        File = ResumeUpload.FileBytes
                    };

                    resume.Save();
                }


                //--skills section--
                var student1 = Student.Load("89498195");

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
                                student.InternshipRequirement.studentContent.CiscoRouter = CheckBoxList1.Items[i].Value;
                                break;
                            case "2":
                                student.InternshipRequirement.studentContent.WAN = CheckBoxList1.Items[i].Value;
                                break;
                            case "3":
                                student.InternshipRequirement.studentContent.TCPIP = CheckBoxList1.Items[i].Value;
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
                                student.InternshipRequirement.studentContent.Data = CheckBoxList2.Items[i].Value;
                                break;
                            case "5":
                                student.InternshipRequirement.studentContent.Network = CheckBoxList2.Items[i].Value;
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


                                student.InternshipRequirement.studentContent.Java = CheckBoxList3.Items[i].Value;
                                break;
                            case "7":

                                student.InternshipRequirement.studentContent.Csharp = CheckBoxList3.Items[i].Value;
                                break;
                            case "8":

                                student.InternshipRequirement.studentContent.Vilnet = CheckBoxList3.Items[i].Value;
                                break;
                            case "9":

                                student.InternshipRequirement.studentContent.CplusPlus = CheckBoxList3.Items[i].Value;
                                break;
                            case "10":

                                student.InternshipRequirement.studentContent.PHP = CheckBoxList3.Items[i].Value;
                                break;
                            case "11":

                                student.InternshipRequirement.studentContent.ASPNET = CheckBoxList3.Items[i].Value;
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

                                student.InternshipRequirement.studentContent.SQL = CheckBoxList4.Items[i].Value;
                                break;
                            case "13":

                                student.InternshipRequirement.studentContent.Oracle = CheckBoxList4.Items[i].Value;
                                break;
                            case "14":

                                student.InternshipRequirement.studentContent.PMySQL = CheckBoxList4.Items[i].Value;
                                break;
                        }
                    }
                }

                student.InternshipRequirement.studentContent.proInsert(student.StudentID);

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
                var student1 = Student.Load("89498195");
               

                //if (txtResumeFormContent.Text != "")
                //{
                //    student1.InternshipRequirement.studentContent.ResumeContent = txtResumeFormContent.Text;
                //    student1.InternshipRequirement.studentContent.proResumeContentInsert(student1.StudentID);
                //    //student1.InternshipRequirement.studentContent.LoadResumeContent(student1.StudentID);

                //}
                if (txtTranscriptFormContent.Text != "")
                {

                    student1.InternshipRequirement.studentContent.TranscriptContent = txtTranscriptFormContent.Text;
                    student1.InternshipRequirement.studentContent.proTranscriptContentInsert(student1.StudentID);
                    //student1.InternshipRequirement.studentContent.LoadResumeContent(student1.StudentID);
                }
                //if (txtAreaTechSkill.Text != "")
                //{
                //    student.InternshipRequirement.studentContent = txtAreaTechSkill.Text;
                //}
                //the below line will insert all ckecked skills 
               

                //The LoadSkillreport Method return a FileUpload Obj Pointer. If the student has any skills saved in the 
                //data base this is one way of retreiving those values. The FileUpload Obj will be return with those 
                //skill properties populated. 
                //var ObjFileUpload = student1.InternshipRequirement.studentContent.LoadSkillReport(student1.StudentID);



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

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
                var StudentID ="89498195";
                var student = Student.Load(StudentID);
               

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
                data_insert(student.StudentID);
               var ObjFileUpload = student.InternshipRequirement.studentContent.LoadSkillReport(student.StudentID);

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


        protected void data_insert(string Requirement_ID)
        {
            var StudentID = Requirement_ID;
            var  student = Student.Load(StudentID);

            if (txtResumeFormContent.Text != "")
            {
                student.InternshipRequirement.studentContent.ResumeContent = txtResumeFormContent.Text;
                student.InternshipRequirement.studentContent.proResumeContentInsert(student.StudentID);
                student.InternshipRequirement.studentContent.LoadResumeContent(student.StudentID);
            }

            if (txtTranscriptFormContent.Text != "")
            {
                student.InternshipRequirement.studentContent.TranscriptContent = txtTranscriptFormContent.Text;
                student.InternshipRequirement.studentContent.proTranscriptContentInsert(student.StudentID);
                student.InternshipRequirement.studentContent.LoadTranscriptContent(student.StudentID);
            }
            if (txtAreaTechSkill.Text != "")
            {
                student.InternshipRequirement.studentContent.OtherSkillContent = txtAreaTechSkill.Text;
                student.InternshipRequirement.studentContent.proOtherSkillContentInsert(student.StudentID);
                var file = student.InternshipRequirement.studentContent.LoadOtherSkillContent(student.StudentID);
            }
        }
    
        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void txtTranscriptFormContent_TextChanged(object sender, EventArgs e)
        {

        }


    }
}

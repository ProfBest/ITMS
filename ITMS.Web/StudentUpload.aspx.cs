using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Scholar;
using ITMS.BusinessObjects.Sponsor;
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
                student.InternshipRequirement.FileUpload.ResumeURL = resumePath;
                student.InternshipRequirement.FileUpload.TranscriptURL = transcriptPath;


                //resume form content 
                student.InternshipRequirement.FileUpload.Resume = txtResumeFormContent.Text;
                student.InternshipRequirement.FileUpload.Transcript = txtTranscriptFormContent.Text;
                student.InternshipRequirement.FileUpload.TechSkill = txtAreaTechSkill.Text;
                student.InternshipRequirement.FileUpload.WorkExp = txtAreaWorkExpFormContent.Text;


                //Temporary skill placeholder section
                
                //Networking CHKB
                    var tempCiscoRouter = "";
                    var tempWAN = "";
                    var tempTCPIP = "";

                //Security
                    var tempData = "";
                    var tempNetwork = "";
                
                //programming
                    var tempJava = "";
                    var tempCsharp = "";
                    var tempVilnet = "";
                    var tempCplusPlus = "";
                    var tempPHP = "";
                    var tempASPNET = "";
                
                //Database
                    var tempSQL = "";
                    var rempOracle = "";
                    var tempMySQL = "";

               
                    

                
                //Code incomplete... missing the saving to the db code


            }
            catch (ApplicationException e3) {
                lblTestingErrors.Text = e3.Message; 
            }
            catch (NotSupportedException e2) {
                lblTestingErrors.Text = e2.Message;
            }
            catch (Exception e1)
            {
                lblTestingErrors.Text = e1.Message;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

       
    }
}

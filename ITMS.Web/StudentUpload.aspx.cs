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
                    //int studentId = 0;
                    studentId = Request.QueryString.Get("Id");
                }
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
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
            student.InternshipRequirement.FileUpload.Resume = resumePath;
            student.InternshipRequirement.FileUpload.Transcript = transcriptPath;

            //Code incomplete... missing the saving to the db code
             
        }
    }
}

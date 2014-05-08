using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Scholar;
using ITMS.BusinessObjects.Sponsor;
using System.Text; // for StringBuilder htmlencode

namespace RegSkillUploadPage
{
    public partial class _Default : System.Web.UI.Page
    {
        Student student;

        protected void Page_Load(object sender, EventArgs e)
        {
            student =  (Student)Session["student"];
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {

//*************************************************************************************
// checking user input of Resume file or text content
                var validResumeSwitch = "";
                lblResumeFileName.Text = "";

                if ((ResumeUpload.HasFile) && (txtResumeFormContent.Text.Trim().Length == 0) )
                {    // Only resume file was entered
                    string fileExt =
                       System.IO.Path.GetExtension(ResumeUpload.FileName);
                    //doc|.docx|.DOC|.DOCX|.txt|.TXT|.pdf|.PDF)" 
                    if (fileExt == ".doc" || fileExt == ".docx" ||
                        fileExt == ".DOC" || fileExt == ".DOCX" ||
                        fileExt == ".txt" || fileExt == ".TXT" ||
                        fileExt == ".pdf" || fileExt == ".PDF")
                    {

                          //swict for uploading resume file
                          

                          // set a switch for upload
                          validResumeSwitch = "1";
                         //  lblResumeFileName.Text = "Uploaded Resume File name: " +
                         //       ResumeUpload.PostedFile.FileName + "<br>" +
                         //       ResumeUpload.PostedFile.ContentLength + " kb<br>" +
                         //       "Content type: " +
                         //       ResumeUpload.PostedFile.ContentType;
                    }
                    else
                    {
                        lblResumeFileName.Text = "Please use one of the correct formats allowed: .docx, .doc, .txt, or .pdf";

                    }
                }
                else
                    if ((ResumeUpload.HasFile == false) && (txtResumeFormContent.Text.Trim().Length > 0) && (!string.IsNullOrEmpty(txtResumeFormContent.Text)))
                    {  // only resume form content was entered 
                        //resume form content 
                      //  student.InternshipRequirement.FileUpload.Resume = txtResumeFormContent.Text;
                     
                        // set a switch for Resume upload 
                         validResumeSwitch = "1";
                      //  lblResumeFileName.Text = "form content text uploaded" +
                      //          txtResumeFormContent.Text.Length + " kb<br>";
                        
                    }
                    else
                        if ((ResumeUpload.HasFile == false) && (txtResumeFormContent.Text.Trim().Length == 0)  )
                        {
                            lblResumeFileName.Text = "Please attach resume in .docx, .doc, .txt, or .pdf format.";

                        }

                        else
                            if ((ResumeUpload.HasFile == true) && (txtResumeFormContent.Text.Trim().Length > 0) )
                            {
                               // lblResumeFileName.Text = "Please use one, the resume file, or the textarea, but not both.";
                                string fileExt =
                                  System.IO.Path.GetExtension(ResumeUpload.FileName);
                                //doc|.docx|.DOC|.DOCX|.txt|.TXT|.pdf|.PDF)" 
                                if (fileExt == ".doc" || fileExt == ".docx" ||
                                    fileExt == ".DOC" || fileExt == ".DOCX" ||
                                    fileExt == ".txt" || fileExt == ".TXT" ||
                                    fileExt == ".pdf" || fileExt == ".PDF")
                                {

                                    //swict for uploading resume file


                                    // set a switch for upload
                                    validResumeSwitch = "1";
                                    //  lblResumeFileName.Text = "Uploaded Resume File name: " +
                                    //       ResumeUpload.PostedFile.FileName + "<br>" +
                                    //       ResumeUpload.PostedFile.ContentLength + " kb<br>" +
                                    //       "Content type: " +
                                    //       ResumeUpload.PostedFile.ContentType;
                                }
                                else
                                {
                                    lblResumeFileName.Text = "Please use one of the correct formats allowed: .docx, .doc, .txt, or .pdf";

                                }


                                                                
                            }
                            else 
                            { 
                                // empty 
                                lblResumeFileName.Text = "";
                            };  // end of else

            
//*************************************************************************************
// checking user input of Transcript file or text content
                var validTranscriptSwitch = "";
                lblTranscriptFileName.Text = "";

                if ((TranscriptUpload.HasFile) && (txtTranscriptFormContent.Text.Trim().Length == 0))
                {    // Only transcript file was entered 
                    string fileExt =
                       System.IO.Path.GetExtension(TranscriptUpload.FileName);
                    //doc|.docx|.DOC|.DOCX|.txt|.TXT|.pdf|.PDF)" 
                    if (fileExt == ".doc" || fileExt == ".docx" ||
                        fileExt == ".DOC" || fileExt == ".DOCX" ||
                        fileExt == ".txt" || fileExt == ".TXT" ||
                        fileExt == ".pdf" || fileExt == ".PDF")
                    {

                        // switch for uploading Transcript file
                       
                        // set a switch for Transcript upload
                        validTranscriptSwitch = "1";
                        // lblTranscriptFileName.Text = "Uploaded Transcript File name: " +
                       // TranscriptUpload.PostedFile.FileName + "<br>" +
                       // TranscriptUpload.PostedFile.ContentLength + " kb<br>" +
                       // "Content type: " +
                       // TranscriptUpload.PostedFile.ContentType;
 
                    }
                    else
                    {
                        lblTranscriptFileName.Text = "Please use one of the correct formats allowed: .docx, .doc, .txt, or .pdf";
                    }
                }
                else
                    if ((TranscriptUpload.HasFile == false) && (txtTranscriptFormContent.Text.Trim().Length > 0) && (!string.IsNullOrEmpty(txtTranscriptFormContent.Text)))
                    {  // only Transcript form content was entered 
                        //Transcript form content 
                        
                       // student.InternshipRequirement.FileUpload.Transcript = txtTranscriptFormContent.Text;
                        // set a switch for upload 
                        validTranscriptSwitch = "1";
                       // lblTranscriptFileName.Text = "trnascript form content text uploaded" +
                       //         txtTranscriptFormContent.Text.Length + " kb<br>";

                    }
                    else
                        if ((TranscriptUpload.HasFile == false) && (txtTranscriptFormContent.Text.Trim().Length == 0))
                        {
                            lblTranscriptFileName.Text = "Please attach transcript in .docx, .doc, .txt, or .pdf format.";
                        }

                        else
                            if ((TranscriptUpload.HasFile == true) && (txtTranscriptFormContent.Text.Trim().Length > 0) && (!string.IsNullOrEmpty(txtTranscriptFormContent.Text)))
                            {
                                //lblTranscriptFileName.Text = "Please use one, the transcript file, or the textarea, but not both.";

                                string fileExt =
                      System.IO.Path.GetExtension(TranscriptUpload.FileName);
                                //doc|.docx|.DOC|.DOCX|.txt|.TXT|.pdf|.PDF)" 
                                if (fileExt == ".doc" || fileExt == ".docx" ||
                                    fileExt == ".DOC" || fileExt == ".DOCX" ||
                                    fileExt == ".txt" || fileExt == ".TXT" ||
                                    fileExt == ".pdf" || fileExt == ".PDF")
                                {

                                    // switch for uploading Transcript file

                                    // set a switch for Transcript upload
                                    validTranscriptSwitch = "1";
                                    // lblTranscriptFileName.Text = "Uploaded Transcript File name: " +
                                    // TranscriptUpload.PostedFile.FileName + "<br>" +
                                    // TranscriptUpload.PostedFile.ContentLength + " kb<br>" +
                                    // "Content type: " +
                                    // TranscriptUpload.PostedFile.ContentType;

                                }
                                else
                                {
                                    lblTranscriptFileName.Text = "Please use one of the correct formats allowed: .docx, .doc, .txt, or .pdf";
                                }
                                
                            }
                            else
                            {
                                // empty 
                                lblTranscriptFileName.Text = "";
                            };  // end of else

              
            
//*************************************************************************************
//*************************************************************************************
               

                // checking validation switches to see if both resume and transcript  are input to load
                if ((validResumeSwitch == "1") && (validTranscriptSwitch == "1"))
                {
                    if (ResumeUpload.HasFile == true)
                    {
                       
                        lblResumeFileName.Text = "Uploaded Resume File name: " +
                                 ResumeUpload.PostedFile.FileName + " " +
                                 ResumeUpload.PostedFile.ContentLength + " kb ";
                        //           + "Content type: " +
                        //            ResumeUpload.PostedFile.ContentType;
                    }
                    else
                    if (txtResumeFormContent.Text.Trim().Length > 0)
                    {
                        lblResumeFileName.Text = "Resume form content text uploaded " +
                        txtResumeFormContent.Text.Length + " kb";
                        // Encode the string input
                        StringBuilder sb = new StringBuilder(HttpUtility.HtmlEncode(txtResumeFormContent.Text));

                        sb.Replace("&", "&amp;"); // ampersand
                        sb.Replace("<", "&lt;"); // lessthan
                        sb.Replace(">", "&gt;"); // greaterthan
                        sb.Replace("'", "&#39;");// apostrophe
                        sb.Replace("\"", "&#34;"); // double apostrophe
                        txtResumeFormContent.Text = sb.ToString();
                    };

                    if (TranscriptUpload.HasFile == true)
                    {
                        lblTranscriptFileName.Text = "Uploaded Transcript File name: " +
                             TranscriptUpload.PostedFile.FileName + " " +
                             TranscriptUpload.PostedFile.ContentLength + " kb ";
                        //       + "Content type: " +
                        //       TranscriptUpload.PostedFile.ContentType;
                    }
                    else
                    if (txtTranscriptFormContent.Text.Trim().Length > 0)
                    {
                        lblTranscriptFileName.Text = "Transcript form content text uploaded " +
                        txtTranscriptFormContent.Text.Length + " kb";
                        // Encode the string input
                        StringBuilder sb = new StringBuilder(HttpUtility.HtmlEncode(txtTranscriptFormContent.Text));

                        sb.Replace("&", "&amp;"); // ampersand
                        sb.Replace("<", "&lt;"); // lessthan
                        sb.Replace(">", "&gt;"); // greaterthan
                        sb.Replace("'", "&#39;");// apostrophe
                        sb.Replace("\"", "&#34;"); // double apostrophe
                        txtTranscriptFormContent.Text = sb.ToString();
                    }; // end of if stmt
              
                }


            // checking validation switches to see if both resume and transcript  are input to load
          if ((validResumeSwitch == "1") && (validTranscriptSwitch == "1"))
              {
                if (ResumeUpload.HasFile)
                {
                    var resume = new StudentDocument()
                    {
                        FileName = ResumeUpload.FileName,
                        FileExt = "." + ResumeUpload.FileName.Split('.')[1],
                        StudentID = student.StudentID,
                        docType = ITMS.BusinessObjects.DocumentType.Resume,
                        File = ResumeUpload.FileBytes

                    };

                    resume.Save();
                
                } // end of ((validResumeSwitch == "1") && (validTranscriptSwitch == "1"))

      // checking validation switches to see if both resume and transcript  are input to load
          if ((validResumeSwitch == "1") && (validTranscriptSwitch == "1"))
              {
                  if (TranscriptUpload.HasFile)
                  {
                      var transcript = new StudentDocument()
                      {
                          FileName = TranscriptUpload.FileName,
                          FileExt = "." + TranscriptUpload.FileName.Split('.')[1],
                          StudentID = student.StudentID,
                          docType = ITMS.BusinessObjects.DocumentType.Transcript,
                          File = TranscriptUpload.FileBytes

                      };

                      transcript.Save();
                  }
                }; // end of ((validResumeSwitch == "1") && (validTranscriptSwitch == "1"))


                }  // end of try

                //-- Dioscar start--

                //--skills section--

                //var StudentID = "9874"; //temporary ID
                //var student = Student.Load(StudentID);


                var i = 0;
                //loop through each check box and set properties
                lblTestingErrors.Text = "<p>Selected Item(s):</p>";
                for (i = 0; i < chkNetworking.Items.Count; i++)
                {
                    if (chkNetworking.Items[i].Selected == true)
                    {
                        switch (chkNetworking.Items[i].Value)
                        {
                            case "1":
                                student.InternshipRequirement.studentContent.CiscoRouter = chkNetworking.Items[i].Value;
                                break;
                            case "2":
                                student.InternshipRequirement.studentContent.WAN = chkNetworking.Items[i].Value;
                                break;
                            case "3":
                                student.InternshipRequirement.studentContent.TCPIP = chkNetworking.Items[i].Value;
                                break;
                        }
                    }
                }
                for (i = 0; i < chkSecurity.Items.Count; i++)
                {
                    if (chkSecurity.Items[i].Selected == true)
                    {
                        switch (chkSecurity.Items[i].Value)
                        {
                            case "4":
                                student.InternshipRequirement.studentContent.Data = chkSecurity.Items[i].Value;
                                break;
                            case "5":
                                student.InternshipRequirement.studentContent.Network = chkSecurity.Items[i].Value;
                                break;
                        }
                    }
                }
                for (i = 0; i < chkProgramming.Items.Count; i++)
                {
                    if (chkProgramming.Items[i].Selected == true)
                    {
                        switch (chkProgramming.Items[i].Value)
                        {
                            case "6":
                                student.InternshipRequirement.studentContent.Java = chkProgramming.Items[i].Value;
                                break;
                            case "7":
                                student.InternshipRequirement.studentContent.Csharp = chkProgramming.Items[i].Value;
                                break;
                            case "8":
                                student.InternshipRequirement.studentContent.VBNET = chkProgramming.Items[i].Value;
                                break;
                            case "9":
                                student.InternshipRequirement.studentContent.CplusPlus = chkProgramming.Items[i].Value;
                                break;
                            case "10":
                                student.InternshipRequirement.studentContent.PHP = chkProgramming.Items[i].Value;
                                break;
                            case "11":
                                student.InternshipRequirement.studentContent.ASPNET = chkProgramming.Items[i].Value;
                                break;
                        }
                    }
                }
                for (i = 0; i < chkDatabase.Items.Count; i++)
                {
                    if (chkDatabase.Items[i].Selected == true)
                    {
                        switch (chkDatabase.Items[i].Value)
                        {
                            case "12":
                                student.InternshipRequirement.studentContent.SQL = chkDatabase.Items[i].Value;
                                break;
                            case "13":
                                student.InternshipRequirement.studentContent.Oracle = chkDatabase.Items[i].Value;
                                break;
                            case "14":
                                student.InternshipRequirement.studentContent.PMySQL = chkDatabase.Items[i].Value;
                                break;
                        }
                    }
                }
                student.InternshipRequirement.studentContent.proInsert(student.StudentID);
                data_insert(student.StudentID);
                var ObjFileUpload = student.InternshipRequirement.studentContent.LoadItAll(student.StudentID);

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
            var student = Student.Load(StudentID);

            if (txtResumeFormContent.Text != "")
            {
                student.InternshipRequirement.studentContent.ResumeContent = txtResumeFormContent.Text;
                student.InternshipRequirement.studentContent.proResumeContentInsert(student.StudentID);
                student.InternshipRequirement.studentContent.MapDataResumeContent(student.StudentID);
            }

            if (txtTranscriptFormContent.Text != "")
            {
                student.InternshipRequirement.studentContent.TranscriptContent = txtTranscriptFormContent.Text;
                student.InternshipRequirement.studentContent.proTranscriptContentInsert(student.StudentID);
                student.InternshipRequirement.studentContent.MapDataTranscriptContent(student.StudentID);
            }
            if (txtAreaTechSkill.Text != "")
            {
                student.InternshipRequirement.studentContent.OtherSkillContent = txtAreaTechSkill.Text;
                student.InternshipRequirement.studentContent.proOtherSkillContentInsert(student.StudentID);
                var file = student.InternshipRequirement.studentContent.MapDataOtherSkillsContent(student.StudentID);
            }
        }

        //--Dioscar end --

    }
}

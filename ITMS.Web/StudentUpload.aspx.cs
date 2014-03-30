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

                // document upload code but not sure how to connect table to Studentupload



                // convert images and documents into byte objects
                    System.IO.FileStream filestream = new System.IO.FileStream(Filename, Filemode.OpenorCreate, FIleAccess.Read);
                    long len;
                    len = filestream.Length;
                    Byte[] fileAsByte = new Byte[len];
                    filestream.Read(fileAsByte, 0, fileAsByte.length);
                    System.IO.MemoryStream memoryStream = new System.IO.MemoryStream(fileAsByte);
                    return memoryStream.ToArray();

                // convert byte objects into words and images

                    filestream fs = new filestream(di + "\\" + Filename, FileMode.Create);
                    fs.Write(Content, 0, System.Convert.ToInt32(Content.Length));
                    fs.Seek(0, SeekOrigin.Begin);
                    fs.Close();

                // store files into Database

                SqlCommand insert = new SQLCommand("insert into "), sqlconnection);
                SqlParameter imageParameter = insert.Parameters.Add("@FileStream", sqlDbtype.Binary);
                SqlParameter filenameparameter = insert.Parameters.Add("@filetype", sqlDbType.Varchar);



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

     
        protected void myb_Click(object sender, EventArgs e)
        {
            var i = 0;

            lblTestingErrors.Text = "<p>Selected Item(s):</p>";
            for (i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    switch (CheckBoxList1.Items[i].Value)
                    {
                        case "Cisco Router":
                            lblTestingErrors.Text += CheckBoxList1.Items[i].Value + "<br>";
                            break;
                        case "WAN":
                            lblTestingErrors.Text += CheckBoxList1.Items[i].Value + "<br>";
                            break;
                        case "TCP/IP":
                            lblTestingErrors.Text += CheckBoxList1.Items[i].Value + "<br>";
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
                        case "Data":
                            lblTestingErrors.Text += CheckBoxList2.Items[i].Value + "<br>";
                            break;
                        case "Network":
                            lblTestingErrors.Text += CheckBoxList2.Items[i].Value + "<br>";
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
                        case "Java":
                            lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                            break;
                        case "C#":
                            lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                            break;
                        case "Vilnet":
                            lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                            break;
                        case "C++":
                            lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                            break;
                        case "PHP":
                            lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
                            break;
                        case "ASP.NET":
                            lblTestingErrors.Text += CheckBoxList3.Items[i].Value + "<br>";
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
                        case "SQL":
                            lblTestingErrors.Text += CheckBoxList4.Items[i].Value + "<br>";
                            break;
                        case "Oracle":
                            lblTestingErrors.Text += CheckBoxList4.Items[i].Value + "<br>";
                            break;
                        case "MySQL":
                            lblTestingErrors.Text += CheckBoxList4.Items[i].Value + "<br>";
                            break;
                    }
                }
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

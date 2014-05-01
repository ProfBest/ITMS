using System;
using System.Data;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar
{

    public class StudentContent : BaseObject
    {

        #region Private Fields

        private int _fileId;
        private string _resume;
        private string _transcript;
        private string _StudentID;

        //custum private fields that I think might be needed
        private string _resumeURL;
        private string _transcriptURL;
        private string _TechSkill;
        private string _WorkExp;

        //skills privates
        //Networking CHKB
        private string _CiscoRouter;
        private string _WAN;
        private string _TCPIP;

        //Security
        private string _Data;
        private string _Network;

        //programming
        private string _Java;
        private string _Csharp;
        private string _Vilnet;
        private string _CplusPlus;
        private string _PHP;
        private string _ASPNET;

        //Database
        private string _SQL;
        private string _Oracle;
        private string _PMySQL;

        //ResumeContent
        private string _ResumeContent;

        //TranscriptContent
        private string _TranscriptContent;

        //OtherkillContent
        private string _OtherSkillContent;

        //StudentContent
        private StudentContent _StudentContent;


        #endregion

        #region Properties

        public string StudentID
        {
            get { return _StudentID; }
            set { _StudentID = value; }

        }

        //Networking CHKB
        public string CiscoRouter
        {
            get { return _CiscoRouter; }
            set { _CiscoRouter = value; }
        }

        public string WAN
        {
            get { return _WAN; }
            set { _WAN = value; }
        }



        public string TCPIP
        {
            get { return _TCPIP; }
            set { _TCPIP = value; }
        }

        //Security

        public string Data
        {
            get { return _Data; }
            set { _Data = value; }
        }

        public string Network
        {
            get { return _Network; }
            set { _Network = value; }
        }

        //programming

        public string Java
        {
            get { return _Java; }
            set { _Java = value; }
        }

        public string Csharp
        {
            get { return _Csharp; }
            set { _Csharp = value; }
        }

        public string Vilnet
        {
            get { return _Vilnet; }
            set { _Vilnet = value; }
        }

        public string CplusPlus
        {
            get { return _CplusPlus; }
            set { _CplusPlus = value; }
        }

        public string PHP
        {
            get { return _PHP; }
            set { _PHP = value; }
        }

        public string ASPNET
        {
            get { return _ASPNET; }
            set { _ASPNET = value; }
        }

        public string SQL
        {
            get { return _SQL; }
            set { _SQL = value; }
        }

        public string Oracle
        {
            get { return _Oracle; }
            set { _Oracle = value; }
        }

        public string PMySQL
        {
            get { return _PMySQL; }
            set { _PMySQL = value; }
        }


        public int FileId
        {
            get { return _fileId; }
            set { _fileId = value; }
        }

        public string Resume
        {
            get { return _resume; }
            set { _resume = value; }
        }

        public string Transcript
        {
            get { return _transcript; }
            set { _transcript = value; }
        }

        //ResumeContent Property
        public string ResumeContent
        {
            get { return _ResumeContent; }
            set { _ResumeContent = value; }
        }

        //TranscriptContent Property
        public string TranscriptContent
        {
            get { return _TranscriptContent; }
            set { _TranscriptContent = value; }
        }

        //OtherSkillContent
        public string OtherSkillContent
        {

            get { return _OtherSkillContent; }
            set { _OtherSkillContent = value; }
        }

        //Custom fields that might be needed

        public string ResumeURL
        {
            get { return _resumeURL; }
            set { _resumeURL = value; }
        }

        public string TranscriptURL
        {
            get { return _transcriptURL; }
            set { _transcriptURL = value; }
        }

        public string WorkExp
        {
            get { return _WorkExp; }
            set { _WorkExp = value; }
        }

        public string TechSkill
        {
            get { return _TechSkill; }
            set { _TechSkill = value; }
        }
        #endregion

        #region Constructor

        public StudentContent()
        {
            FileId = -1;
            Resume = string.Empty;
            Transcript = string.Empty;

            StudentID = string.Empty;
            CiscoRouter = string.Empty;
            WAN = string.Empty;
            TCPIP = String.Empty;

            //Security
            Data = string.Empty;
            Network = string.Empty;

            //programming
            Java = string.Empty;
            Csharp = string.Empty;
            Vilnet = string.Empty;
            CplusPlus = string.Empty;
            PHP = string.Empty;
            ASPNET = string.Empty;

            //Database
            SQL = string.Empty;
            Oracle = string.Empty;
            PMySQL = string.Empty;
            ResumeURL = string.Empty;
            TranscriptURL = string.Empty;
            WorkExp = string.Empty;
            TechSkill = string.Empty;

            //ResumeContent
            ResumeContent = string.Empty;

            //TranscriptContent
            TranscriptContent = string.Empty;

            //OtherSkillContent
            OtherSkillContent = string.Empty;


        }

        #endregion

        #region Public Methods
        public void proInsert(string ID)
        {//start new transaction
            using (IDbTransaction Trans = StudentContentDataService.BeginTransaction()) { SkillInsert(ID, Trans); };
        }
        public void proResumeContentInsert(string ID)
        {//start new transaction
            using (IDbTransaction Trans = StudentContentDataService.BeginTransaction()) { ResumeContentInsert(ID, Trans); };
        }
        public void proTranscriptContentInsert(string ID)
        {//start new transaction
            using (IDbTransaction Trans = StudentContentDataService.BeginTransaction()) { TranscriptContentInsert(ID, Trans); };
        }
        public void proOtherSkillContentInsert(string ID)
        {//start new transaction
            using (IDbTransaction Trans = StudentContentDataService.BeginTransaction()) { OtherSkillContentInsert(ID, Trans); };
        }
        #endregion

        #region My Data Access Methods

        private void SkillInsert(string requirementId, IDbTransaction tnx)
        {

            StudentContentDataService dataService = new StudentContentDataService(tnx);
            try
            {
                dataService.Delete_Res_reference(requirementId); //Deletes before inserting(subtituing update methods.

                //Networking
                if (_CiscoRouter != "")
                {
                    dataService.SkillInsert(requirementId, _CiscoRouter);
                }
                if (_WAN != "")
                {
                    dataService.SkillInsert(requirementId, _WAN);
                }
                if (_TCPIP != "")
                {
                    dataService.SkillInsert(requirementId, _TCPIP);
                }

                //Security
                if (_Data != "")
                {
                    dataService.SkillInsert(requirementId, _Data);
                }
                if (_Network != "")
                {
                    dataService.SkillInsert(requirementId, _Network);
                }

                //programming
                if (_Java != "")
                {
                    dataService.SkillInsert(requirementId, _Java);
                }
                if (_Csharp != "")
                {
                    dataService.SkillInsert(requirementId, _Csharp);
                }
                if (_Vilnet != "")
                {
                    dataService.SkillInsert(requirementId, _Vilnet);
                }
                if (_CplusPlus != "")
                {
                    dataService.SkillInsert(requirementId, _CplusPlus);
                }
                if (_PHP != "")
                {
                    dataService.SkillInsert(requirementId, _PHP);
                }

                if (_ASPNET != "")
                {
                    dataService.SkillInsert(requirementId, _ASPNET);
                }
                //Database
                if (_SQL != "")
                {
                    dataService.SkillInsert(requirementId, _SQL);
                }

                if (_Oracle != "")
                {
                    dataService.SkillInsert(requirementId, _Oracle);
                }
                if (_PMySQL != "")
                {
                    dataService.SkillInsert(requirementId, _PMySQL);
                }

                dataService.Txn.Commit();
                // tnx.Dispose();
            }
            catch
            {
                dataService.Txn.Rollback();
                throw;
            }
        }
        //resume data insert private moethod
        private void ResumeContentInsert(string requirementId, IDbTransaction tnx)
        {
            StudentContentDataService dataService = new StudentContentDataService(tnx);
            try
            {
                //Resume Content  
                if (_ResumeContent != "")//this checks before if ResumeConent property has data. 
                {
                    dataService.ResumeContentDelete(requirementId); //Deletes before inserting(subtituing update methods.
                    dataService.ResumeContentInsert(requirementId, _ResumeContent);
                }
                dataService.Txn.Commit();

            }
            catch
            {
                dataService.Txn.Rollback();
                throw;
            }
        }
        //Transcript data insert private moethod
        private void TranscriptContentInsert(string requirementId, IDbTransaction tnx)
        {
            StudentContentDataService dataService = new StudentContentDataService(tnx);
            try
            {
                //Resume Content  
                if (_TranscriptContent != "")//this checks before if ResumeConent property has data. 
                {
                    dataService.TranscriptContentDelete(requirementId); //Deletes before inserting(subtituing update methods.
                    dataService.TranscriptContentInsert(requirementId, _TranscriptContent);
                }
                dataService.Txn.Commit();

            }
            catch
            {
                dataService.Txn.Rollback();
                throw;
            }
        }
        private void OtherSkillContentInsert(string requirementId, IDbTransaction tnx)
        {
            StudentContentDataService dataService = new StudentContentDataService(tnx);
            try
            {
                //Resume Content  
                if (_OtherSkillContent != "")//this checks before if ResumeConent property has data. 
                {
                    dataService.OtherSkillContentDelete(requirementId);//Deletes before inserting(subtituing update methods.
                    dataService.OtherSkillContentInsert(requirementId, _OtherSkillContent);
                }
                dataService.Txn.Commit();
            }
            catch
            {
                dataService.Txn.Rollback();
                throw;
            }
        }
        #endregion

        #region Data Access Methods


        // returns all properties previews inserted into the data base .
        //notice: if no values are found in the data base all properties will be empty
        // only using for editing skills values

        public StudentContent LoadItAll(String requirementId)
        {
            StudentContent objSC = new StudentContent();

              objSC.MadDataSkills(requirementId);
              objSC.MapDataResumeContent(requirementId);
              objSC.MapDataTranscriptContent(requirementId);
              objSC.MapDataOtherSkillsContent(requirementId);
           return objSC;
        }

        public StudentContent MadDataSkills(string requirementId)
        {

            try
            {
                StudentContent objSC = new StudentContent();
                StudentContentDataService myDataService = new StudentContentDataService();
                DataTable MyDatatable = myDataService.LoadSkillReport(requirementId);
                foreach (DataRow row in MyDatatable.Rows)
                {
                    string temp = row.ItemArray[0] as string;
                    switch (temp)
                    {
                        case "1":
                            this.CiscoRouter = temp;
                            objSC.CiscoRouter = temp;
                            break;
                        case "2":
                            this.WAN = temp;
                            objSC.WAN = temp;
                            break;
                        case "3":
                            this.TCPIP = temp;
                            objSC.TCPIP = temp;
                            break;
                        case "4":
                            this.Data = temp;
                            objSC.Data = temp;
                            break;
                        case "5":
                            this.Network = temp;
                            objSC.Network = temp;
                            break;
                        case "6":
                            this.Java= temp;
                            objSC.Java = temp;
                            break;
                        case "7":
                            this.Csharp = temp;
                            objSC.Csharp = temp;
                            break;
                        case "8":
                            this.Vilnet = temp;
                            objSC.Vilnet = temp;
                            break;
                        case "9":
                            this.CplusPlus = temp;
                            objSC.CplusPlus = temp;
                            break;
                        case "10":
                            this.PHP = temp;
                            objSC.PHP = temp;
                            break;
                        case "11":
                            this.ASPNET = temp;
                            objSC.ASPNET = temp;
                            break;
                        case "12":
                            this.SQL = temp;
                            objSC.SQL = temp;
                            break;
                        case "13":
                            this.Oracle = temp;
                            objSC.Oracle = temp;
                            break;
                        case "14":
                            this.PMySQL = temp;
                            objSC.PMySQL = temp;
                            break;

                    }

                }
                return objSC;
            }
            catch
            {
                throw;
            }
        }

        public StudentContent MapDataResumeContent(string requirementId)
        {
            try
            {
                StudentContent objSC = new StudentContent();
                StudentContentDataService myDataService = new StudentContentDataService();
                DataTable MyDatatable = myDataService.LoadResumeContent(requirementId);
                foreach (DataRow row in MyDatatable.Rows)
                {
                    string temp = row.ItemArray[0] as string;
                    this.ResumeContent = temp;
                     objSC.ResumeContent = temp;

                }
                return objSC;
            }
            catch
            {
                throw;
            }
        }

        public StudentContent MapDataTranscriptContent(string requirementId)
        
        {
            try
            {
                StudentContent objSC = new StudentContent();
                StudentContentDataService myDataService = new StudentContentDataService();
                DataTable MyDatatable = myDataService.LoadTranscriptContent(requirementId);
                foreach (DataRow row in MyDatatable.Rows)
                {
                    string temp = row.ItemArray[0] as string;
                    this.TranscriptContent = temp;
                    objSC.TranscriptContent = temp;

                }
                return objSC;
            }
            catch
            {
                throw;
            }
        }

        public StudentContent MapDataOtherSkillsContent(string requirementId)
        {

            try
            {
                StudentContent objSC = new StudentContent();
                StudentContentDataService myDataService = new StudentContentDataService();
                DataTable MyDatatable = myDataService.LoadOtherSkillContent(requirementId);
                foreach (DataRow row in MyDatatable.Rows)
                {
                    string temp = row.ItemArray[0] as string;
                    this.OtherSkillContent = temp;
                    objSC.OtherSkillContent = temp;

                }
                return objSC;
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// Inserts FileUpload data into database
        /// FileId will be updated with the database identity
        /// </summary>
        /// <param name="requirementId">Internship RequirementId</param>
        /// <param name="tnx">Transcation crerated from  student object</param>
        public void Insert(int requirementId, IDbTransaction tnx)
        {
            try
            {
                StudentContentDataService dataService = new StudentContentDataService(tnx);

                dataService.Insert(ref _fileId, requirementId, _transcript, _resume);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// Creates a FileUpload object with data Loaded from the database
        /// </summary>
        /// <param name="requirementId"> Internship RequirementId</param>
        /// <returns></returns>
        public static StudentContent Load(int requirementId)
        {
            try
            {
                StudentContentDataService dataService = new StudentContentDataService();

                DataSet ds = dataService.Load(requirementId);
                StudentContent objFile = new StudentContent();

                return (objFile.MapData(ds)) ? objFile : null;

            }
            catch 
            {
                throw;
            }
        }

        /// <summary>
        /// Maps column from the Data Row to properties
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        public override bool MapData(DataRow row)
        {
            try
            {
                this.FileId = GetInt(row, "FileId");
                this.Resume = GetString(row, "Resume");
                this.Transcript = GetString(row, "Transcript");
                return true;
            }
            catch (Exception)
            {
                //return false;
                throw;
            }
        }
        #endregion

    }
}
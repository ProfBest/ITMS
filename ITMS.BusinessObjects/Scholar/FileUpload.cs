using System;
using System.Data;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar {
   
    public class FileUpload :BaseObject {
        #region Private Fields
        
        private int _fileId;
        private string _resume;
        private string _transcript;
        private string _StudentID;

        //custum private fields that I think might be needed
        //private string _resumeURL;
        //private string _transcriptURL;
        //private string _TechSkill;
        //private string _WorkExp;

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

        #endregion

        public string StudentID {
            get { return _StudentID; }
            set { _StudentID = value; }

        }


        #region Properties
        //Networking CHKB
        public string CiscoRouter {
            get {return _CiscoRouter; }
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




//###################################################################

        public int  FileId {
            get { return _fileId; }
            set { _fileId = value; }
        }

        public string Resume {
            get { return _resume; }
            set { _resume = value; }
        }

        public string Transcript
        {
            get { return _transcript; }
            set { _transcript = value; }
        }

        //Custom fields that might be needed

        //public string ResumeURL {
        //    get { return _resumeURL; }
        //    set { _resumeURL = value; }
        //}

        //public string TranscriptURL {
        //    get { return _transcriptURL; }
        //    set { _transcriptURL = value; }
        //}

        //public string WorkExp {
        //    get { return _WorkExp; }
        //    set { _WorkExp = value; }
        //}

        //public string TechSkill {
        //    get { return _TechSkill; }
        //    set { _TechSkill = value; }
        //}
        #endregion

        #region Constructor
        
        public FileUpload() {
            FileId = -1;
            Resume = string.Empty;
            Transcript = string.Empty;

        StudentID = string.Empty;
        CiscoRouter= string.Empty;
        WAN= string.Empty;
        TCPIP = string.Empty;


        //Security
        Data= string.Empty;
        Network= string.Empty;

        //programming
        Java= string.Empty;
        Csharp= string.Empty;
        Vilnet= string.Empty;
        CplusPlus= string.Empty;
        PHP= string.Empty;
        ASPNET= string.Empty;

        //Database
        SQL= string.Empty;
        Oracle= string.Empty;
        PMySQL= string.Empty;
            //ResumeURL = string.Empty;
            //TranscriptURL = string.Empty;
            //WorkExp = string.Empty;
            //TechSkill = string.Empty;  
        }

        #endregion

        #region Data Access Methods
        
        /// <summary>
        /// Inserts FileUpload data into database
        /// FileId will be updated with the database identity
        /// </summary>
        /// <param name="requirementId">Internship RequirementId</param>
        /// <param name="tnx">Transcation crerated from  student object</param>
        public void Insert(int requirementId, IDbTransaction tnx) {
            try {
                FileDataService dataService = new FileDataService(tnx);

                dataService.Insert(ref _fileId, requirementId, _transcript, _resume);
            } catch {
                throw;
            }
        }

        /// <summary>
        /// Creates a FileUpload object with data Loaded from the database
        /// </summary>
        /// <param name="requirementId"> Internship RequirementId</param>
        /// <returns></returns>
        public static FileUpload Load(int requirementId) {
            try {
                FileDataService dataService = new FileDataService();

                DataSet ds = dataService.Load(requirementId);
                FileUpload objFile = new FileUpload();

                return (objFile.MapData(ds)) ? objFile : null;

            } catch {
                throw;
            }
        }

        /// <summary>
        /// Maps column from the Data Row to properties
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        public override bool MapData(DataRow row) {
            try {
                this.FileId = GetInt(row, "FileId");
                this.Resume = GetString(row, "Resume");
                this.Transcript = GetString(row, "Transcript");
                return true;
            } catch (Exception) {
                //return false;
                throw;
            }
        }

        #endregion
        


    }
}
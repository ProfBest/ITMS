using System;
using System.Data;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar {
   
    public class FileUpload :BaseObject {
        #region Private Fields
        
        private int _fileId;
        private string _resume;
        private string _transcript;

        #endregion

        #region Properties

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

        #endregion

        #region Constructor

        public FileUpload() {
            FileId = -1;
            Resume = string.Empty;
            Transcript = string.Empty;
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
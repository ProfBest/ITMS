using System;
using System.Data;
using ITMS.BusinessObjects.Collection;
using ITMS.DataAccessLayer.Scholar;

namespace ITMS.BusinessObjects.Scholar
{
    public class InternshipRequirement : BaseObject
    {
        private int _requirementId;
        private string _SCrequirementId;
        private bool _driverLicense;
        private bool _owncar;
        private bool _travelNj;
        private bool _travelWestchester;
        private ResidenceStatus _residenceStatus;
        private bool _limitation;
        private string _limitationExplanation;
        private string _semester;
        private InternshipType _internshipType;
        private ModuleTakenCollection _modulesTaken;
        private PreferenceRankCollection _preferenceRanks;
        private StudentContent _studentContent;


        public string SCrequirementId
        {
            get { return _SCrequirementId; }
            set {_SCrequirementId= value; }
        }
        public int RequirementId
        {
            get { return _requirementId; }
            set { _requirementId = value; }
        }

        /// <summary>
        /// Student has a drivers License?
        /// </summary>
        public bool DriverLicense
        {
            get { return _driverLicense; }
            set { _driverLicense = value; }
        }

        /// <summary>
        /// Student owns a car?
        /// </summary>
        public bool Owncar
        {
            get { return _owncar; }
            set { _owncar = value; }
        }

        /// <summary>
        /// Student Willing to travel to New Jersey 
        /// </summary>
        public bool TravelNJ
        {
            get { return _travelNj; }
            set { _travelNj = value; }
        }

        /// <summary>
        /// Student Willing to travel to Westchester
        /// </summary>
        public bool TravelWestchester
        {
            get { return _travelWestchester; }
            set { _travelWestchester = value; }
        }

        /// <summary>
        /// Studen Residentail Status
        /// </summary>
        public ResidenceStatus ResidenceStatus
        {
            get { return _residenceStatus; }
            set { _residenceStatus = value; }
        }

        /// <summary>
        /// Any Limitations
        /// </summary>
        public bool Limitation
        {
            get { return _limitation; }
            set { _limitation = value; }
        }

        /// <summary>
        /// Limitation Explained
        /// </summary>
        public string LimitationExplanation
        {
            get { return _limitationExplanation; }
            set { _limitationExplanation = value; }
        }

        /// <summary>
        /// Internship Semester
        /// </summary>
        public string Semester
        {
            get { return _semester; }
            set { _semester = value; }
        }


        public InternshipType InternshipType
        {
            get { return _internshipType; }
            set { _internshipType = value; }
        }

        public StudentContent studentContent
        {
            get { return _studentContent; }
            set { _studentContent = value; }
        }

        public ModuleTakenCollection ModulesTaken
        {
            get { return _modulesTaken; }
            set { _modulesTaken = value; }
        }

        public PreferenceRankCollection PreferenceRanks
        {
            get { return _preferenceRanks; }
            set { _preferenceRanks = value; }
        }


        public InternshipRequirement()
        {
            _requirementId = -1;
            studentContent = new StudentContent();
            ModulesTaken = new ModuleTakenCollection();
            PreferenceRanks = new PreferenceRankCollection();
            _limitationExplanation = "";
        }


        /// <summary>
        /// Insert a Student Intership Requirement Reocord to Database
        /// </summary>
        /// <param name="studentId"></param>
        /// <param name="tnx"></param>
        public void Insert(string studentId, IDbTransaction tnx)
        {
            try
            {
                //Create a DataService Object and With the transaction from the Student Class
                InternshipRequirementDataService dataService = new InternshipRequirementDataService(tnx);


                //Call the Insert method, Adds the Requirement Record to Databse
                dataService.Insert(ref _requirementId, studentId, _internshipType.ToString(), _driverLicense, _owncar,
                                   _travelNj, _travelWestchester,
                                   _residenceStatus.ToString(), _limitation, _limitationExplanation, _semester);


                //Insert File upload Record 
                _studentContent.Insert(_requirementId, tnx);

                //loop through Modules taken Collection 
                foreach (var mod in _modulesTaken)
                {
                    //Insert module taken record 
                    mod.Insert(_requirementId, tnx);
                }

                //Insert Preference Ranks 
                foreach (var prefRank in _preferenceRanks)
                {
                    prefRank.Insert(_requirementId, tnx);
                }
            } catch
            {

                throw;
            }
        }


        /// <summary>
        /// Update a Student Intership Requirement Reocord to Database
        /// </summary>
        /// <param name="studentId"></param>
        /// <param name="tnx"></param>
        public void Update(string studentId, IDbTransaction tnx)
        {
            try
            {
                //Create a DataService Object and With the transaction from the Student Class
                InternshipRequirementDataService dataService = new InternshipRequirementDataService(tnx);


                //Call the Insert method, Adds the Requirement Record to Databse
                dataService.Update(ref _requirementId, studentId, _internshipType.ToString(), _driverLicense, _owncar,
                                   _travelNj, _travelWestchester,
                                   _residenceStatus.ToString(), _limitation, _limitationExplanation, _semester);


                //Insert File upload Record 
               // _fileUpload.Update(_requirementId, tnx);

                //loop through Modules taken Collection 
                foreach (var mod in _modulesTaken)
                {
                    //Insert module taken record 
                    mod.Update(_requirementId, tnx);
                }

                //Insert Preference Ranks 
                foreach (var prefRank in _preferenceRanks)
                {
                    prefRank.Update(_requirementId, tnx);
                }
            }
            catch
            {

                throw;
            }
        }


        public static InternshipRequirement Load(string studentId)
        {
            try
            {
                InternshipRequirementDataService dataService = new InternshipRequirementDataService();
                DataSet ds = dataService.Load(studentId);

                InternshipRequirement objRequirement = new InternshipRequirement();

                return objRequirement.MapData(ds) ? objRequirement : null;

            } catch
            {

                throw;
            }
        }

        #region Overrides of BaseObject

        public override bool MapData(DataRow row)
        {
            try
            {
                int requirementId = GetInt(row, "RequirementId");
                this.RequirementId = requirementId;
                this.DriverLicense = GetBool(row, "DriverLicense");
                this.Owncar = GetBool(row, "Owncar");
                this.TravelNJ = GetBool(row, "TravelNJ");
                this.TravelWestchester = GetBool(row, "TravelWestchester");
                this.Limitation = GetBool(row, "Limitation");
                this.LimitationExplanation = GetString(row, "LimitationExplanation");
                this.Semester = GetString(row, "Semester");
                this.ResidenceStatus = (ResidenceStatus)Enum.Parse(typeof (ResidenceStatus),
                                                                   GetString(row, "ResidenceStatus"));
                this.InternshipType = (InternshipType)Enum.Parse(typeof (InternshipType),
                                                                 GetString(row, "InternshipType"));
                this.ModulesTaken = ModuleTakenCollection.Load(requirementId);
                this.PreferenceRanks = PreferenceRankCollection.Load(requirementId);
                this.studentContent = StudentContent.LoadItAll(_SCrequirementId);
                return true;
            } catch (Exception)
            {

                throw;
            }
        }

        #endregion

    }
}

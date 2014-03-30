using System;
using System.Data;
using ITMS.DataAccessLayer.Sponsor;

namespace ITMS.BusinessObjects.Sponsor
{
    public class Position: BaseObject
    {
        #region Private Fields

        private string _title;
        private string _duties;
        private int _positionId;
        private PositionType _positionType;
        private string _skills;
        private decimal _workHours;
        private decimal _workDays;
        
        #endregion

        #region Public Properties

        #region InternPostion Unique Properties
        
        /// <summary>
        /// Primary Key
        /// </summary>
        public int PositionId {
            get { return _positionId; }
            set { _positionId = value; }
        }

        /// <summary>
        /// Type of Internship
        /// </summary>
        public PositionType PositionType {
            get { return _positionType; }
            set { _positionType = value; }
        }
        
        /// <summary>
        /// Required Skills for Job
        /// </summary>
        public string Skills {
            get { return _skills; }
            set { _skills = value; }
        }
        
        /// <summary>
        /// Hours required to work
        /// </summary>
        public decimal WorkHours {
            get { return _workHours; }
            set { _workHours = value; }
        }
        
        /// <summary>
        /// Days required to work
        /// </summary>
        public decimal WorkDays {
            get { return _workDays; }
            set { _workDays = value; }
        }
        #endregion

        #region Implementation of IJob

        public string Title {
            get { return _title; }
            set { _title = value; }
        }
        
        public string Duties {
            get { return _duties; }
            set { _duties = value; }
        }
        

        #endregion
        
        #endregion

        #region Constructors
        public Position() {
            _title = string.Empty;
            _duties = string.Empty;
            _skills = string.Empty;
            _workDays = 0m;
            _workHours = 0m;
            _positionType = PositionType.Credit;
        }

        /// <summary>
        /// Internship Job
        /// </summary>
        /// <param name="title"> Job Title</param>
        /// <param name="description">Job Description</param>
        /// <param name="positionType"> Internship Type</param>
        /// <param name="skills">Skills Need for Job</param>
        /// <param name="hours">Hours required to work</param>
        /// <param name="days">Days Required to Work</param>
        //public InternPosition(string title, string description, PositionType positionType, string skills, decimal hours, decimal days) {

        //    this.Title = title;
        //    this.Description = description;
        //    this.PositionType = positionType;
        //    this.Skills = skills;
        //    this.Hours = hours;
        //    this.Days = days;

        //}
        #endregion 

        public void Insert(int managerId)
        {
            try
            {
                PositionDataService dataService = new PositionDataService();

                dataService.Insert(ref _positionId, managerId, _title,_duties,_positionType.ToString(),
                _skills,_workHours,_workDays);


            } catch 
            {
                
                throw;
            }
        }

        public static Position Load(int positionid)
        {
            try
            {
                PositionDataService dataService = new PositionDataService();

                DataSet ds = dataService.Load(positionid);

                Position obj = new Position();

                return (obj.MapData(ds)) ? obj : null;

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
                this.PositionId = GetInt(row, "PositionId");
                this.Duties = GetString(row, "JobDescription");
                this.Skills = GetString(row, "Skills");
                this.Title = GetString(row, "Title");
                this.WorkDays = GetDecimal(row, "WorkDays");
                this.WorkHours = GetDecimal(row, "WorkHours");
                this.PositionType = (PositionType)Enum.Parse(typeof(PositionType),
                                                             GetString(row, "PositionType"));
                return true;

            } catch 
            {
                throw;
            }
          
        }

        #endregion
        
    }
}

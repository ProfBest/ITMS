using System.Data;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar
{
    public class Employer : BaseObject
    {
        #region Private Fields
        
        private string _companyName;
        private string _phoneNumber;

        private string _address;
        private string _city;
        private string _state;
        private string _zipcode;

        private string _title;
        private string _jobDescription;
        private string _supervisorName;
        private string _department;
        private int _employerId;

        #endregion

        #region Properties
        
        /// <summary>
        /// Primary Key 
        /// </summary>
        public int EmployerId {
            get { return _employerId; }
            set { _employerId = value; }
        }

        /// <summary>
        /// Supervisor Name
        /// </summary>
        public string SupervisorName {
            get { return _supervisorName; }
            set { _supervisorName = value; }
        }

        /// <summary>
        /// Positon Department
        /// </summary>
        public string Department {
            get { return _department; }
            set { _department = value; }
        }

      


        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }
        public string Duties
        {
            get { return _jobDescription; }
            set { _jobDescription = value; }
        }
    
        public string CompanyName {
            get { return _companyName; }
            set { _companyName = value; }
        }
        public string PhoneNumber {
            get { return _phoneNumber; }
            set { _phoneNumber = value; }
        }


        public string Address {
            get { return _address; }
            set { _address = value; }
        }
        public string City {
            get { return _city; }
            set { _city = value; }
        }
        public string State {
            get { return _state; }
            set { _state = value; }
        }
        public string Zipcode {
            get { return _zipcode; }
            set { _zipcode = value; }
        }

        #endregion

        #region Constructors

        /// <summary>
        /// Student Employer Object
        /// </summary>
        /// <param name="companyName">Company Name</param>
        /// <param name="phoneNumber">Company Phone Number</param>
        /// <param name="department">Job Department </param>
        /// <param name="supervisorName">Supervisor Name</param>
        /// <param name="title">Postion Tile</param>
        /// <param name="description">Position Description </param>
        /// <param name="street">Company Street Address</param>
        /// <param name="city">Company City</param>
        /// <param name="state">Company State</param>
        /// <param name="zipcode">Company Zipcode</param>
        public Employer( string companyName = "", string phoneNumber = "",string department = "" , string supervisorName = "",
           string title = "", string jobDescription = "", string address = "", string city = "", string state = "", string zipcode = "")
        {

            this.CompanyName = companyName;
            this.PhoneNumber = phoneNumber;
            this.Department = department;
            this.SupervisorName = supervisorName;
            this.Title = title;
            this.Duties = jobDescription;
            this.Address = address;
            this.City = city;
            this.State = state;
            this.Zipcode = zipcode;
           }


        #endregion


        //public void Insert(string studentId) 
        //{
        //    try 
        //    {
        //        EmployerDataService dataService = new EmployerDataService();

        //        dataService.Insert(ref _employerId,studentId, _companyName, _phoneNumber,_department, _supervisorName,
        //            _title,_jobDescription,_address,_city,_state,_zipcode);

        //    } catch  {
                
        //        throw;
        //    }
        //}


        /// <summary>
        /// Inserts an Employer Record to Database 
        /// </summary>
        /// <param name="studentId">Student id</param>
        /// <param name="tnx">Database Transaction Object</param>
        public void Insert(string studentId, IDbTransaction tnx)
        {
            try
            {
                //Create an Employer DataService Object
                EmployerDataService dataService = new EmployerDataService(tnx);

                // Excute the Insert methdo 
                dataService.Insert(ref _employerId, studentId, _companyName, _phoneNumber, _department, _supervisorName,
                    _title, _jobDescription, _address, _city, _state, _zipcode);

            }
            catch
            {
                throw;
            }
        }


        /// <summary>
        /// Loads a populated Employer Object for a Student 
        /// </summary>
        /// <param name="studentId"> Student Employer Id </param>
        /// <returns> Employer Object </returns>
        public static Employer Load(string studentId)
        {
            try
            {
                //
                EmployerDataService dataService = new EmployerDataService();
                DataSet ds = dataService.Load(studentId);

                Employer objEmployer = new Employer();
                return objEmployer.MapData(ds) ? objEmployer : null;
            } catch 
            {
                
                throw;
            }
        }

        #region Overrides of BaseObject


        /// <summary>
        /// Maps the Data Row to Properties 
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        public override bool MapData(DataRow row)
        {
            try
            {
                this.EmployerId = GetInt(row, "EmployerId");
                this.SupervisorName = GetString(row, "SupervisorName");
                this.Department = GetString(row, "Department");
                this.Title = GetString(row, "Title");
                this.Duties = GetString(row, "JobDescription");
                this.CompanyName = GetString(row, "CompanyName");
                this.PhoneNumber = GetString(row, "PhoneNumber");
                this.Address = GetString(row, "Address");
                this.City = GetString(row, "City");
                this.State = GetString(row, "State");
                this.Zipcode = GetString(row, "Zipcode");
                return true;
            } catch 
            {
                throw;
            }
        }

        #endregion
    }
}

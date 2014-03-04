using System;
using System.Data;
using ITMS.DataAccessLayer;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar {
    
    public class Student : BaseObject
    {

        #region Private Fields
        private decimal _gpa;
        private string _studentId;
        private string _phoneDay;
        private string _phoneEvening;
        private DateTime _graduationDate;
        private string _firstName;
        private string _lastName;
        private string _email;
        private string _phoneCell;
        private string _address;
        private string _city;
        private string _state;
        private string _zipcode;
        private InternshipRequirement _internshipRequirement;
        private Employer _employer;
        private string _last4Ssn;

        #endregion 

        #region Properties

   

        /// <summary>
        /// Student Employee Id 
        /// </summary>
        public string StudentId {
            get { return _studentId; }
            set { _studentId = value; }
        }

        /// <summary>
        /// Student Socail Security Number
        /// </summary>
        public string Last4SSN {
            get { return _last4Ssn; }
            set { _last4Ssn = value; }
        }

        /// <summary>
        /// Afternoon Phone Number
        /// </summary>
        public string PhoneDay
        {
            get { return _phoneDay; }
            set { _phoneDay = value; }
        }

        /// <summary>
        /// Evening Phone Number
        /// </summary>
        public string PhoneEvening
        {
            get { return _phoneEvening; }
            set { _phoneEvening = value; }
        }

        /// <summary>
        /// Student GPA Range 0.0 to 4.0
        /// </summary>
        public decimal GPA {
            get { return _gpa; }
            set {
                if (value > 4.0m || value < 0) {
                    throw new Exception("GPA must be between 0.0 to 4.0");
                } else
                {
                    _gpa = value;
                }
                
            }
        }

        public DateTime GraduationDate {
            get { return _graduationDate; }
            set { _graduationDate = value; }
        }

 


        public string FirstName {
            get { return _firstName; }
            set { _firstName = value; }
        }

        public string LastName {
            get { return _lastName; }
            set { _lastName = value; }
        }

        public string Email {
            get { return _email; }
            set { _email = value; }
        }

        public string PhoneCell {
            get { return _phoneCell; }
            set { _phoneCell = value; }
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

        public string Zipcode
        {
            get { return _zipcode; }
            set { _zipcode = value; }
        }



        #region Child Objects

        public InternshipRequirement InternshipRequirement {
            get { return _internshipRequirement; }
            set { _internshipRequirement = value; }
        }

        public Employer Employer {
            get { return _employer; }
            set { _employer = value; }
        }

        #endregion

        #endregion

        #region Constructors
        public Student() {
            _studentId = string.Empty;
            _last4Ssn = string.Empty;
            _firstName = string.Empty;
            _lastName = string.Empty;
            _phoneCell = string.Empty;
            _phoneEvening = string.Empty;
            _phoneDay = string.Empty;
            _address = string.Empty;
            _city = string.Empty;
            _state = string.Empty;
            _zipcode = string.Empty;
            _gpa = 0m;
            _graduationDate = DateTime.MinValue;
        }

        public Student(string studentId, string last4Ssn, string firstname, string lastname, string cellphone, string dayphone, string eveningPhone,
            string email, string address, string city, string state, string zipcode, decimal gpa, DateTime graduationDate, 
            InternshipRequirement requirement, Employer employer)
        {
            this.StudentId = studentId;
            this.Last4SSN = last4Ssn;
            this.FirstName = firstname;
            this.LastName = lastname;
            this.PhoneCell = cellphone;
            this.PhoneDay = dayphone;
            this.PhoneEvening = eveningPhone;
            this.Email = email;
            this.Address = address;
            this.City = city;
            this.State = state;
            this.Zipcode = zipcode;
            this.GPA = gpa;
            this.GraduationDate = graduationDate;
            this.InternshipRequirement = requirement;
            this.Employer = employer;



        }

        #endregion

        #region Data Access Methods

        public void Insert() 
        {
            IDbTransaction transaction = null;
            try
            {
                // Create a transaction to ensure all child properties are inserted along with the student record
                transaction = DataServiceBase.BeginTransaction();

                //Create a Student Data Service object with the transction object
                StudentDataService dataService = new StudentDataService(transaction);

                //Call the insert method 
                dataService.Insert(_studentId, _last4Ssn, _firstName, _lastName, _phoneCell, _phoneDay, _phoneEvening,
                    _email, _address, _city, _state, _zipcode, _gpa, _graduationDate);

                // Insert the Internship Requirement Child Object with the transaction 
                _internshipRequirement.Insert(_studentId, transaction);


                // Insert employer if exists 
                if (_employer != null)
                {
                    _employer.Insert(_studentId, transaction);
                }

                //Commit the Transaction, ensures all child properites are saved along with the studento Objects 
                transaction.Commit();

            }
            catch
            {
                //Remove all records from the database if an error occurs
                transaction.Rollback();
                throw;
            }
           

        }

        /// <summary>
        /// Loads a populated student Object from Database
        /// </summary>
        /// <param name="studentId"></param>
        /// <returns></returns>
        public static Student Load(string studentId)
        {
            try
            {
                StudentDataService dataService = new StudentDataService();
                DataSet ds = dataService.Load(studentId);

                Student objStudent = new Student();

                return objStudent.MapData(ds) ? objStudent : null;

            } catch 
            {
                
                throw;
            }
            
        }

        #endregion 


        #region Overrides of BaseObject

        /// <summary>
        /// Maps the Data row to properties 
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        public override bool MapData(DataRow row)
        {
            try
            {
                
                this.StudentId = GetString(row, "StudentId");
                this.Last4SSN = GetString(row, "Last4SSN");
                this.FirstName = GetString(row, "FirstName");
                this.LastName = GetString(row, "LastName");
                this.GraduationDate = GetDateTime(row, "GraduationDate");
                this.GPA = GetDecimal(row, "GPA");
                this.Email = GetString(row, "Email");
                this.PhoneCell = GetString(row, "PhoneCell");
                this.PhoneDay = GetString(row, "PhoneDay");
                this.PhoneEvening = GetString(row, "PhoneEvening");
                this.Address = GetString(row, "Address");
                this.City = GetString(row, "City");
                this.State = GetString(row, "State");
                this.Zipcode = GetString(row, "Zipcode");

                //Load Internship Requirement Object 
                this.InternshipRequirement = InternshipRequirement.Load(_studentId);

                //Load Employer Object 
                this.Employer = Employer.Load(_studentId);
                return true;
            } catch (Exception)
            {
                
                throw;
            }
        }

        #endregion
    }
}
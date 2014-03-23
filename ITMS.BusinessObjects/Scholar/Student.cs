using System;
using System.Data;
using ITMS.DataAccessLayer;
using ITMS.DataAccessLayer.Scholar;
using System.Data.SqlClient;


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

            }
            
            catch 
            {
                throw;
            }
            
        }

        /*
         * **************************************** My changes START here ************************************************
         */

        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;
        private bool updateReady;
        private bool insertReady;


        String generalMessage;
        String errorMessage;

        /*
         * <summary>
         * Search and display student records from Database
         * </summary>
         * <param name="stdID"></param>
         * <returns></returns>
         */

        public void Fetch(String stdID)
        {
            command.CommandText = "SELECT * FROM Students WHERE StudentId=@StudentID";
            command.Parameters.Clear();
            command.Parameters.AddWithValue("@StudentID", SqlDbType.VarChar).Value = stdID;

            try
            {
                // String errorMessage;
                connection.Open();
                reader = command.ExecuteReader(CommandBehavior.SingleRow);

                if (reader.Read())
                {
                    // Left side is my program variable and right side is the SQL DB variable
                    this.StudentId = reader["StudentId"].ToString();
                    this.Last4SSN = reader["Last4SSN"].ToString();
                    this.FirstName = reader["FirstName"].ToString();
                    this.LastName = reader["LastName"].ToString();
                    this.PhoneCell = reader["PhoneCell"].ToString();
                    this.PhoneDay = reader["PhoneDay"].ToString();
                    this.PhoneEvening = reader["PhoneEvening"].ToString();
                    this.Email = reader["Email"].ToString();
                    this.Address = reader["Address"].ToString();
                    this.City = reader["City"].ToString();
                    this.State = reader["State"].ToString();
                    this.Zipcode = reader["Zipcode"].ToString();
                    this.GPA = System.Convert.ToDecimal(reader["GPA"]);
                    this.GraduationDate = (DateTime) reader["GraduationDate"];
                    // Convert.ToDateTime(reader["GraduationDate"]).ToString("yyyy/MM/dd");
                    /*// Convert from string in "dd-MMM-yyyy" format to DateTime.
                    DateTime dt = DateTime.ParseExact("20-Oct-2012", "dd-MMM-yyyy", null);

                    // Convert from DateTime to string in "yyyy/MM/dd" format.
                    string str = dt.ToString("yyyy/MM/dd");*/

                    // Enum type conversion. Enum2 value2 = (Enum2) Enum.Parse(typeof(Enum2), value.ToString());
                    // If you mean by numeric value, you can usually just cast: Enum2 value2 = (Enum2)value;
                    this.InternshipRequirement = (InternshipRequirement)Enum.Parse(typeof(InternshipRequirement), InternshipRequirement.ToString());
                    //this.InternshipRequirement = reader["InternshipRequirement"].ToString();

                    this.Employer = (Employer)Enum.Parse(typeof(Employer), Employer.ToString());
                    //this.Employer = reader["Employer"].ToString();


                    /*
                     You can parse user input like this:
                     DateTime enteredDate = DateTime.Parse(enteredString);
                     
                     If you have a specific format for the string, you should use the other method:
                     DateTime loadedDate = DateTime.ParseExact(loadedString, "d", null);
                     * 
                     */
                }

                else
                    errorMessage = "Student does not exist.";
            }
            catch (SqlException ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
            finally
            {
                connection.Close();
            }
        }




        /*
         * <summary>
         * Updates student records in the Database
         * </summary>
         * <returns></returns>
         */

        public void Edit_Update()
        {
            if (updateReady)
            {
                command.CommandText = "UPDATE Students SET " +
                    "Last4SSN = @Last4SSN, " +
                    "FirstName = @FirstName, " +
                    "LastName = @LastName, " +
                    "PhoneCell = @PhoneCell, " +
                    "PhoneDay = @PhoneDay, " +
                    "PhoneEvening = @PhoneEvening, " +
                    "Email = @Email, " +
                    "Address = @Address, " +
                    "City = @City, " +
                    "State = @State, " +
                    "Zipcode = @Zipcode, " +
                    "GPA = @GPA, " +
                    "GraduationDate = @GraduationDate, " +
                    "InternshipRequirement = @InternshipRequirement, " +
                    "Employer = @Employer WHERE StudentID = @StudentID";

                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Last4SSN", SqlDbType.VarChar).Value = this.Last4SSN;
                command.Parameters.AddWithValue("@FirstName", SqlDbType.VarChar).Value = this.FirstName;
                command.Parameters.AddWithValue("@LastName", SqlDbType.VarChar).Value = this.LastName;
                command.Parameters.AddWithValue("@PhoneCell", SqlDbType.VarChar).Value = this.PhoneCell;
                command.Parameters.AddWithValue("@PhoneDay", SqlDbType.VarChar).Value = this.PhoneDay;
                command.Parameters.AddWithValue("@PhoneEvening", SqlDbType.VarChar).Value = this.PhoneEvening;
                command.Parameters.AddWithValue("@Email", SqlDbType.VarChar).Value = this.Email;
                command.Parameters.AddWithValue("@Address", SqlDbType.VarChar).Value = this.Address;
                command.Parameters.AddWithValue("@City", SqlDbType.VarChar).Value = this.City;
                command.Parameters.AddWithValue("@State", SqlDbType.VarChar).Value = this.State;
                command.Parameters.AddWithValue("@Zipcode", SqlDbType.VarChar).Value = this.Zipcode;
                command.Parameters.AddWithValue("@GPA", SqlDbType.VarChar).Value = this.GPA;
                command.Parameters.AddWithValue("@GraduationDate", SqlDbType.VarChar).Value = this.GraduationDate;
                command.Parameters.AddWithValue("@InternshipRequirement", SqlDbType.VarChar).Value = this.InternshipRequirement;
                command.Parameters.AddWithValue("@Employer", SqlDbType.VarChar).Value = this.Employer;
                
                command.Parameters.AddWithValue("@StudentID", SqlDbType.VarChar).Value = this.StudentId;

                try
                {
                    connection.Open();
                    int result = command.ExecuteNonQuery();

                    if (result > 0)
                        generalMessage = "Student details successfully updated.";
                    else
                        errorMessage = "Update failed.";
                }
                catch (SqlException ex)
                {
                    errorMessage = ex.Message;
                }
                finally
                {
                    connection.Close();
                }

            }
            
            /* else
            {
            } */
        }


        /*
         * <summary>
         * Delete student records from Database
         * </summary>
         * <param name="stdID"></param>
         * <returns></returns>
         */

        public void Delete(String stdID)
        {
            command.CommandText = "DELETE FROM Students WHERE StudentID=@StudentID";
            command.Parameters.Clear();
            command.Parameters.AddWithValue("@StudentID", SqlDbType.VarChar).Value = stdID;

            try
            {
                connection.Open();

                int result = command.ExecuteNonQuery();

                if (result > 0)
                {
                    generalMessage = "Student successfully deleted.";
                    //ClearFields();
                }
                else
                    errorMessage = "Failed to delete student.";
            }
            catch (SqlException ex)
            {
                errorMessage = ex.Message;
            }
            finally
            {
                connection.Close();
            }
        }


        /*
         * **************************************** My changes STOP here ************************************************
         */

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
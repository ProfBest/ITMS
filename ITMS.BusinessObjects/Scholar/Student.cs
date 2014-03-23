using System;
using System.Data;
using ITMS.DataAccessLayer;
using ITMS.DataAccessLayer.Scholar;
using System.Data.SqlClient;
using System.Text.RegularExpressions;


namespace ITMS.BusinessObjects.Scholar {
    
    public class Student : BaseObject
    {

        #region Private Date Declaration
        private string _studentID;
        private string _last4Ssn;
        private string _firstName;
        private string _lastName;
        private string _address;
        private string _city;
        private string _state;
        private string _zipcode;
        private string _phoneCell;
        private string _phoneDay;
        private string _phoneEvening;
        private decimal _gpa;
        private string _email;
        private DateTime _graduationDate;
        private InternshipRequirement _internshipRequirement;
        private Employer _employer;

        #endregion 




        #region Public Properties Declaration

        /// <summary>
        /// Student's Employee ID 
        /// </summary>
        public string StudentID
        {
            get
            {
                return _studentID;
            }
            
            set 
            {
                _studentID = value;
            }
        }


        /// <summary>
        /// Student's last 4 digit of SSN
        /// </summary>
        public string Last4SSN
        {
            get
            {
                return _last4Ssn;
            }

            set
            {
                _last4Ssn = value;
            }
        }


        /// <summary>
        /// Student's First Name
        /// </summary>
        public string FirstName
        {
            get
            {
                return _firstName;
            }
            
            set
            {
                _firstName = value;
            }
        }


        /// <summary>
        /// Student's Last Name
        /// </summary>
        public string LastName
        {
            get
            {
                return _lastName;
            }
            
            set
            {
                _lastName = value;
            }
        }


        /// <summary>
        /// Student's Street Address
        /// </summary>
        public string Address
        {
            get
            {
                return _address;
            }
            
            set
            {
                _address = value;
            }
        }


        /// <summary>
        /// Student's City
        /// </summary>
        public string City
        {
            get
            {
                return _city;
            }
            
            set
            {
                _city = value;
            }
        }


        /// <summary>
        /// Student's State
        /// </summary>
        public string State
        {
            get
            {
                return _state;
            }
            
            set
            {
                _state = value;
            }
        }


        /// <summary>
        /// Student's Zip Code
        /// </summary>
        public string Zipcode
        {
            get
            {
                return _zipcode;
            }
            
            set
            {
                _zipcode = value;
            }
        }


        /// <summary>
        /// Student's Cell Phone Number
        /// </summary>
        public string PhoneCell
        {
            get
            {
                return _phoneCell;
            }
            
            set
            {
                _phoneCell = value;
            }
        }


        /// <summary>
        /// Student's Day Phone Number
        /// </summary>
        public string PhoneDay
        {
            get
            {
                return _phoneDay;
            }
            
            set
            {
                _phoneDay = value;
            }
        }



        /// <summary>
        /// Student's Evening Phone Number
        /// </summary>
        public string PhoneEvening
        {
            get
            {
                return _phoneEvening;
            }
            
            set
            {
                _phoneEvening = value;
            }
        }


        /// <summary>
        /// Student's CGPA
        /// </summary>
        public decimal GPA
        {
            get
            {
                return _gpa;
            }
            
            set
            {
                if (value > 4.0m || value < 0)
                {
                    throw new Exception("GPA must be between 0.0 to 4.0");
                }
                
                else
                {
                    _gpa = value;
                }
                
            }
        }


        //// <summary>
        /// E-mail Address Validation code
        /// </summary>
        /*public static bool isValidEmail(string inputEmail)
        {
            string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
                    @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
                    @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";

            Regex re = new Regex(strRegex);

            if (re.IsMatch(inputEmail))
            {
                return (true);
            }

            else
            {
                return (false);
            }
        }*/

        public bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return true;
            }
            catch
            {
                return false;
            }
        }



        /// <summary>
        /// Student's E-mail Address with validating the entered format
        /// </summary>
        public string Email
        {
            get
            {
                return _email;
            }
            
            set
            {
                /* First check if the e-mail address is in a valid format
                 * If the return value is true, set the input
                 */
                if (IsValidEmail(_email) == true)
                {
                    _email = value;
                }
            }
        }


        /// <summary>
        /// Student's estimated Graduation Date
        /// </summary>
        public DateTime GraduationDate
        {
            get
            {
                return _graduationDate;
            }
            
            set
            {
                _graduationDate = value;
            }
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

        /// <summary>
        /// Default Constructor
        /// </summary>
        public Student()
        {
            _studentID = string.Empty;
            _last4Ssn = string.Empty;
            _firstName = string.Empty;
            _lastName = string.Empty;
            _address = string.Empty;
            _city = string.Empty;
            _state = string.Empty;
            _zipcode = string.Empty;
            _phoneCell = string.Empty;
            _phoneDay = string.Empty;
            _phoneEvening = string.Empty;
            
            // Setting default values for the GPA and Graduation Date
            _gpa = 0m;
            _graduationDate = DateTime.MinValue;
        }


        /// <summary>
        /// Parameterised Constructor
        /// </summary>
        public Student(string studentId, string last4Ssn, string firstname, string lastname, string address, string city, string state, string zipcode,
            string cellphone, string dayphone, string eveningPhone, decimal gpa, string email, DateTime graduationDate, InternshipRequirement intRequirement,
            Employer employer)
        {
            this.StudentID = studentId;
            this.Last4SSN = last4Ssn;
            this.FirstName = firstname;
            this.LastName = lastname;
            this.Address = address;
            this.City = city;
            this.State = state;
            this.Zipcode = zipcode;
            this.PhoneCell = cellphone;
            this.PhoneDay = dayphone;
            this.PhoneEvening = eveningPhone;
            this.GPA = gpa;
            this.Email = email;
            this.GraduationDate = graduationDate;
            this.InternshipRequirement = intRequirement;
            this.Employer = employer;
        }

        #endregion





        #region Public Data Access Methods

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
                dataService.Insert(_studentID, _last4Ssn, _firstName, _lastName, _phoneCell, _phoneDay, _phoneEvening,
                    _email, _address, _city, _state, _zipcode, _gpa, _graduationDate);

                // Insert the Internship Requirement Child Object with the transaction 
                _internshipRequirement.Insert(_studentID, transaction);


                // Insert employer if exists 
                if (_employer != null)
                {
                    _employer.Insert(_studentID, transaction);
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

        //private connection = null;
        //private SqlCommand command;
        private bool insertReady;


        /*
         * <summary>
         * Search and display student records from Database
         * </summary>
         * <param name="stdID"></param>
         * <returns></returns>
         */

        public void Fetch(String stdID)
        {
            SqlConnection connection = null;
            // SqlCommand command = null;
            //SqlDataReader reader = null;
            String errorMessage = String.Empty;

            // Start Error Trapping
            try
            {
                // Open connection
                connection.Open();

                // Create SQL string
                String strSQL = "SELECT * FROM Students WHERE StudentId=@StudentID";

                // Create Command object, pass query (SQL string) & Add paramters
                SqlCommand command = null;
                command.Parameters.Clear();
                command.CommandText = strSQL;
                command.Parameters.AddWithValue("@StudentID", SqlDbType.VarChar).Value = stdID;

                // Create DATAREADER object & Execute Query
                SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleRow);

                // Test to make sure there is data in the DataReader Object
                if (reader.HasRows)
                {
                    // Call Read() Method to point and read the first record
                    reader.Read();

                    // Left side is my program variable and right side is the SQL DB variable
                    // Extract data from a row & Populate Yourself
                    this.StudentID = reader["StudentId"].ToString();
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
                    this.GraduationDate = (DateTime)reader["GraduationDate"];
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
                    // No data returned, Record not found!
                    throw new System.Exception("Load Error! Record Not Found!");
                    // errorMessage = "Student does not exist.";
            }

            // Trap for Exceptions
            catch (SqlException ex)
            {
                throw new System.Exception(ex.Message);
            }

            catch (Exception ex)
            {
                throw new System.Exception(ex.Message);
            }

            finally
            {
                // Terminate connection
                connection.Close();
                connection.Dispose();
                connection = null;
            }
        }


        /*
         * <summary>
         * Updates student records in the Database
         * </summary>
         * <returns></returns>
         */

        public void Update()
        {
            // Create Connection
            SqlConnection connection = null;

            // String errorMessage = String.Empty;

            // Start Error Trapping
            try
            {
                // Open connection
                connection.Open();

                // Create Query, Command Object & initialize
                String sqlString = "UPDATE Students SET " +
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

                SqlCommand command = null;
                command.CommandText = sqlString;

                int result = command.ExecuteNonQuery();
                // String generalMessage = String.Empty;

                // Add Parameter to Collection & Set Value
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

                command.Parameters.AddWithValue("@StudentID", SqlDbType.VarChar).Value = this.StudentID;

                /*if (result > 0)
                {
                    generalMessage = "Student details successfully updated.";
                }*/

                if (result <= 0)
                {
                    throw new System.ApplicationException("UPDATE Query Failed!");
                    // generalMessage = "Student details successfully updated.";
                }

                // Terminate Command Object
                command.Dispose();
                command = null;
            }

            // Trap for BO, App & General Exceptions
            catch (SqlException ex)
            {
                throw new System.Exception(ex.Message);
            }

            catch (Exception ex)
            {
                throw new System.Exception(ex.Message);
            }

            finally
            {
                // Terminate connection
                connection.Close();
                connection.Dispose();
                connection = null;
            }
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
            // Create Connection
            SqlConnection connection = null;
            
            // SqlCommand command = null;
            // String errorMessage = String.Empty;

            // Start Error Trapping
            try
            {
                connection.Open();

                // Create Command, Query, assing query, and assign connection
                String strSQL = "DELETE FROM Students WHERE StudentID=@StudentID";

                // Create Command object and pass string
                SqlCommand command = null;
                command.CommandText = strSQL;

                // Add Parameter to Collection & Set Value
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@StudentID", SqlDbType.VarChar).Value = stdID;

                // Execute Non-Row Query Test result and throw exception if failed
                int result = command.ExecuteNonQuery();
                // String generalMessage = String.Empty;

                /*if (result > 0)
                {
                    generalMessage = "Student successfully deleted.";
                    //ClearFields();
                }*/

                if (result <= 0)
                {
                    throw new System.ApplicationException("DELETE Query Failed!");
                    //generalMessage = "Student successfully deleted.";
                    //ClearFields();
                }

                // Terminate Command Object
                command.Dispose();
                command = null;
            }

            // Trap for BO, App & General Exceptions
            catch (SqlException ex)
            {
                throw new System.Exception(ex.Message);
            }

            catch (Exception ex)
            {
                throw new System.Exception(ex.Message);
            }

            finally
            {
                // Terminate connection
                connection.Close();
                connection.Dispose();
                connection = null;
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
                
                this.StudentID = GetString(row, "StudentId");
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
                this.InternshipRequirement = InternshipRequirement.Load(_studentID);

                //Load Employer Object 
                this.Employer = Employer.Load(_studentID);
                return true;
            } catch (Exception)
            {
                
                throw;
            }
        }

        #endregion
    }
}
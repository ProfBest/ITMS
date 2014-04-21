using System;
using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer.Scholar
{
    public class StudentDataService : DataServiceBase
    {
        /// <summary>
        /// Creates a new StudentDataService Object
        /// Use if a pervious transaction does not exist.
        /// </summary>
        public StudentDataService() {}

        /// <summary>
        /// Creates a new StudentDataService Object
        /// Use if a previous transaction exists
        /// </summary>
        /// <param name="txn">Sql Transaction Object</param>
        public StudentDataService(IDbTransaction txn) : base(txn) { }


        /// <summary>
        /// Contains a Dataset of All student data from the dataset
        /// </summary>
        /// <returns>A DataSet Object which contains a table of all Student records</returns>
        public DataSet GetAll()
        {
            return ExecuteDataSet("[dbo].[usp_Student_GetAll]", null);
        }


        /// <summary>
        /// Retrieve a Dataset which contains a single student information from the database based on the student Employer ID  
        /// </summary>
        /// <param name="studentId">Student EmployerID </param>
        /// <returns></returns>
        public DataSet Load( string studentId)
        {
            return ExecuteDataSet("[dbo].[usp_Student_Get]", 
                CreateParameter("@StudentId", SqlDbType.NVarChar, studentId));
        }


        /// <summary>
        /// Inserts a new student record into database.
        /// </summary>
        /// <param name="studentId"></param>
        /// <param name="ssn"></param>
        /// <param name="firstname"></param>
        /// <param name="lastname"></param>
        /// <param name="cellphone"></param>
        /// <param name="dayphone"></param>
        /// <param name="eveningPhone"></param>
        /// <param name="email"></param>
        /// <param name="address"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="zipcode"></param>
        /// <param name="gpa"></param>
        /// <param name="graduationDate"></param>
        public void Insert(string studentId, string ssn, string firstname, string lastname, string cellphone, string dayphone, string eveningPhone,
            string email, string address, string city, string state, string zipcode, decimal gpa, DateTime graduationDate)
        {
            try 
            {
                SqlCommand cmd;
                
                ExecuteNonQuery(out cmd, "[dbo].[usp_Student_Insert]",
                    CreateParameter("@StudentID", SqlDbType.NVarChar, studentId),
                    CreateParameter("@Firstname", SqlDbType.NVarChar, firstname),
                    CreateParameter("@LastName", SqlDbType.NVarChar, lastname),
                    CreateParameter("@SSN", SqlDbType.NVarChar, ssn),
                    CreateParameter("@GraduationDate", SqlDbType.DateTime, graduationDate.Date),
                    CreateParameter("@GPA", SqlDbType.Decimal, gpa),
                    CreateParameter("@Street", SqlDbType.NVarChar, address),
                    CreateParameter("@City", SqlDbType.NVarChar, city),
                    CreateParameter("@State", SqlDbType.NVarChar, state),
                    CreateParameter("@Zip", SqlDbType.NVarChar, zipcode),
                    CreateParameter("@PhoneDay", SqlDbType.NVarChar, dayphone),
                    CreateParameter("@PhoneEve", SqlDbType.NVarChar, eveningPhone),
                    CreateParameter("@PhoneCell", SqlDbType.NVarChar, cellphone),
                    CreateParameter("@Email", SqlDbType.NVarChar, email)
                    );

                cmd.Dispose();
            }

            catch
            {
                throw;
            }
        }

        public void Update(string studentId, string ssn, string firstname, string lastname, string cellphone, string dayphone, string eveningPhone,
            string email, string address, string city, string state, string zipcode, decimal gpa, DateTime graduationDate)
        {
            try
            {
                SqlCommand cmd;
                
                ExecuteNonQuery(out cmd, "[dbo].[usp_Student_Update]",
                    CreateParameter("@StudentID", SqlDbType.NVarChar, studentId),
                    CreateParameter("@SSN", SqlDbType.NVarChar, ssn),
                    CreateParameter("@Firstname", SqlDbType.NVarChar, firstname),
                    CreateParameter("@LastName", SqlDbType.NVarChar, lastname),
                    CreateParameter("@PhoneCell", SqlDbType.NVarChar, cellphone),
                    CreateParameter("@PhoneDay", SqlDbType.NVarChar, dayphone),
                    CreateParameter("@PhoneEve", SqlDbType.NVarChar, eveningPhone),
                    CreateParameter("@Email", SqlDbType.NVarChar, email),
                    CreateParameter("@Address", SqlDbType.NVarChar, address),
                    CreateParameter("@City", SqlDbType.NVarChar, city),
                    CreateParameter("@State", SqlDbType.NVarChar, state),
                    CreateParameter("@Zip", SqlDbType.NVarChar, zipcode),
                    CreateParameter("@GPA", SqlDbType.Decimal, gpa),
                    CreateParameter("@GraduationDate", SqlDbType.DateTime, graduationDate.Date)
                    );

                cmd.Dispose();
            }

            catch
            {
                throw;
            }
        }


       


        

       

      



        

    }
}

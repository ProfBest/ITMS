using System;
using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer.Scholar
{
    public class EmployerDataService : DataServiceBase
    {
        public EmployerDataService() {}

        public EmployerDataService(IDbTransaction txn) : base(txn) { }

        /// <summary>
        /// Insert an Employer record into Database
        /// </summary>
        /// <param name="employerId"></param>
        /// <param name="studentId"></param>
        /// <param name="companyName"></param>
        /// <param name="phoneNumber"></param>
        /// <param name="department"></param>
        /// <param name="supervisorName"></param>
        /// <param name="title"></param>
        /// <param name="duties"></param>
        /// <param name="address"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="zipcode"></param>
        public void Insert(ref int employerId, string studentId, string companyName,
                    string phoneNumber, string department, string supervisorName,
                    string title, string duties, string address, string city, string state, string zipcode)
        {
            try
            {
                SqlCommand cmd;

                ExecuteNonQuery(out cmd, "[dbo].[usp_Employer_Insert]",
                    CreateParameter("@EmployerId", SqlDbType.Int, ParameterDirection.Output),
                    CreateParameter("@StudentId", SqlDbType.NVarChar, studentId),
                    CreateParameter("@CompanyName", SqlDbType.NVarChar, companyName),
                    CreateParameter("@Dept", SqlDbType.NVarChar, department),
                    CreateParameter("@Supervisor", SqlDbType.NVarChar, supervisorName),
                    CreateParameter("@Title", SqlDbType.NVarChar, title),
                    CreateParameter("@Duties", SqlDbType.NVarChar, duties),
                    CreateParameter("@Street", SqlDbType.NVarChar, address),
                    CreateParameter("@City", SqlDbType.NVarChar, city),
                    CreateParameter("@State", SqlDbType.NVarChar, state),
                    CreateParameter("@Zip", SqlDbType.NVarChar, zipcode),
                    CreateParameter("@Phone", SqlDbType.NVarChar, phoneNumber)

                 );

                //Assign employer Id with the generated auto number from database 
                employerId = (int)cmd.Parameters["@EmployerId"].Value;

               
                cmd.Dispose();

            }
            catch
            {
                throw;
            }
        }


        /// <summary>
        /// Load a Employer record from the Database, based on student EmployerID
        /// </summary>
        /// <param name="studentId"></param>
        /// <returns></returns>
        public DataSet Load(string studentId)
        {
            try
            {
                return ExecuteDataSet("[dbo].[usp_Employer_Get]",
                     CreateParameter("@StudentId",SqlDbType.NVarChar, studentId));
            }
            catch
            {

                throw;
            }
        }


        //public void Update(int employerId, string studentId, string companyName,
        //            string phoneNumber, string department, string supervisorName,
        //            string title, string description, string address, string city, string state, string zipcode) 
        //{
        //    throw new NotImplementedException();
        //}

        //public void Delete(int employerId)
        //{
        //    throw new NotImplementedException();
        //}
    }
}

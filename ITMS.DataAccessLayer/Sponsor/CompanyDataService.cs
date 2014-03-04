using System;
using System.Data;
using System.Data.SqlClient;

namespace ITMS.DataAccessLayer.Sponsor
{
    public  class CompanyDataService : DataServiceBase
    {
        public CompanyDataService() {}

        public CompanyDataService(IDbTransaction txn) : base(txn) { }

        /// <summary>
        /// Loads all company records from the database
        /// </summary>
        /// <returns></returns>
        public DataSet GetAll()
        {
            try
            {
                return ExecuteDataSet("[dbo].[usp_Company_GetAll]", null);
            }
            catch (Exception)
            {

                throw;
            }
        }


        /// <summary>
        /// Load a company record from the database
        /// </summary>
        /// <param name="companyId"></param>
        /// <returns></returns>
        public DataSet Load(int companyId) 
        {
            try 
            {
                return ExecuteDataSet("[dbo].[usp_Company_Get]", 
                    CreateParameter("@CompanyId", SqlDbType.Int, companyId));
            } catch  {
                
                throw;
            }
        }


        /// <summary>
        /// Inserts a new company record into database 
        /// </summary>
        /// <param name="companyId"></param>
        /// <param name="companyName"></param>
        /// <param name="phoneNumber"></param>
        /// <param name="street"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="zipcode"></param>
        public void Insert(ref int companyId, string companyName, string phoneNumber, string street, string city,
           string state, string zipcode)
        {
            try
            {
                SqlCommand cmd;
                ExecuteNonQuery(out cmd, "[dbo].[usp_Company_Insert]",
                    CreateParameter("@CompanyID", SqlDbType.Int, ParameterDirection.Output),
                    CreateParameter("@CompanyName", SqlDbType.NVarChar, companyName),
                    CreateParameter("@Street", SqlDbType.NVarChar, street),
                    CreateParameter("@City", SqlDbType.NVarChar, city),
                    CreateParameter("@State", SqlDbType.NVarChar, state),
                    CreateParameter("@ZipCode", SqlDbType.NVarChar, zipcode),
                    CreateParameter("@Phone", SqlDbType.NVarChar, phoneNumber));
                companyId = (int)cmd.Parameters["@CompanyID"].Value;
                cmd.Dispose();

            }
            catch (Exception)
            {

                throw;
            }
        }
        
        public void Update(int companyId, string companyName, string phoneNumber, string street, string city,
           string state, string zipcode)
        {
           throw new NotImplementedException();
        }

        public void Delete(int companyId)
        {
            throw new NotImplementedException();
        }

    }
}

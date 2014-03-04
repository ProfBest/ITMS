using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace ITMS.DataAccessLayer.Sponsor
{
    public class ManagerDataService : DataServiceBase
    {

        public ManagerDataService() {}

        public ManagerDataService(IDbTransaction txn) : base(txn) { }

        public DataSet GetAll()
        {
            try {
                return ExecuteDataSet("usp_Manager_GetAll", null);
            } catch (Exception) {
                
                throw;
            }
            
        }

        /// <summary>
        /// Returns a List of Managers for a Company 
        /// </summary>
        /// <param name="companyId">CompanyId</param>
        /// <returns>A DataSet with a list of Managers</returns>
        public DataSet GetAll(int companyId)
        {
            return ExecuteDataSet("usp_Manager_GetAll",
            CreateParameter("@CompanyId", SqlDbType.Int, companyId));
        }


        /// <summary>
        /// Retrives a manager object from database based on ManagerId, primary key
        /// </summary>
        /// <param name="managerId"></param>
        /// <returns></returns>
        public DataSet Load(int managerId) 
        {
            try 
            {
                return ExecuteDataSet("usp_Manager_Get", 
                    CreateParameter("@ManagerId", SqlDbType.Int, managerId));
            } catch (Exception) {
                
                throw;
            }
        }


        /// <summary>
        /// Insert and new Manager into Database
        /// </summary>
        /// <param name="managerId"></param>
        /// <param name="companyId"></param>
        /// <param name="firstname"></param>
        /// <param name="lastname"></param>
        /// <param name="email"></param>
        /// <param name="phoneCell"></param>
        /// <param name="phoneWork"></param>
        /// <param name="address"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="zipcode"></param>
        /// <param name="title"></param>
        /// <param name="organization"></param>
        /// <param name="department"></param>
        public void Insert(ref int managerId, int companyId,string firstname, string lastname, string email, string phoneCell, string phoneWork, string address,
            string city, string state, string zipcode, string title,  string organization, string department) 
        {
            try 
            {
                SqlCommand cmd;
                ExecuteNonQuery(out cmd, "[dbo].[usp_Manager_Insert]",
                    CreateParameter("@ManagerID", SqlDbType.Int, ParameterDirection.Output),
                    CreateParameter("@CompanyID", SqlDbType.Int, companyId),
                    CreateParameter("@Firstname", SqlDbType.NVarChar, firstname),
                    CreateParameter("@LastName", SqlDbType.NVarChar, lastname),
                    CreateParameter("@Street", SqlDbType.NVarChar, address),
                    CreateParameter("@City", SqlDbType.NVarChar, city),
                    CreateParameter("@State", SqlDbType.NVarChar, state),
                    CreateParameter("@Zipcode", SqlDbType.NVarChar, zipcode),
                    CreateParameter("@Title", SqlDbType.NVarChar, title),
                    CreateParameter("@Department", SqlDbType.NVarChar, department),
                    CreateParameter("@Organization", SqlDbType.NVarChar, organization),
                    CreateParameter("@PhoneWork", SqlDbType.NVarChar, phoneWork),
                    CreateParameter("@PhoneCell", SqlDbType.NVarChar, phoneCell),
                    CreateParameter("@Email", SqlDbType.NVarChar, email));
                managerId = (int)cmd.Parameters["@ManagerId"].Value;
                cmd.Dispose();
            } catch (Exception) {
                
                throw;
            }
        }


     
    }
}

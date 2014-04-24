using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace ITMS.DataAccessLayer.Sponsor
{
    public class PositionDataService: DataServiceBase
    {
        public PositionDataService() { }

        public PositionDataService(IDbTransaction txn) : base(txn) { }


        /// <summary>
        /// Returns all Positions from the database
        /// </summary>
        /// <returns>DataSet with a list of Position </returns>
        public DataSet GetAll()
        {
            try
            {
                return ExecuteDataSet("[dbo].[usp_Position_GetAll]", null);
            }
            catch (Exception)
            {

                throw;
            }
        }
        
        
        /// <summary>
        /// Returns a List of Position from Database based on ManagerId foreign key
        /// </summary>
        /// <param name="managerId">Manager Id, Foreign Key </param>
        /// <returns>DataSet with a list of Position</returns>
        public DataSet GetAll(int managerId)
        {
            try
            {
                return ExecuteDataSet("[dbo].[usp_Position_GetAll]", 
                CreateParameter("@ManagerId",SqlDbType.Int, managerId));
            }
            catch (Exception)
            {

                throw;
            }
        }

        /// <summary>
        /// Retriees a position from database based on Position Primary Key
        /// </summary>
        /// <param name="positionId">Position Id, Primary Key </param>
        /// <returns>DataSet with 1 position</returns>
        public DataSet Load(int positionId)
        {
            try
            {
                return ExecuteDataSet("usp_Position_GetAll",
                        CreateParameter("@PositionId",SqlDbType.Int, positionId));
            }
            catch 
            {
                throw;
            }
        }

        /// <summary>
        /// Insert a new position into Database 
        /// </summary>
        /// <param name="positionid"></param>
        /// <param name="managerId"></param>
        /// <param name="title"></param>
        /// <param name="duties"></param>
        /// <param name="positionType"></param>
        /// <param name="skills"></param>
        /// <param name="workHours"></param>
        /// <param name="workDays"></param>
        public void Insert(ref int positionid, int managerId, string title, string duties,
            string positionType, string skills, decimal workHours, decimal workDays)
        {
            
            try
            {
                SqlCommand cmd;
                ExecuteNonQuery(out cmd, "[dbo].[usp_Position_Insert]",
                    CreateParameter("@PostionID", SqlDbType.Int, positionid, ParameterDirection.InputOutput),
                    CreateParameter("@ManagerID", SqlDbType.Int, managerId),
                    CreateParameter("@Title", SqlDbType.NVarChar, title),
                    CreateParameter("@Duties", SqlDbType.NVarChar, duties),
                    CreateParameter("@Type", SqlDbType.NVarChar, positionType),
                    CreateParameter("@Skills", SqlDbType.NVarChar, skills),
                    CreateParameter("@WorkHours", SqlDbType.Decimal, workHours),
                    CreateParameter("@WorkDays", SqlDbType.Decimal, workDays));
                positionid = (int)cmd.Parameters["@PostionID"].Value;
                cmd.Dispose();

            }
            catch(Exception ex)
            {
                throw ex ;
            }

          
        }

        public void Update(int positionid , string title, string description,
            string positionType, string skills, decimal workHours, decimal workDays) {
            throw new NotImplementedException();
        }

        public void Delete(int positionid, string title, string description,
            string positionType, string skills, decimal workHours, decimal workDays)
        {
            throw new NotImplementedException();
        }
    }
}

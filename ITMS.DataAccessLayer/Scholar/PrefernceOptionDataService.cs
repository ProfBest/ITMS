using System;
using System.Data;


namespace ITMS.DataAccessLayer.Scholar
{
    public class PrefernceOptionDataService : DataServiceBase
    {

        public PrefernceOptionDataService() {}

        public PrefernceOptionDataService(IDbTransaction txn) : base(txn) { }

        /// <summary>
        /// Retrieves all preference options from Database
        /// </summary>
        /// <returns>A DataSet Object which contains a table of Preference Options</returns>
        public DataSet GetAll()
        {
            try
            {
                return ExecuteDataSet("[dbo].[usp_Preference_GetAll]", null);
            } catch 
            {
                
                throw;
            }
           
        }


        /// <summary>
        /// Load a Preference Option based on the Preference ID 
        /// </summary>
        /// <param name="prefernceId">PrefernceOption Primary Key</param>
        /// <returns>A DataSet Object which contains a peferenceOption Record</returns>
        public DataSet Load(int prefernceId)
        {
            try
            {
                return ExecuteDataSet("usp_Preference_Get",
                CreateParameter("@PreferenceId", SqlDbType.Int, prefernceId));
            } catch
            {
                throw;
            }
           
        }

      
    }
}

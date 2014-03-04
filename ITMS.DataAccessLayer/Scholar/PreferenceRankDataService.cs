using System;
using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer.Scholar
{
    public class PreferenceRankDataService : DataServiceBase
    {
        public PreferenceRankDataService() {}

        public PreferenceRankDataService(IDbTransaction txn) : base(txn) { }

        /// <summary>
        /// Returns a List of  Preference Ranks based on the internship Requirement Id.
        /// </summary>
        /// <param name="requirementId">Internship Requirement ID </param>
        /// <returns>A Dataset containing a List Of Preference Ranks</returns>
        public DataSet GetAll(int requirementId) {
            try 
            {
                return ExecuteDataSet("[dbo].[usp_PreferenceRank_GetAll]", 
                    CreateParameter("@RequirementId", SqlDbType.Int, requirementId));
            } catch  {

                throw;
            }

        }

       
        /// <summary>
        /// Add a prefernce rank record to Database
        /// </summary>
        /// <param name="requirementId"></param>
        /// <param name="preferenceId"></param>
        /// <param name="rank"></param>
        public void Insert(int requirementId, int preferenceId, int rank)
        {
            try
            {
                SqlCommand cmd;
                ExecuteNonQuery(out cmd, "[dbo].[usp_PreferenceRank_Insert]",
                    CreateParameter("@ID", SqlDbType.Int, ParameterDirection.Output),
                    CreateParameter("@RequirementId", SqlDbType.Int, requirementId),
                    CreateParameter("@PreferenceId", SqlDbType.Int, preferenceId),
                    CreateParameter("@Rank", SqlDbType.Int, rank)
                );
                //In case we need the ID 
                //int id = (int) cmd.Parameters["@ID"].Value;
                cmd.Dispose();

            }
            catch
            {

                throw;
            }

        }

    


    }
}

using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer.Scholar
{
    public class ModuleTakenDataService : DataServiceBase
    {
        public ModuleTakenDataService() { }

        public ModuleTakenDataService(IDbTransaction txn) : base(txn) { }


        /// <summary>
        /// Load a list of Modules Taken records based on Internship requirement Id 
        /// </summary>
        /// <param name="requirementId"></param>
        /// <returns>A Dataset Object which contains a list of Modules Taken</returns>
        public DataSet GetAll(int requirementId) {
            try 
            {
                return ExecuteDataSet("[dbo].[usp_ModuleTaken_GetAll]",
                    CreateParameter("@RequirementID",SqlDbType.Int, requirementId));
            } catch {

                throw;
            }
        }

        //public DataSet Load(int requirementId) {
        //    try {
        //        return ExecuteDataSet("InternshipRequirement_Load", null);
        //    } catch {

        //        throw;
        //    }
        //}


        /// <summary>
        /// Insert a moduletaken record into Database
        /// </summary>
        /// <param name="moduleTakenId"></param>
        /// <param name="requirementId"></param>
        /// <param name="moduleId"></param>
        public void Insert(ref int moduleTakenId, int requirementId, int moduleId)
        {
            SqlCommand cmd;
            ExecuteNonQuery(out cmd, "[dbo].[usp_ModTaken_Insert]",
                CreateParameter("@ID", SqlDbType.Int, ParameterDirection.Output),
                CreateParameter("@ModuleId", SqlDbType.Int, moduleId),
                CreateParameter("@RequirementId", SqlDbType.NVarChar, requirementId)
            );
            moduleTakenId = (int)cmd.Parameters["@ID"].Value;
            cmd.Dispose();
        }


        public void Update(ref int moduleTakenId, int requirementId, int moduleId)
        {
            SqlCommand cmd;
            ExecuteNonQuery(out cmd, "[dbo].[usp_ModTaken_Insert]",
                CreateParameter("@ID", SqlDbType.Int, ParameterDirection.Output),
                CreateParameter("@ModuleId", SqlDbType.Int, moduleId),
                CreateParameter("@RequirementId", SqlDbType.NVarChar, requirementId)
            );

            moduleTakenId = (int)cmd.Parameters["@ID"].Value;
            cmd.Dispose();
        }
      
    }
}

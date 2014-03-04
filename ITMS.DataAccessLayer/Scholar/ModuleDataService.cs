using System;
using System.Data;


namespace ITMS.DataAccessLayer.Scholar
{
    public class ModuleDataService : DataServiceBase

    {  
        public ModuleDataService() {}

        public ModuleDataService(IDbTransaction txn) : base(txn) { }
    
        /// <summary>
        /// Loads all Modules from the Database
        /// </summary>
        /// <returns></returns>
        public DataSet GetAll() 
        {
            return ExecuteDataSet("usp_Module_GetAll", null);
        }

        //public DataSet GetAll(int requirementId) {
        //    return ExecuteDataSet("usp_Module_GetAll", 
        //        CreateParameter("@RequirementId",SqlDbType.Int, requirementId));
        //}


        /// <summary>
        /// Loads a Module from the Database 
        /// </summary>
        /// <param name="moduleId"></param>
        /// <returns></returns>
        public DataSet Load(int moduleId) 
        {
            return ExecuteDataSet("usp_Module_Get", 
            CreateParameter("@ModuleId", SqlDbType.Int, moduleId));
        }


        public void Insert(ref int moduleId, string description)
        {
            throw new NotImplementedException();
        }

        public void Update(int moduleId, string description)
        {
            throw new NotImplementedException();
        }

        public void Delete( int moduleId)
        {
            throw new NotImplementedException();
        }
    }
}

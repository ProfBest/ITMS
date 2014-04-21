using System.Data;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar
{
    public class ModuleTaken: BaseObject
    {
        private Module _module;
        private int _moduleTakenId;

        
        public int ModuleTakenId {
            get { return _moduleTakenId; }
            set { _moduleTakenId = value; }
        }

        public Module Module {
            get { return _module; }
            set { _module = value; }
        }

        public ModuleTaken() 
        {
            _moduleTakenId = -1;

        }

        public ModuleTaken(Module module): this() {
            _moduleTakenId = -1;
            this.Module = module;
        }

        //public void Insert(int requirementId) 
        //{
        //    ModuleTakenDataService dataService = new ModuleTakenDataService();
        //    dataService.Insert(ref _moduleTakenId,requirementId, _module.ModuleId);
        //}


        /// <summary>
        /// Inserts a record to Database
        /// </summary>
        /// <param name="requirementId"></param>
        /// <param name="tnx"></param>
        public void Insert(int requirementId, IDbTransaction tnx)
        {
            ModuleTakenDataService dataService = new ModuleTakenDataService(tnx);
            dataService.Insert(ref _moduleTakenId, requirementId, _module.ModuleId);
        }



        /// <summary>
        /// Updates a record to Database
        /// </summary>
        /// <param name="requirementId"></param>
        /// <param name="tnx"></param>
        public void Update(int requirementId, IDbTransaction tnx)
        {
            ModuleTakenDataService dataService = new ModuleTakenDataService(tnx);
            dataService.Update(ref _moduleTakenId, requirementId, _module.ModuleId);
        }

   

        #region Overrides of BaseObject

        public override bool MapData(DataRow row)
        {
            try
            {
                Module objModule = new Module();
                objModule.MapData(row);
                
                this.ModuleTakenId = GetInt(row, "ModuleTakenId");
                this.Module = objModule;
                return true;
            } catch 
            {
                
                throw;
            }
        }

        #endregion
    }
}

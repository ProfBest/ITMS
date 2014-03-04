using System.Data;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar
{
    public class Module: BaseObject
    {
        public int ModuleId { get; set; }
        public string Description { get; set; }
        
        public Module() {
            ModuleId = -1;
            Description = string.Empty;
        }

        public Module(int id, string description) {
            this.ModuleId = id;
            this.Description = description;
        }

        public static Module Load(int moduleId)
        {
            try
            {
                ModuleDataService dataService = new ModuleDataService();

                DataSet ds = dataService.Load(moduleId);

                Module objModule = new Module();

                return objModule.MapData(ds) ? objModule : null;
            } catch 
            {
                
                throw;
            }
        }

        #region Overrides of BaseObject

        public override bool MapData(DataRow row)
        {
            try
            {
                this.ModuleId = GetInt(row, "ModuleId");
                this.Description = GetString(row, "Description");
                return true;
            } catch 
            {
                throw;
            }
           
        }

        #endregion
    }
}

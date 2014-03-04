using System.Data;
using ITMS.DataAccessLayer.Scholar;



namespace ITMS.BusinessObjects.Scholar
{
    public class PreferenceOption :BaseObject
    {
        public int PreferenceId { get; set; }
        public string Description { get; set; }

        public PreferenceOption() {
            this.PreferenceId = -1;
            this.Description = string.Empty;
        }

        public PreferenceOption(int id, string  decription) {
            this.PreferenceId = id;
            this.Description = decription;

        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="prefernceId"></param>
        /// <returns></returns>
        public static PreferenceOption Load(int prefernceId)
        {
            try
            {
                PrefernceOptionDataService dataService = new PrefernceOptionDataService();
                DataSet ds = dataService.GetAll();

                PreferenceOption objPefernce = new PreferenceOption();
                return (objPefernce.MapData(ds)) ? objPefernce : null;

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
                this.PreferenceId = GetInt(row, "PrefernceId");
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

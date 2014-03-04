using System.Data;
using ITMS.BusinessObjects.Scholar;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Collection {
    public class PreferenceOptionCollection: BaseCollection<PreferenceOption>
    {
        /// <summary>
        /// Loads All the Prefernce Options from the Database 
        /// </summary>
        /// <returns>A Populated Collection of Prefernce Options</returns>
        public static PreferenceOptionCollection GetAll()
        {
            try
            {
                //Create the Data Service Object 
                PrefernceOptionDataService dataService = new PrefernceOptionDataService();

                // Excute to Get All Method which return a populated DataSet 
                DataSet ds = dataService.GetAll();
                //Create the Collection Object 
                PreferenceOptionCollection obj = new PreferenceOptionCollection();

                //Create Prefernce Objects from dataset and add the objects to the Collection 
                obj.MapObjects(ds);

                //Return the collection 
                return obj;
            } catch 
            {
                
                throw;
            }
        }


        
    }
}

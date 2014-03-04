using System.Data;
using ITMS.BusinessObjects.Scholar;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Collection
{
    public class ModuleCollection : BaseCollection<Module>
    {
        /// <summary>
        /// Loads all the Modules From the Database 
        /// </summary>
        /// <returns></returns>
        public static ModuleCollection GetAll()
        {
            try
            {
                // Craete a Module DataService Object 
                ModuleDataService dataService = new ModuleDataService();

                //Create a Module Collection Object
                ModuleCollection obj = new ModuleCollection();

                //Excute the DataService Get All Method which returns a populated Dataset
                DataSet ds = dataService.GetAll();

                //Create objects from data set and Add to collection 
                obj.MapObjects(ds);


                //Return Collection 
                return obj;
            } catch
            {
                throw;
            }

        }



    }
}
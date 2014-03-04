using System.Data;
using ITMS.BusinessObjects.Scholar;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Collection {
    public class ModuleTakenCollection :BaseCollection<ModuleTaken>
    {

        /// <summary>
        /// Loads Modules Taken from a student
        /// </summary>
        /// <param name="requirementId"> Internship Requiremnet Primary Key </param>
        /// <returns>Collection of Modules Taken </returns>
        public static ModuleTakenCollection Load(int requirementId)
        {
            try
            {
                //Create Data Service Object 
                ModuleTakenDataService dataService = new ModuleTakenDataService();


                //Excute the Get All method which returns a populated Data Set 
                DataSet ds = dataService.GetAll(requirementId);


                // Craete a Moule taken Collection Object 
                ModuleTakenCollection obj = new ModuleTakenCollection();

                //Create Objects from Data Set and add to collection 
                obj.MapObjects(ds);

                //Return the Collection 
                return obj;

            } catch 
            {
                
                throw;
            }
        }

    }
}

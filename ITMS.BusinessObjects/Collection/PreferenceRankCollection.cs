using System.Data;
using ITMS.BusinessObjects.Scholar;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Collection {
    public class PreferenceRankCollection : BaseCollection<PreferenceRank>
    {
        /// <summary>
        /// Load a Student Prefernce option Ranks from the Database
        /// </summary>
        /// <param name="requirementId"> Internship Requirement Id, primary key </param>
        /// <returns> A populated Collection of Prefernce Ranks </returns>
        public static PreferenceRankCollection Load(int requirementId)
        {
            try
            {
                //Create the Data Service Object 
                PreferenceRankDataService dataService = new PreferenceRankDataService();

                //Excute the Get All method 
                DataSet ds = dataService.GetAll(requirementId);

                //Craete the Prefernce Rank Collection Object 
                PreferenceRankCollection obj = new PreferenceRankCollection();

                // Create Preference Rank Objects from the Data Set and Add to Collection 
                obj.MapObjects(ds);

                //return the Collection 
                return obj;

            } catch 
            {
                
                throw;
            }
        }

        
    }
}

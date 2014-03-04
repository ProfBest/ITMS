using System.Data;
using ITMS.BusinessObjects.Sponsor;
using ITMS.DataAccessLayer.Sponsor;


namespace ITMS.BusinessObjects.Collection {
    
    public class PositionCollection:BaseCollection<Position>
    {
        /// <summary>
        /// Load All internship Positions from the Database 
        /// </summary>
        /// <returns> A populated List of Internship Positions</returns>
        public static PositionCollection GetAll()
        {
            try 
            {
                //Create the Data Service Object 
                PositionDataService dataService = new PositionDataService();

                //Excute the dataservice get all method which returns a populated dataset 
                DataSet ds = dataService.GetAll();

                // Create the collection object 
                PositionCollection obj = new PositionCollection();

                //Create Objects from the Data Set and Add them to the collection 
                obj.MapObjects(ds);

                //Return the collection 
                return obj;

            } catch 
             {

                throw;
            } 
          
        }

        /// <summary>
        /// Loads all the Internship position for a Manager 
        /// </summary>
        /// <param name="managerId"> The manager Primary Key </param>
        /// <returns></returns>
        public static PositionCollection Load(int managerId)
         {
            try 
            {
                //Create the Data Service Object 
                PositionDataService dataService = new PositionDataService();

                //Excute the dataservice get all method with the manager id as parameter 
                DataSet ds = dataService.GetAll(managerId);

                // Create the collection object 
                PositionCollection obj = new PositionCollection();

                //Create Objects from the Data Set and Add them to the collection 
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

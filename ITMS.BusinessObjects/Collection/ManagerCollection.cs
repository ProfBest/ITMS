using System.Data;
using ITMS.BusinessObjects.Sponsor;
using ITMS.DataAccessLayer.Sponsor;


namespace ITMS.BusinessObjects.Collection {
    
    public class ManagerCollection :BaseCollection<Manager>
    {

        /// <summary>
        /// Loads All Company Managers from the Database 
        /// </summary>
        /// <returns></returns>
        public static ManagerCollection GetAll()
        {
            try
            {
                //Create a Manager Data Service Object 
                ManagerDataService dataService = new ManagerDataService();


                //Excuet the Get All Method to get the Dataset 
                DataSet ds = dataService.GetAll();


                // Create a manager Collection Objects 
                ManagerCollection obj = new ManagerCollection();


                //Reads the Dataset and Manager Objects to collection
                obj.MapObjects(ds);

                //Return Collection 
                return obj;

               
            } catch 
            {
                throw;
            }
        }


        /// <summary>
        /// Loads All the Managers for one company
        /// </summary>
        /// <param name="companyId">Company Primary key </param>
        /// <returns></returns>
        public static ManagerCollection Load(int companyId)
        {
            try
            {
                //Create a Manager Data Service Object 
                ManagerDataService dataService = new ManagerDataService();

                //Excuet the Get All Method to get the Dataset with the company Id as a Parameter
                DataSet ds = dataService.GetAll(companyId);


                //Create a  manager Collection Object 
                ManagerCollection obj = new ManagerCollection();


                //Reads the Dataset and Manager Objects to collection
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

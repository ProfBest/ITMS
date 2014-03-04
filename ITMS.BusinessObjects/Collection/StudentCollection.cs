using System.Data;
using ITMS.BusinessObjects.Scholar;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Collection {
    public class StudentCollection : BaseCollection<Student>
    {
        /// <summary>
        /// Loads all Students From the Database 
        /// </summary>
        /// <returns></returns>
        public static StudentCollection GetAll()
        {
            try
            {
                //Create a Student  Data Service Object 
                StudentDataService dataService = new StudentDataService();

                // Call the GETAll() method which returns a populated DataSet 
                DataSet ds = dataService.GetAll();
                StudentCollection obj = new StudentCollection();

                //Create Student Objects from DataSet and add the objects to the collection 
                obj.MapObjects(ds);

                // Return the populated collection 
                return obj;

            } catch 
            {
                throw;
            }
        }
    }
}

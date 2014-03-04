using System.Data;
using ITMS.BusinessObjects.Sponsor;
using ITMS.DataAccessLayer.Sponsor;


namespace ITMS.BusinessObjects.Collection {
    public class CompanyCollection :BaseCollection<Company>
    {
        /// <summary>
        /// Loads a the Company Objects from the Database
        /// </summary>
        /// <returns></returns>
        public static CompanyCollection GetAll()
        {
            try
            {

                //Create a company data Service Object 
                CompanyDataService dataService = new CompanyDataService();


                // Excute the get All Method which returns a populated DataSet
                DataSet ds = dataService.GetAll();

                //Create A company Collection object 
                CompanyCollection obj = new CompanyCollection();

                //Add Objects from the Data Set to collections 
                obj.MapObjects(ds);

                return obj;
               

            } catch 
            {
                
                throw;
            }
        }

        /// <summary>
        /// Insert The Company to Database and adds company to collection
        /// </summary>
        /// <param name="company"></param>
        public new void Add(Company company) 
        {
            //Insert the company record to Database 
            company.Insert();

            //Add Company Object to Collection
            base.Add(company);
        }
    }


}

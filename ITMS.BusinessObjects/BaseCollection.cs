using System.Collections.Generic;
using System.Data;


namespace ITMS.BusinessObjects {
    public abstract class BaseCollection<T> :List<T> where T: BaseObject ,new()
    {


        /// <summary>
        /// Reads the first table in DataSet Object 
        /// </summary>
        /// <param name="ds">DataSet </param>
        /// <returns></returns>
        public bool MapObjects(DataSet ds) {
            if (ds != null && ds.Tables.Count > 0)
            {
                // Get the first Datatable 
                DataTable dt = ds.Tables[0];

                //Call Overload Function to Read the Data Rows and create Objects 
                bool result = MapObjects(dt);
                
                
                return result;
            } else {
                return false;
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////
        /// <summary>
        /// Creates Objects from each row in the Datatable 
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        ////////////////////////////////////////////////////////////////////////////////////////////
        public bool MapObjects(DataTable dt) {
            Clear();
            for (int i = 0; i < dt.Rows.Count; i++) {
                T obj = new T();
                obj.MapData(dt.Rows[i]);
                this.Add(obj);
            }
            return true;
        }    
    }
}

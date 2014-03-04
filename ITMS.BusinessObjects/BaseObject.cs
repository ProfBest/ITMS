using System;
using System.Data;


namespace ITMS.BusinessObjects {
    public abstract class BaseObject 
    {
        /// <summary>
        /// Reads the Data Set and get the First table and Data Row 
        /// </summary>
        /// <param name="ds"></param>
        /// <returns></returns>
        public virtual bool MapData(DataSet ds)
        {
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                return MapData(ds.Tables[0].Rows[0]);
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Populates the Object with the Data from the first Datarow in the Data Table 
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public virtual bool MapData(DataTable dt)
        {
            if (dt != null && dt.Rows.Count > 0)
            {
                return MapData(dt.Rows[0]);
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Must Overide Functions for inherited Objects 
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        public abstract  bool MapData(DataRow row);
           

        #region Get Functions

        /// <summary>
        /// Converts and Column in the Data Row to int
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>Integer</returns>
        protected static int GetInt(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? Convert.ToInt32(row[columnName]) :0;
        }

        /// <summary>
        /// Converts and Column in the Data Row to Date time
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>Datetime </returns>
        protected static DateTime GetDateTime(DataRow row, string columnName)
        {            
            return (row[columnName] != DBNull.Value) ? Convert.ToDateTime(row[columnName]) : DateTime.MinValue;
        }

        /// <summary>
        /// Converts and Column in the Data Row to Decimal
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>Decimal </returns>
        protected static Decimal GetDecimal(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? Convert.ToDecimal(row[columnName]) : 0m;
        }

        /// <summary>
        /// Converts and Column in the Data Row to Boolean 
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>bool </returns>
        protected static bool GetBool(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? Convert.ToBoolean(row[columnName]) : false;
        }

        /// <summary>
        /// Converts and Column in the Data Row to String 
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>String </returns>
        protected static string GetString(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? Convert.ToString(row[columnName]) :string.Empty;
        }


        /// <summary>
        /// Converts and Column in the Data Row to double  
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>double </returns>
        protected static double GetDouble(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? Convert.ToDouble(row[columnName]) : 0;
        }

        /// <summary>
        /// Converts and Column in the Data Row to float  
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>float </returns>
        protected static float GetFloat(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? Convert.ToSingle(row[columnName]) : 0;
        }

        /// <summary>
        /// Converts and Column in the Data Row to Guid  
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>Guid </returns>
        protected static Guid GetGuid(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? (Guid)(row[columnName]) : Guid.Empty;;
        }

        /// <summary>
        /// Converts and Column in the Data Row to long  
        /// </summary>
        /// <param name="row">Data Row Object </param>
        /// <param name="columnName"> Column Name </param>
        /// <returns>long </returns>
        protected static long GetLong(DataRow row, string columnName)
        {
            return (row[columnName] != DBNull.Value) ? (long)(row[columnName]) : 0;
        }

            #endregion
        }
    }


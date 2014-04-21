using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer
{

    ////////////////////////////////////////////////////////////////////////////
    /// <summary>
    ///   Defines common DataService routines for transaction management, 
    ///   stored procedure execution, parameter creation, and null value 
    ///   checking
    /// </summary>	
    ////////////////////////////////////////////////////////////////////////////
    public class DataServiceBase
    {

        #region Private Fields 
        /// <summary>
        /// True if service owns the transaction   
        /// </summary>
        private bool _isOwner = false;   
     
        /// <summary>
        /// Reference to the current transaction
        /// </summary>
        private SqlTransaction _txn;     
       
        #endregion 
      

        #region Public Properties 

        /// <summary>
        /// Gets or Set the Current Transaction 
        /// </summary>
        public IDbTransaction Txn
        {
            get { return (IDbTransaction)_txn; }
            set { _txn = (SqlTransaction)value; }
        }


        #endregion


        #region Constructors

        /// <summary>
        /// Default Constructor, use if the dataservice does not require a transaction
        /// </summary>
        public DataServiceBase() : this(null) { }


        /// <summary>
        /// Paramitized constructor, use if a transction is required. 
        /// This will allow all the query to be process a single transaction
        /// </summary>
        /// <param name="txn"> Sql Transaction </param>
        public DataServiceBase(IDbTransaction txn)
        {
            // if the transction is null,  the transaction owner flag is set to true
            if (txn == null)
            {
                _isOwner = true;
            }
            else
            {
                _txn = (SqlTransaction)txn;
                _isOwner = false;
            }
        }

        #endregion 


        #region Connection and Transaction Methods


        /// <summary>
        /// Reads Database connection string from Configuration File
        /// </summary>
        /// <returns>Sql Connection string</returns>
        protected static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["ITMS"].ConnectionString;
        }


        /// <summary>
        /// Create a sql transaction in the database.
        ///  Transcation can be used to ensure a gruop of sql commands excutes together.
        /// </summary>
        /// <returns>Database transcation</returns>
        public static IDbTransaction BeginTransaction()
        {
            SqlConnection txnConnection =
                new SqlConnection(GetConnectionString());
            txnConnection.Open();
            return txnConnection.BeginTransaction();
        }

        #endregion 
        
        #region ExecuteDataReader
        protected DataTable ExecuteDataReader(string requirementID)
        {
            // Create new connection 
            SqlConnection cnx = null;


            try
            {

                using (cnx = new SqlConnection(GetConnectionString()))
                {

                    cnx.Open();
                    SqlCommand cmd = new SqlCommand("Res_Skills_GetByID", cnx);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", requirementID);

                    using (SqlDataReader datareader = cmd.ExecuteReader())
                    {

                        DataTable mydatatable = new DataTable();
                        mydatatable.Columns.Add("RF_ID");
                        while (datareader.Read())
                        {
                            DataRow myDataRow = mydatatable.NewRow();
                            myDataRow["RF_ID"] = datareader["RF_ID"];
                            mydatatable.Rows.Add(myDataRow);
                        }
                        return mydatatable;

                    }



                }


            }
            catch
            {
                throw;
            }
        }

        #endregion

        #region ExecuteResumeDataReader

        protected DataTable ExecuteResumeDataReader(string requirementID)
        {
            // Create new connection 
            SqlConnection cnx = null;


            try
            {

                using (cnx = new SqlConnection(GetConnectionString()))
                {

                    cnx.Open();
                    SqlCommand cmd = new SqlCommand("Res_ResumeContent_select", cnx);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", requirementID);

                    using (SqlDataReader datareader = cmd.ExecuteReader())
                    {

                        DataTable mydatatable = new DataTable();
                        mydatatable.Columns.Add("ResumeContent");
                        while (datareader.Read())
                        {
                            DataRow myDataRow = mydatatable.NewRow();
                            myDataRow["ResumeContent"] = datareader["ResumeContent"];
                            mydatatable.Rows.Add(myDataRow);
                        }
                        return mydatatable;

                    }



                }


            }
            catch
            {
                throw;
            }
        }

        #endregion

        #region ExecuteResumeDataReader

        protected DataTable ExecuteTranscriptDataReader(string requirementID)
        {
            // Create new connection 
            SqlConnection cnx = null;


            try
            {

                using (cnx = new SqlConnection(GetConnectionString()))
                {

                    cnx.Open();
                    SqlCommand cmd = new SqlCommand("Res_TranscriptContent_select", cnx);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", requirementID);

                    using (SqlDataReader datareader = cmd.ExecuteReader())
                    {

                        DataTable mydatatable = new DataTable();
                        mydatatable.Columns.Add("TranscriptContent");
                        while (datareader.Read())
                        {
                            DataRow myDataRow = mydatatable.NewRow();
                            myDataRow["TranscriptContent"] = datareader["TranscriptContent"];
                            mydatatable.Rows.Add(myDataRow);
                        }
                        return mydatatable;

                    }



                }


            }
            catch
            {
                throw;
            }
        }

        protected DataTable ExecuteOtherSkillDataReader(string requirementID)
        {
            // Create new connection 
            SqlConnection cnx = null;
            try
            {

                using (cnx = new SqlConnection(GetConnectionString()))
                {

                    cnx.Open();
                    SqlCommand cmd = new SqlCommand("[dbo].[Res_OtherSkillContent_select]", cnx);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", requirementID);

                    using (SqlDataReader datareader = cmd.ExecuteReader())
                    {

                        DataTable mydatatable = new DataTable();
                        mydatatable.Columns.Add("OtherSkillContent");
                        while (datareader.Read())
                        {
                            DataRow myDataRow = mydatatable.NewRow();
                            myDataRow["OtherSkillContent"] = datareader["OtherSkillContent"];
                            mydatatable.Rows.Add(myDataRow);
                        }
                        return mydatatable;

                    }



                }


            }
            catch
            {
                throw;
            }
        }

        #endregion


        #region  ExecuteDataSet Methods

        /// <summary>
        /// Exucutes a stored procedure, which returns data
        /// </summary>
        /// <param name="procName">Stored Procedure Namer</param>
        /// <param name="procParams">Procedure Parametere</param>
        /// <returns>DataSet</returns>
        protected DataSet ExecuteDataSet(string procName,
            params IDataParameter[] procParams)
        {
            SqlCommand cmd;
            return ExecuteDataSet(out cmd, procName, procParams);
        }

        /// <summary>
        /// Exucutes a stored procedure, which returns data
        /// </summary>
        /// <param name="cmd">Uninitialized Sql Command</param>
        /// <param name="procName">Stored Procedure Namer</param>
        /// <param name="procParams">Procedure Parametere</param>
        /// <returns>Dataset with the Table returned from Database</returns>
        protected DataSet ExecuteDataSet(out SqlCommand cmd, string procName,
            params IDataParameter[] procParams)
        {
            //Create connection pointer 
            SqlConnection cnx = null;

            // Create a DataSet to return data
            DataSet ds = new DataSet();

            // Create and Sql Adpater 
            SqlDataAdapter da = new SqlDataAdapter();
            
            
            cmd = null;

            try
            {
                //Setup command object
                cmd = new SqlCommand(procName);

                // Set Command type to stored Procedure 
                cmd.CommandType = CommandType.StoredProcedure;
                
                // Check if the command has parameters 
                if (procParams != null)
                {
                    // Add paramters to command 
                    for (int index = 0; index < procParams.Length; index++)
                    {
                        cmd.Parameters.Add(procParams[index]);
                    }
                }
                da.SelectCommand = (SqlCommand)cmd;

                //Determine the transaction owner and process accordingly
                if (_isOwner)
                {
                    // Create new connection 
                    cnx = new SqlConnection(GetConnectionString());

                    // Set command Connection 
                    cmd.Connection = cnx;

                    // Open Connection 
                    cnx.Open();
                }
                else
                {
                    // Use connection from transaction 
                    cmd.Connection = _txn.Connection;

                    // Set the command transaction 
                    cmd.Transaction = _txn;
                }

                //Fill the dataset
                da.Fill(ds);
            }
            catch
            {
                throw;
            }
            finally
            {
                
                if (da != null) da.Dispose();
                if (cmd != null) cmd.Dispose();
                if (_isOwner)
                {
                    cnx.Dispose(); //Implicitly calls cnx.Close()
                }
            }
            return ds;
        }
        #endregion 


        #region ExecuteNonQuery Methods
     
        /// <summary>
        /// Exucutes a stored Procedure with no return value 
        /// </summary>
        /// <param name="procName">Stored Procedurename </param>
        /// <param name="procParams">Stored Procedure Parameters</param>
        protected void ExecuteNonQuery(string procName,
            params IDataParameter[] procParams)
        {
            SqlCommand cmd;
            ExecuteNonQuery(out cmd, procName, procParams);
        }

        /// <summary>
        /// Exucutes a stored Procedure with no return value 
        /// </summary>
        /// <param name="cmd">Uninitialized Sql Command</param>
        /// <param name="procName">Stored Procedurename </param>
        /// <param name="procParams">Stored Procedure Parameters</param>
        protected void ExecuteNonQuery(out SqlCommand cmd, string procName,
            params IDataParameter[] procParams)
        {
            //Method variables
            SqlConnection cnx = null;
            cmd = null;  //Avoids "Use of unassigned variable" compiler error

            try
            {
                //Setup command object
                cmd = new SqlCommand(procName);

                // Set command Type
                cmd.CommandType = CommandType.StoredProcedure;

                //Check for Paramaters 
                if (procParams != null)
                {
                    // Add Parameters
                    foreach (IDataParameter t in procParams)
                    {
                        cmd.Parameters.Add(t);
                    }
                }

                //Determine the transaction owner and process accordingly
                if (_isOwner)
                {
                    //Create Sql Connection 
                    cnx = new SqlConnection(GetConnectionString());

                    // Assign Connection to Command 

                    cmd.Connection = cnx;
                    // Open Sql Connection 
                    cnx.Open();
                }
                else
                {
                    //Assign Connection from transaction 
                    cmd.Connection = _txn.Connection;

                    // Set command transaction 
                    cmd.Transaction = _txn;
                }

                //Execute the command
                cmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                if (_isOwner)
                {
                    cnx.Dispose(); //Implicitly calls cnx.Close()
                }
                if (cmd != null) cmd.Dispose();
            }
        }

        #endregion

        #region Create Parameter Methods

        /// <summary>
        /// Create an Sql Parameter Object
        /// </summary>
        /// <param name="paramName">Parameter Name </param>
        /// <param name="paramType"> Parameter Type</param>
        /// <param name="paramValue">Parameter Value </param>
        /// <returns>Populated Sql Parameter Object </returns>
        protected SqlParameter CreateParameter(string paramName,
            SqlDbType paramType, object paramValue)
        {
            SqlParameter param = new SqlParameter(paramName, paramType);

            if (paramType == SqlDbType.Bit)
            {
                // if parameter is true set value = 1, else 0 for false
                param.Value = ((bool)paramValue ) ? 1 : 0;
            } else 
            {
                //if paramValue is not equal to null set the value
                param.Value =  (paramValue != null) ? paramValue : DBNull.Value;
            }
            
            return param;
        }

        /// <summary>
        /// Create an Sql Parameter Object
        /// </summary>
        /// <param name="paramName">Parameter Name </param>
        /// <param name="paramType"> Parameter Type</param>
        /// /// <param name="direction">Parameter Direction</param>
        /// <returns>Populated Sql Parameter Object </returns>
        protected SqlParameter CreateParameter(string paramName, SqlDbType paramType, ParameterDirection direction)
        {
            //Excute overload function 
            SqlParameter returnVal = CreateParameter(paramName, paramType, DBNull.Value);
            
            //Assign the Direction 
            returnVal.Direction = direction;
            return returnVal;
        }


        /// <summary>
        /// Create an Sql Parameter Object
        /// </summary>
        /// <param name="paramName">Parameter Name </param>
        /// <param name="paramType"> Parameter Type</param>
        ///  /// <param name="paramValue">Parameter Value </param>
        /// /// <param name="direction">Parameter Direction</param>
        /// <returns>Populated Sql Parameter Object </returns>
        protected SqlParameter CreateParameter(string paramName, SqlDbType paramType, object paramValue, ParameterDirection direction)
        {

            SqlParameter returnVal = CreateParameter(paramName, paramType, paramValue);
            returnVal.Direction = direction;
            return returnVal;
        }

        #endregion 
    } //class 

} //namespace
﻿using System;
using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer.Scholar
{
    /// <summary>
    /// Inherits from the Dataservice base class, Handles FileUpload Persistence
    /// </summary>
    public class FileDataService : DataServiceBase
    {
        public FileDataService() {}


        public FileDataService(IDbTransaction txn) : base(txn) { }


        /// <summary>
        /// Loads a FileUpload record from the Database
        /// </summary>
        /// <param name="requirementId"></param>
        /// <returns></returns>
        public DataSet Load(int requirementId) {
            try
            {
                return ExecuteDataSet("[dbo].[usp_ResumeTranscript_Get]", 
                CreateParameter("@RequirementId", SqlDbType.Int, requirementId));
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// Insert a File Upload record into Database
        /// </summary>
        /// <param name="fileId"></param>
        /// <param name="requirementId"></param>
        /// <param name="transcript"></param>
        /// <param name="resume"></param>
        public void Insert(ref int fileId, int requirementId, string transcript, string resume) {
            try 
            {
                SqlCommand cmd;
                ExecuteNonQuery(out cmd, "[dbo].[usp_ResumeTranscript_Insert]",
                    CreateParameter("@ID", SqlDbType.Int, ParameterDirection.Output),
                     CreateParameter("@RequirementID", SqlDbType.Int, requirementId),
                    CreateParameter("@Resume", SqlDbType.NVarChar, resume),
                    CreateParameter("@Transcript", SqlDbType.NVarChar, transcript));
                fileId = (int)cmd.Parameters["@ID"].Value;
                cmd.Dispose();

            } catch  {
                
                throw;
            }
        }

       
    }
}
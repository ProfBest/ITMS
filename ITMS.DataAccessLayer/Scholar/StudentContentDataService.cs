using System;
using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer.Scholar
{
    /// <summary>
    /// Inherits from the Dataservice base class, Handles FileUpload Persistence
    /// </summary>
    public class StudentContentDataService : DataServiceBase
    {
        public StudentContentDataService() { }


        public StudentContentDataService(IDbTransaction txn) : base(txn) { }


        /// <summary>
        /// Loads a FileUpload record from the Database
        /// </summary>
        /// <param name="requirementId"></param>
        /// <returns></returns>
        public DataSet Load(int requirementId)
        {
            try
            {
                return ExecuteDataSet("[dbo].[usp_ResumeTranscript_Get]",
                CreateParameter("@RequirementId", SqlDbType.VarChar, requirementId));
            }
            catch
            {
                throw;
            }
        }
        public DataTable LoadSkillReport(string requirementId)
        {
            try
            {
                DataTable datatreader = null;
                datatreader = ExecuteDataReader(requirementId);
                return datatreader;
            }
            catch
            {
                throw;
            }
        }

        public DataTable LoadResumeContent(string requirementId)
        {
            try
            {
                DataTable datatreader = null;
                datatreader = ExecuteResumeDataReader(requirementId);
                return datatreader;
            }
            catch
            {
                throw;
            }
        }

        public DataTable LoadTranscriptContent(string requirementId)
        {
            try
            {
                DataTable datatreader = null;
                datatreader = ExecuteTranscriptDataReader(requirementId);
                return datatreader;
            }
            catch
            {
                throw;
            }
        }
        public DataTable LoadOtherSkillContent(string requirementId)
        {
            try
            {
                DataTable datatreader = null;
                datatreader = ExecuteOtherSkillDataReader(requirementId);
                return datatreader;
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
        public void Insert(ref int fileId, int requirementId, string transcript, string resume)
        {
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

            }
            catch
            {

                throw;
            }
        }

        public void SkillInsert(string StudentID, string SkillID)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_Reference_Insert]",
                    CreateParameter("@StudentID", SqlDbType.VarChar, StudentID),
                     CreateParameter("@RF_ID", SqlDbType.VarChar, SkillID));
            }
            catch
            {

                throw;
            }
        }

        public void ResumeContentInsert(string StudentID, string ResumeContentData)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_ResumeContent_insert]",
                    CreateParameter("@StudentID", SqlDbType.VarChar, StudentID),
                     CreateParameter("@ResumeContent", SqlDbType.VarChar, ResumeContentData));
            }
            catch
            {

                throw;
            }
        }
        public void TranscriptContentInsert(string StudentID, string TranscriptContentData)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_TranscriptContent_insert]",
                    CreateParameter("@StudentID", SqlDbType.VarChar, StudentID),
                     CreateParameter("@TranscriptContent", SqlDbType.VarChar, TranscriptContentData));
            }
            catch
            {

                throw;
            }
        }
        public void OtherSkillContentInsert(string StudentID, string OtherSkillContentData)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_OtherSkillContent_insert]",
                    CreateParameter("@StudentID", SqlDbType.VarChar, StudentID),
                     CreateParameter("@OtherSkillContent", SqlDbType.VarChar, OtherSkillContentData));
            }
            catch
            {

                throw;
            }
        }
        public void Delete_Res_reference(string StudentID)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_Reference_deletebyID]",
                    CreateParameter("@studentID", SqlDbType.VarChar, StudentID));
            }
            catch
            {

                throw;
            }
        }

        public void ResumeContentDelete(string StudentID)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_ResumeContent_delete]",
                    CreateParameter("@StudentID", SqlDbType.VarChar, StudentID));
            }
            catch
            {

                throw;
            }
        }

        public void TranscriptContentDelete(string StudentID)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_TranscriptContent_delete]",
                    CreateParameter("@StudentID", SqlDbType.VarChar, StudentID));
            }
            catch
            {

                throw;
            }
        }
        public void OtherSkillContentDelete(string StudentID)
        {
            try
            {
                ExecuteNonQuery("[dbo].[Res_OtherSkillContent_delete]",
                    CreateParameter("@StudentID", SqlDbType.VarChar, StudentID));
            }
            catch
            {

                throw;
            }
        }

    }
}

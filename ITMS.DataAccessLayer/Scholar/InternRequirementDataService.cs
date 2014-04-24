using System;
using System.Data;
using System.Data.SqlClient;


namespace ITMS.DataAccessLayer.Scholar
{
    public class InternshipRequirementDataService : DataServiceBase
    {
         public InternshipRequirementDataService() {}

         public InternshipRequirementDataService(IDbTransaction txn) : base(txn) { }


        /// <summary>
        /// Inserts an internship requirement record into database
        /// </summary>
        /// <param name="requirementId"></param>
        /// <param name="studentId"></param>
        /// <param name="internsipType"></param>
        /// <param name="driverLicense"></param>
        /// <param name="ownCar"></param>
        /// <param name="travelNJ"></param>
        /// <param name="travelWestchester"></param>
        /// <param name="residenseStatus"></param>
        /// <param name="limitation"></param>
        /// <param name="explanation"></param>
        /// <param name="semester"></param>
         public void Insert(ref int requirementId, string studentId, string internsipType, bool driverLicense,
             bool ownCar, bool travelNJ, bool travelWestchester,
             string residenseStatus, bool limitation, string explanation, string semester)
         {
             try
             {
                 SqlCommand cmd;
                 ExecuteNonQuery(out cmd, "[dbo].[usp_Requirement_Insert]",
                     CreateParameter("@RequirementId", SqlDbType.Int, ParameterDirection.Output),
                     CreateParameter("@StudentId", SqlDbType.NVarChar, studentId),
                     CreateParameter("@Semester", SqlDbType.NVarChar, semester),
                     CreateParameter("@CST", SqlDbType.NVarChar, internsipType),
                     CreateParameter("@License", SqlDbType.Bit, driverLicense),
                     CreateParameter("@OwnCar", SqlDbType.Bit, ownCar),
                     CreateParameter("@TravelNJ", SqlDbType.Bit, travelNJ),
                     CreateParameter("@TravelWestchester", SqlDbType.Bit, travelWestchester),
                     CreateParameter("@ResidentStatus", SqlDbType.NVarChar, residenseStatus),
                     CreateParameter("@Limit", SqlDbType.Bit, limitation),
                     CreateParameter("@LimitDescription", SqlDbType.NVarChar, explanation)
                 );


                 requirementId = (int)cmd.Parameters["@RequirementId"].Value;
                 cmd.Dispose();
             }
             catch (Exception)
             {

                 throw;
             }
         }


         /// <summary>
         /// Updates an internship requirement record into database
         /// </summary>
         /// <param name="requirementId"></param>
         /// <param name="studentId"></param>
         /// <param name="internsipType"></param>
         /// <param name="driverLicense"></param>
         /// <param name="ownCar"></param>
         /// <param name="travelNJ"></param>
         /// <param name="travelWestchester"></param>
         /// <param name="residenseStatus"></param>
         /// <param name="limitation"></param>
         /// <param name="explanation"></param>
         /// <param name="semester"></param>
         public void Update(ref int requirementId, string studentId, string internsipType, bool driverLicense, bool ownCar, bool travelNJ, bool travelWestchester,
             string residenseStatus, bool limitation, string explanation, string semester)
         {
             try
             {
                 SqlCommand cmd;
                 ExecuteNonQuery(out cmd, "[dbo].[usp_Requirement_Update]",
                     CreateParameter("@StudentId", SqlDbType.NVarChar, studentId),
                     CreateParameter("@Semester", SqlDbType.NVarChar, semester),
                     CreateParameter("@CST", SqlDbType.NVarChar, internsipType),
                     CreateParameter("@License", SqlDbType.Bit, driverLicense),
                     CreateParameter("@OwnCar", SqlDbType.Bit, ownCar),
                     CreateParameter("@TravelNJ", SqlDbType.Bit, travelNJ),
                     CreateParameter("@TravelWestchester", SqlDbType.Bit, travelWestchester),
                     CreateParameter("@ResidentStatus", SqlDbType.NVarChar, residenseStatus),
                     CreateParameter("@Limit", SqlDbType.Bit, limitation),
                     CreateParameter("@LimitDescription", SqlDbType.NVarChar, explanation),
                     CreateParameter("@RequirementId", SqlDbType.Int, ParameterDirection.Output)
                 );


                 requirementId = (int)cmd.Parameters["@RequirementId"].Value;
                 cmd.Dispose();
             }
             catch (Exception)
             {

                 throw;
             }
         }


        /// <summary>
        /// Loads an internsip requirement record from database based on the Student Id 
        /// </summary>
        /// <param name="studentId">Student Employer Id</param>
        /// <returns>A Dataset contain an internship requirement record</returns>
         public DataSet Load(string studentId)
         {
             try
             {
                 return ExecuteDataSet("usp_Requirement_Get", 
                    CreateParameter("@StudentId", SqlDbType.Int, studentId));
             }
             catch
             {

                 throw;
             }

         }
    }
}

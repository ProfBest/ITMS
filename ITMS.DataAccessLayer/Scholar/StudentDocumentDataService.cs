using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace ITMS.DataAccessLayer.Scholar
{
    public class StudentDocumentDataService : DataServiceBase
    {
        public StudentDocumentDataService() { }

        public StudentDocumentDataService(IDbTransaction txn) : base(txn) { }

        public void Save(int? documentmentId, string studentId, string fileName, string fileExt, byte[] file, int docTypeId)
        {
            try
            {
                SqlCommand cmd;

                ExecuteNonQuery(out cmd, "dbo.usp_StudentDocuments_InsertUpdate",
                    CreateParameter("@Student_id", SqlDbType.VarChar, studentId)
                    , CreateParameter("@Document_id", SqlDbType.Int, documentmentId)
                    , CreateParameter("@File_name", SqlDbType.NVarChar, fileName)
                    , CreateParameter("@File_ext", SqlDbType.NVarChar, fileExt)
                    , CreateParameter("@File", SqlDbType.Binary, file)
                    , CreateParameter("@DocTypeId", SqlDbType.Int, docTypeId)
                    );
            }
            catch (Exception e)
            {

                throw e;
            }
        }
    }
}

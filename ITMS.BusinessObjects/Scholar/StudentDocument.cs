using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ITMS.DataAccessLayer.Scholar;
using System.Data;

namespace ITMS.BusinessObjects.Scholar
{
    public class StudentDocument : BaseObject
    {
        public int? ID { get; set; }
        public string StudentID { get; set; }
        public string FileName { get; set; }
        public string FileExt { get; set; }
        public DocumentType docType { get; set; }
        public byte[] File { get; set; }

        public void Save()
        {
            var db = new StudentDocumentDataService();
            db.Save(this.ID, this.StudentID, this.FileName, this.FileExt, this.File, (int)docType);

            
        }

        public override bool MapData(DataRow row)
        {

            return true;
        }

    }
}

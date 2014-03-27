using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITMS.BusinessObjects.Collection;

namespace ITMS.Web {
    public partial class StudentSearch : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            grdVwStudentResults.DataSource = StudentCollection.Load()
                .OrderBy(x => x.LastName)
                .Select(x => new {
                    Name = x.LastName + ", " + x.FirstName,
                    GPA = x.GPA,
                    Email = x.Email,
                    CellPhone = x.PhoneCell,
                    Id = x.StudentID
                });
            grdVwStudentResults.DataBind();
        }
    }
}
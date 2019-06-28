using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;


namespace ELearning.Faculty
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        FacultyNewClass obj = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtDetails = new DataTable();
            dtDetails = obj.FetchQuery();
            if (dtDetails.Rows.Count > 0)
            {
                GvDocuments.DataSource = dtDetails;
                GvDocuments.DataBind();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        AdminNewClass obj = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = obj.Test();
            if(dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}
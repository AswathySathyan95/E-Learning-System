using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        AdminNewClass objadm = new AdminNewClass();   
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtquestions = new DataTable();
            dtquestions = objadm.FetchQuestions();
            if (dtquestions.Rows.Count > 0)
            {
                GridView1.DataSource = dtquestions;
                GridView1.DataBind();
            }
        }
    }
}
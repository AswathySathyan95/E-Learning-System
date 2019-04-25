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
    public partial class Add_Questions : System.Web.UI.Page
    {
        AdminClass objAdmnQ = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dtCategory = new DataTable();
                dtCategory = objAdmnQ.FetchCategory();
                if (dtCategory.Rows.Count > 0)
                {
                    DdlCategory.DataSource = dtCategory;
                    DdlCategory.DataTextField = "Category";
                    DdlCategory.DataValueField = "C_Id";
                    DdlCategory.DataBind();
                }
            }
        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
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
    public partial class Staff_Details : System.Web.UI.Page
    {
        AdminNewClass objadm = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindDocument()
        {
            objadm.Dept = ddlDept.SelectedItem.Text.ToString();
            objadm.Usertype = "Faculty";
            DataTable dtname = new DataTable();
            dtname = objadm.FacultyNameDetails();
            if (dtname.Rows.Count > 0)
            {
                GvDetails.DataSource = dtname;
                GvDetails.DataBind();
            }
        }
        protected void GvDetailsPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvDetails.PageIndex = e.NewPageIndex;
            BindDocument();
        }
        protected void GvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                Session["staffid"] = e.CommandArgument.ToString();
                Response.Redirect("Staff_Full_Detailsaspx.aspx");
            }
        }

        protected void ddlDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }
    }
}
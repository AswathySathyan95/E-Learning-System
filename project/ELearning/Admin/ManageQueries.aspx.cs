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
    public partial class ManageQueries : System.Web.UI.Page
    {
        AdminNewClass obj = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtsub = new DataTable();
            dtsub = obj.querysubject();
            if (dtsub.Rows.Count > 0)
            {
                DdlQuerySub.DataSource = dtsub;
                DdlQuerySub.DataTextField = "Subject";
                DdlQuerySub.DataValueField = "Subject";
                DdlQuerySub.DataBind();
            }
            DdlQuerySub.Items.Insert(0, "---Select---");
        }

        protected void DdlQuerySub_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }
        public void BindDocument()
        {
            obj.Subject = DdlQuerySub.SelectedItem.Text.ToString();
            DataTable dtquery = new DataTable();
            dtquery = obj.FetchQuery();
            if (dtquery.Rows.Count > 0)
            {
                GvQuery.DataSource = dtquery;
                GvQuery.DataBind();
            }
        }
        protected void GvQuery_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvQuery.PageIndex = e.NewPageIndex;
            BindDocument();
        }
        protected void GvQuery_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "viewreply")
            {
                Session["queryid"] = e.CommandArgument.ToString();
                Response.Redirect("View_Replies.aspx");
            }
            else if(e.CommandName== "Deletequery")
            {
                string id = e.CommandArgument.ToString();
                deletequery(id);
            }
        }
        public void deletequery(string id)
        {
            obj.Id = id;
            obj.DeleteQuery();
        }
       
    }
}
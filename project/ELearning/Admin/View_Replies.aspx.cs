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
    public partial class View_Replies : System.Web.UI.Page
    {
        AdminNewClass obj = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindDocument();
            }
        }
        protected void GvReply_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvReply.PageIndex = e.NewPageIndex;
            BindDocument();
        }
        public void BindDocument()
        {
            obj.Qryid = Session["queryid"].ToString();
            DataTable dtreply = new DataTable();
            dtreply = obj.FetchReply();
            if (dtreply.Rows.Count > 0)
            {
                GvReply.DataSource = dtreply;
                GvReply.DataBind();
            }
        }
        protected void GvReply_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Deletereply")
            {
                string id = e.CommandArgument.ToString();
                deletequery(id);
            }
        }
        public void deletequery(string id)
        {
            obj.Id = id;
            obj.DeleteReply();

        }
    }
}
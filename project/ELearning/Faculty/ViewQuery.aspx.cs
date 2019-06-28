using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using ELearning.Classes;

namespace ELearning.Faculty
{
    public partial class ViewQuery : System.Web.UI.Page
    {
        FacultyNewClass objfclty = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtsub = new DataTable();
                dtsub = objfclty.FetchSubject();
                if (dtsub.Rows.Count > 0)
                {
                    DdlQuerySub.DataSource = dtsub;
                    DdlQuerySub.DataTextField = "Subject";
                    DdlQuerySub.DataValueField = "Subject";
                    DdlQuerySub.DataBind();
                }
                DdlQuerySub.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }

        protected void DdlQuerySub_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }
        public void BindDocument()
        {
            objfclty.Subject = DdlQuerySub.SelectedItem.Text.ToString();
            DataTable dtquery = new DataTable();
            dtquery = objfclty.FetchCommonQuery();
            if (dtquery.Rows.Count > 0)
            {
                GvQuery.DataSource = dtquery;
                GvQuery.DataBind();
            }
            else
            {
                DataTable dt = new DataTable();
                GvQuery.DataSource = dt;
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
            if (e.CommandName == "viewquery")
            {
                Session["queryid"] = e.CommandArgument.ToString();
                Response.Redirect("Reply_Query.aspx");
            }
        }
    }
}
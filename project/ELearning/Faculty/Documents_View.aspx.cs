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
    public partial class Documents_View : System.Web.UI.Page
    {
        FacultyNewClass obj = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DdlDocument_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }

        private void BindDocument()
        {
            obj.Facultyid = Session["u_id"].ToString();
            obj.Doc_type = DdlDocument.SelectedItem.Text.ToString();
            DataTable dtDocument = new DataTable();
            dtDocument = obj.FetchDocuments();
            if (dtDocument.Rows.Count > 0)
            {
                GvDocument.DataSource = dtDocument;
                GvDocument.DataBind();
            }
            else
            {
                DataTable dt = new DataTable();
                GvDocument.DataSource = dt;
                GvDocument.DataBind();
            }
        }

        protected void GvDocument_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "downloadDoc")
            {
                string filename = e.CommandArgument.ToString();
                Response.Redirect(filename);
            }
            else if(e.CommandName== "DeleteDoc")
            {
                obj.Docid = e.CommandArgument.ToString();
                obj.DeleteDocument();
                BindDocument();
            }
        }

        protected void GvDocument_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvDocument.PageIndex = e.NewPageIndex;
            BindDocument();
        }

        protected void btn_Doubts_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doubts_Doc.aspx");
        }
    }
}
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
    public partial class Doubts_Doc : System.Web.UI.Page
    {
        FacultyNewClass obj = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dtSub = new DataTable();
                obj.Userid = Session["u_id"].ToString();
                dtSub = obj.FetchSubjectDoc();
                if (dtSub.Rows.Count > 0)
                {
                    ddlSubject.DataSource = dtSub;
                    ddlSubject.DataTextField = "Subject";
                    ddlSubject.DataValueField = "Subject";
                    ddlSubject.DataBind();
                }
                ddlSubject.Items.Insert(0, "---Select---");
            }
            
        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }

        private void BindDocument()
        {
            obj.Subject = ddlSubject.SelectedItem.Text.ToString();
            DataTable dtDetails = new DataTable();
            dtDetails = obj.FetchQuery();
            if (dtDetails.Rows.Count > 0)
            {
                GvDocuments.DataSource = dtDetails;
                GvDocuments.DataBind();
            }
            else
            {
                DataTable dt = new DataTable();
                GvDocuments.DataSource = dt;
                GvDocuments.DataBind();
            }
        }

        protected void GvDocuments_Rowcommand(object sender, GridViewCommandEventArgs e)
        {
           
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            var closelink = (Control)sender;
            GridViewRow row = (GridViewRow)closelink.NamingContainer;
            LinkButton btnn = (LinkButton)(Control)sender;
            string filename = btnn.CommandArgument.ToString();
            Response.Redirect(filename);
        }
        
        protected void btnView_Click(object sender, EventArgs e)
        {
            var closelink = (Control)sender;
            GridViewRow row = (GridViewRow)closelink.NamingContainer;
            LinkButton btn = (LinkButton)(Control)sender;
            Session["QueryId"] = btn.CommandArgument.ToString();
            Response.Redirect("View_DocDoubt.aspx");
        }

    }
}
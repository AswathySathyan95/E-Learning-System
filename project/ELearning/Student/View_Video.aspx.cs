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


namespace ELearning.Student
{
    public partial class View_Video : System.Web.UI.Page
    {
        StudentNewClass objstud = new StudentNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objstud.Doctype = "VideoTutorials";
                DataTable dtSubject = new DataTable();
                dtSubject = objstud.FetchSubject();
                if (dtSubject.Rows.Count > 0)
                {
                    DdlSubject.DataSource = dtSubject;
                    DdlSubject.DataTextField = "Subject";
                    DdlSubject.DataValueField = "Subject";
                    DdlSubject.DataBind();
                }
                DdlSubject.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }

        protected void DdlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            objstud.Subject = DdlSubject.SelectedItem.Text.ToString();
            objstud.Doctype = "VideoTutorials";
            DataTable dtTopic = new DataTable();
            dtTopic = objstud.FetchTopic();
            if (dtTopic.Rows.Count > 0)
            {
                DdlTopic.DataSource = dtTopic;
                DdlTopic.DataTextField = "Topic";
                DdlTopic.DataValueField = "Topic";
                DdlTopic.DataBind();
            }
            DdlTopic.Items.Insert(0, new ListItem("---Select---", "0"));
        }

        protected void DdlTopic_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }

        public void BindDocument()
        {
            objstud.Subject = DdlSubject.SelectedItem.Text.ToString();
            objstud.Topic = DdlTopic.SelectedItem.Text.ToString();
            objstud.Doctype = "VideoTutorials";
            DataTable dtDocument = new DataTable();
            dtDocument = objstud.FetchDocument();
            if (dtDocument.Rows.Count > 0)
            {
                GvNotes.DataSource = dtDocument;
                GvNotes.DataBind();
            }
            else
            {
                DataTable dt = new DataTable();
                GvNotes.DataSource = dt;
                GvNotes.DataBind();
            }
        }

        protected void GvNotes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvNotes.PageIndex = e.NewPageIndex;
            BindDocument();
        }

        protected void GvNotes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "downloadDoc")
            {
                string filename = e.CommandArgument.ToString();
                Response.Redirect(filename);
            }
            else if (e.CommandName == "AskDoubt")
            {
                Session["docid"] = e.CommandArgument.ToString();
                Session["type"] = "Video";
                Response.Redirect("Ask_Doubts.aspx");
            }
        }
    }
    
}
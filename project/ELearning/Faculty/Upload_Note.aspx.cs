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
    public partial class Upload_Note : System.Web.UI.Page
    {
        FacultyClass objFclty = new FacultyClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtDept = new DataTable();
                dtDept = objFclty.FetchDept();
                if (dtDept.Rows.Count > 0)
                {
                    ddlDepartment.DataSource = dtDept;
                    ddlDepartment.DataTextField = "Branch_Name";
                    ddlDepartment.DataValueField = "B_Id";
                    ddlDepartment.DataBind();
                }
            }
        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            objFclty.NDept = ddlDepartment.SelectedItem.Text.ToString();
            DataTable dtSubject = new DataTable();
            dtSubject = objFclty.FetchSubject();
            if (dtSubject.Rows.Count > 0)
            {
                ddlSubject.DataSource = dtSubject;
                ddlSubject.DataTextField = "Subject";
                ddlSubject.DataValueField = "Sub_Id";
                ddlSubject.DataBind();
            }
        }

        protected void btnNoteUpload_Click(object sender, EventArgs e)
        {
            //Setting document path
            string pname = ddlSubject.SelectedItem.Text.ToString() + "_" + Session["u_id"].ToString();
            string filename = Path.GetFileName(fuNotes.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".html" || ext.ToLower() == ".htm" || ext.ToLower() == ".pdf" || ext.ToLower() == ".xls" || ext.ToLower() == ".ppt" || ext.ToLower() == ".pptx" || ext.ToLower() == ".txt")
            {
                string src = Server.MapPath("~/Documents") + "/" + pname + ".DOC";
                fuNotes.PostedFile.SaveAs(src);
                string doc = "~/Documents/" + pname + ".DOC";
                ViewState["DocPath"] = doc;
                //Inserting values to database
                objFclty.Userid = Session["u_id"].ToString();
                objFclty.NSubject = ddlSubject.SelectedItem.Text.ToString();
                objFclty.NTopic = txtTopic.Text.ToString();
                objFclty.Notes = Convert.ToString(ViewState["DocPath"]);
                objFclty.UploadNotes();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Successfully uploaded the document...')</script>");
                txtTopic.Text = "";
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please select a document file...')</script>");
            }
        }
    }
}
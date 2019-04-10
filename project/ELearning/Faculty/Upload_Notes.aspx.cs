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
    public partial class Upload_Notes : System.Web.UI.Page
    {
        FacultyClass objFclty = new FacultyClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnNoteUpload_Click(object sender, EventArgs e)
        {
            //Setting document path
            string pname = txtSubject.Text.ToString() + "_" + Session["u_id"].ToString();
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
                objFclty.Nsubject = txtSubject.Text.ToString();
                objFclty.Ntopic = txtTopic.Text.ToString();
                objFclty.Notes = Convert.ToString(ViewState["DocPath"]);
                objFclty.UploadNotes();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Successfully uploaded the document...')</script>");
                txtSubject.Text = "";
                txtTopic.Text = "";
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please select a document file...')</script>");
            }
           
        }
    }
}
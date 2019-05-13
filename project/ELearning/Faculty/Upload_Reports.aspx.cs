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
    public partial class Upload_Reports : System.Web.UI.Page
    {
        FacultyClass objFctly = new FacultyClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dtDept = new DataTable();
                dtDept = objFctly.FetchDept();
                if(dtDept.Rows.Count>0)
                {
                    ddlDepartment.DataSource = dtDept;
                    ddlDepartment.DataTextField = "Branch_Name";
                    ddlDepartment.DataValueField = "B_Id";
                    ddlDepartment.DataBind();
                }
                ddlDepartment.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            objFctly.NDept = ddlDepartment.SelectedItem.Text.ToString();
            DataTable dtSubject = new DataTable();
            dtSubject = objFctly.FetchSubject();
            if (dtSubject.Rows.Count > 0)
            {
                ddlSubject.DataSource = dtSubject;
                ddlSubject.DataTextField = "Subject";
                ddlSubject.DataValueField = "Sub_Id";
                ddlSubject.DataBind();
            }
            ddlSubject.Items.Insert(0, new ListItem("---Select---", "0"));
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            //Setting document path
            string pname = ddlSubject.SelectedItem.Text.ToString().Substring(0, 5)+"_Report" + "_" + Session["u_id"].ToString();
            string filename = Path.GetFileName(fuReport.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".html" || ext.ToLower() == ".htm" || ext.ToLower() == ".pdf" || ext.ToLower() == ".xls" || ext.ToLower() == ".ppt" || ext.ToLower() == ".pptx" || ext.ToLower() == ".txt")
            {
                string src = Server.MapPath("~/Documents") + "/" + pname + ".DOC";
                fuReport.PostedFile.SaveAs(src);
                string doc = "~/Documents/" + pname + ".DOC";
                ViewState["DocPath"] = doc;
                //Inserting values to database
                objFctly.Userid = Session["u_id"].ToString();
                objFctly.RSubject = ddlSubject.SelectedItem.ToString();
                objFctly.RTopic = txtTopic.Text.ToString();
                objFctly.Reports = Convert.ToString(ViewState["DocPath"]);
                objFctly.RDescription = txtDescription.Text.ToString();
                objFctly.UploadReports();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Successfully uploaded the document...')</script>");
                txtTopic.Text = "";
                txtDescription.Text = "";
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please select a document file...')</script>");
            }
        }
    }
}
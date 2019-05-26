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
    public partial class Upload_Video : System.Web.UI.Page
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
                    DdlDepartment.DataSource = dtDept;
                    DdlDepartment.DataTextField = "Branch_Name";
                    DdlDepartment.DataValueField = "B_Id";
                    DdlDepartment.DataBind();
                }
                DdlDepartment.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            //Setting document path
            string pname = DdlSubject.SelectedItem.Text.ToString().Substring(0,5)+"_Video" + "_" + Session["u_id"].ToString();
            string filename = Path.GetFileName(FuVideo.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".mp4" || ext.ToLower() == ".wmv" || ext.ToLower() == ".flv" || ext.ToLower() == ".vob" || ext.ToLower() == ".dat" )
            {
                string src = Server.MapPath("~/Documents") + "/" + pname + ".mp4";
                FuVideo.PostedFile.SaveAs(src);
                string doc = "~/Documents/" + pname + ".mp4";
                ViewState["DocPath"] = doc;
                //Inserting values to database
                objFclty.Userid = Session["u_id"].ToString();
                objFclty.Vsubject = DdlSubject.SelectedItem.Text.ToString();
                objFclty.Vtopic = TxtTopic.Text.ToString();
                objFclty.Video = Convert.ToString(ViewState["DocPath"]);
                objFclty.VDesc = TxtDescptn.Text.ToString();
                objFclty.UploadVideo();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Successfully uploaded the document...')</script>");
                TxtTopic.Text = "";
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please select a Video file...')</script>");
            }
        }

        protected void DdlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            objFclty.NDept = DdlDepartment.SelectedValue.ToString();
            DataTable dtSubject = new DataTable();
            dtSubject = objFclty.FetchSubject();
            if (dtSubject.Rows.Count > 0)
            {
                DdlSubject.DataSource = dtSubject;
                DdlSubject.DataTextField = "Subject";
                DdlSubject.DataValueField = "Sub_Id";
                DdlSubject.DataBind();
            }
            DdlSubject.Items.Insert(0,"---Select---");
        }
    }
}
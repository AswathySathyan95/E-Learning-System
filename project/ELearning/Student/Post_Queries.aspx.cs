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
    public partial class Post_Queries : System.Web.UI.Page
    {
        StudentNewClass objstud = new StudentNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objstud.Userid = Session["u_id"].ToString();
                DataTable dtSubject = new DataTable();
                dtSubject = objstud.SubjectDetails();
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

        protected void BtnQuery_Click(object sender, EventArgs e)
        {
            objstud.Userid = Session["u_id"].ToString();
            objstud.Subject = DdlSubject.SelectedItem.ToString();
            objstud.Query = TxtQuestion.Text.ToString();
            objstud.Date = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
            objstud.QueryDoubtInsert();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your Query has been successfully saved!!!')</script>");
            TxtQuestion.Text = "";
            DdlSubject.ClearSelection();
        }
    }
}
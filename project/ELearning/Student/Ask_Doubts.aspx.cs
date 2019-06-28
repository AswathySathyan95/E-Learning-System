using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Student
{
    public partial class Ask_Doubts : System.Web.UI.Page
    {
        StudentNewClass obj = new StudentNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtDocId.Text = Session["docid"].ToString();
            obj.Doc_id = Session["docid"].ToString();
            DataTable dtSubject = new DataTable();
            dtSubject = obj.FetchDocSubject();
            if(dtSubject.Rows.Count>0)
            {
                TxtSubject.Text = dtSubject.Rows[0]["Subject"].ToString();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            obj.Userid = Session["u_id"].ToString();
            obj.Doc_id= Session["docid"].ToString();
            obj.Subject = TxtSubject.Text.ToString();
            obj.Query = TxtQstn.Text.ToString();
            obj.Date = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
            obj.QueryInsert();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your Query has been successfully saved!!!')</script>");
            if(Session["type"].ToString()=="Notes")
            {
                Response.Redirect("View_Notes.aspx");
            }
            else if (Session["type"].ToString() == "Reports")
            {
                Response.Redirect("View_Reports.aspx");
            }
            else if (Session["type"].ToString() == "Video")
            {
                Response.Redirect("View_Video.aspx");
            }
        }
    }
}
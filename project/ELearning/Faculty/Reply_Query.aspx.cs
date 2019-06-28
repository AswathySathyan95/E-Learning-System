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
    public partial class Reply_Query : System.Web.UI.Page
    {
        FacultyNewClass obj = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                obj.Queryid = Session["queryid"].ToString();
                DataTable dtquery = new DataTable();
                dtquery= obj.QueryDetails();
                if(dtquery.Rows.Count>0)
                {
                    LblQuery.Text = dtquery.Rows[0]["Query"].ToString();
                }
            }
           

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            obj.Queryid = Session["queryid"].ToString();
            obj.Ruserid = Session["u_id"].ToString();
            obj.Reply = TxtAnswer.Text.ToString();
            obj.Rdate = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
            obj.ReplyCommon();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your Reply has been successfully saved!!!')</script>");
            Response.Redirect("ViewQuery.aspx");
        }
    }
}
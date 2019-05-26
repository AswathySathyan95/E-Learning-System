using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;


namespace ELearning.mail
{
    public partial class MailMaster : System.Web.UI.MasterPage
    {
        MailClass objMail = new MailClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void link_loginout_Click(object sender, EventArgs e)
        {
            objMail.Userid = Session["u_id"].ToString();
            DataTable dtUType = new DataTable();
            dtUType = objMail.FetchUserType();
            if(dtUType.Rows.Count>0)
            {
                objMail.Usertype = dtUType.Rows[0]["User_Type"].ToString();
            }
            if (objMail.Usertype == "Faculty")
            {
                Response.Redirect("~/Faculty/FacultyHome.aspx");
            }
            else if (objMail.Usertype == "Student")
            {
                Response.Redirect("~/Student/StudentHome.aspx");
            }
            else if (objMail.Usertype == "Admin")
            {
                Response.Redirect("~/Admin/AdminHome.aspx");
            }
        }
    }
}
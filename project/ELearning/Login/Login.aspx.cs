using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Login
{
    public partial class Loginaspx : System.Web.UI.Page
    {
        LoginClass objLgn = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            objLgn.Username = TxtUsername.Text.ToString();
            objLgn.Password = TxtPassword.Text.ToString();
            DataTable dtLogin = new DataTable();
            dtLogin = objLgn.LoginDetails();
            if (dtLogin.Rows.Count > 0)
            {
                objLgn.User_id = dtLogin.Rows[0]["User_Id"].ToString();
                objLgn.User_type = dtLogin.Rows[0]["User_Type"].ToString();
                Session["u_id"] = objLgn.User_id;
                Session["u_type"] = objLgn.User_type;
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Incorrect Username or Password')</script>");
            }
            if (objLgn.User_type == "Faculty")
            {
                Response.Redirect("~/Faculty/FacultyHome.aspx");
            }
            else if (objLgn.User_type == "Student")
            {
                Response.Redirect("~/Student/StudentHome.aspx");
            }
            else if (objLgn.User_type == "Admin")
            {
                Response.Redirect("~/Admin/AdminHome.aspx");
            }
        }
    }
}
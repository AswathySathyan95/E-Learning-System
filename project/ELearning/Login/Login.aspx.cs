using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ELearning.Classes;

namespace ELearning.Login
{
    public partial class Login : System.Web.UI.Page
    {
        LoginClass objlgn = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            objlgn.Username = txtUsername.Text.ToString();
            objlgn.Password = txtPassword.Text.ToString();
            DataTable dtLogin = new DataTable();
            dtLogin = objlgn.LoginDetails();
            if(dtLogin.Rows.Count>0)
            {
                objlgn.User_id = dtLogin.Rows[0]["User_Id"].ToString();
                objlgn.User_type= dtLogin.Rows[0]["User_Type"].ToString();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Incorrect Username or Password')</script>");
            }
            if(objlgn.User_type=="Faculty")
            {
                Response.Redirect("Faculty_Home.aspx");
            }
            else if(objlgn.User_type=="Student")
            {
                Response.Redirect("Student_Home.aspx");
            }
        }
    }
}
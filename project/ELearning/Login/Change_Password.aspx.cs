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
    public partial class Change_Password : System.Web.UI.Page
    {
        LoginClass objLgn = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            objLgn.Cuser = Session["u_id"].ToString();
            objLgn.Cusertype = Session["u_type"].ToString();
            objLgn.Pswd = txtPassword.Text.ToString();
            objLgn.Newpswd = txtNewPswd.Text.ToString();
            objLgn.Cnewpswd = txtCNew_Pswd.Text.ToString();
            objLgn.ChangePassword();
            Response.Redirect("~/Login/Login.aspx");
        }
    }
}
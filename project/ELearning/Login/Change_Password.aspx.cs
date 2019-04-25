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

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objLgn.User_id = Session["u_id"].ToString();
            objLgn.User_type = Session["u_type"].ToString();
            objLgn.Cpassword = TxtCPswd.Text.ToString();
            objLgn.New_pswd = TxtNPswd.Text.ToString();
            objLgn.Cnew_pswd = TxtCNPswd.Text.ToString();
            objLgn.ChangePassword();
            Response.Redirect("~/Login/Login.aspx");
        }
    }
}
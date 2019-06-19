using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        AdminNewClass obj = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {

           /* DataTable dtName = new DataTable();
            obj.Userid = Session["u_id"].ToString();
            dtName = obj.FetchName();
            if(dtName.Rows.Count>0)
            {
                navbarDropdownMenuLink.Name = dtName.Rows[0]["Name"].ToString();
            }*/
            
            if (IsPostBack || !IsPostBack)
            {
                HttpCookie usercookie = Request.Cookies["user_cookies"];
                if (Session["u_id"] != null || usercookie != null)
                {
                    link_loginout.Text = "Log out";
                }
                else
                {
                    link_loginout.Text = "Log in";
                }
            }
        }
        protected void link_loginout_Click(object sender, EventArgs e)
        {
            if (link_loginout.Text == "Log out")
            {
                Response.Cookies["user_cookies"].Expires = DateTime.Now.AddYears(-1);
                Response.Cookies.Clear();
                Session.Clear();
                Response.Redirect("~/Login/Login.aspx");
            }
            else if (link_loginout.Text == "Log in")
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
}
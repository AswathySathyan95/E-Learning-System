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
    public partial class Reg_Home : System.Web.UI.Page
    {
        AdminClass objuserreg = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtnFaculty_Click(object sender, ImageClickEventArgs e)
        {
            Session["usertype"] = "Faculty";
            Response.Redirect("~/Admin/Registration.aspx");
        }

        protected void imgbtnStudent_Click(object sender, ImageClickEventArgs e)
        {
            Session["usertype"] = "Student";
            Response.Redirect("~/Admin/StudReg.aspx");
        }

        protected void imgbtnAdmin_Click(object sender, ImageClickEventArgs e)
        {
            Session["usertype"] = "Admin";
            Response.Redirect("~/Admin/Registration.aspx");
        }
    }
}
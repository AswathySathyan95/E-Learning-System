using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ELearning.Admin
{
    public partial class Reg_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibtnFacultyReg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Admin/Registration.aspx");
            Session["usertype"] = "Faculty";
        }

        protected void ibtnstudent_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Admin/Registration.aspx");
            Session["usertype"] = "Student";
        }
    }
}
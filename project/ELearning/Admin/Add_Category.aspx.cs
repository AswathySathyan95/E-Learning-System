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
    public partial class Add_Category : System.Web.UI.Page
    {
        AdminClass objAdmn = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objAdmn.Q_category = TxtCategory.Text.ToString();
            objAdmn.Sub_category = TxtSubCategory.Text.ToString();
            objAdmn.Cdate = System.DateTime.Now.ToShortDateString();
            objAdmn.Userid = Session["u_id"].ToString();
            objAdmn.CategoryDetails();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            //Response.Redirect("Add_Category.aspx");
            TxtCategory.Text = "";
            TxtSubCategory.Text = "";
        }
    }
}
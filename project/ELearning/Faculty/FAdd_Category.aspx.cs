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
    public partial class FAdd_Category : System.Web.UI.Page
    {
        FacultyClass objFctly = new FacultyClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objFctly.Q_category = TxtCategory.Text.ToString();
            objFctly.Sub_category = TxtSubCategory.Text.ToString();
            objFctly.Cdate = System.DateTime.Now.ToShortDateString();
            objFctly.Userid = Session["u_id"].ToString();
            objFctly.CategoryDetails();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            //Response.Redirect("Add_Category.aspx");
            TxtCategory.Text = "";
            TxtSubCategory.Text = "";
        }
    }
}
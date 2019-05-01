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
            if(!IsPostBack)
            {                
                DataTable dtCtgry = new DataTable();
                dtCtgry = objAdmn.FetchCategory();
                if (dtCtgry.Rows.Count > 0)
                {
                    DdlCategory.DataSource = dtCtgry;
                    DdlCategory.DataTextField = "Category";
                    DdlCategory.DataValueField = "C_Id";
                    DdlCategory.DataBind();
                }
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if(TxtCategoryAdd.Text=="")
            {
                objAdmn.Sb_category = DdlCategory.SelectedValue.ToString();
            }
            else
            {
                objAdmn.Sb_category = ViewState["cyid"].ToString();
            }
            objAdmn.Sub_category = TxtSubCategory.Text.ToString();
            objAdmn.Cdate = System.DateTime.Now.ToShortDateString();
            objAdmn.Userid = Session["u_id"].ToString();
            objAdmn.InsertSubCategory();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            //Response.Redirect("Add_Category.aspx");
            //TxtCategory.Text = "";
            TxtSubCategory.Text = "";
            TxtCategoryAdd.Text = "";
        }

        protected void BtnAddCategory_Click(object sender, EventArgs e)
        {
            TxtCategoryAdd.Visible = true;
        }

        protected void TxtCategoryAdd_TextChanged(object sender, EventArgs e)
        {            
            objAdmn.C_id=objAdmn.CategoryIdGenerate();
            ViewState["cyid"] = objAdmn.C_id;
            objAdmn.Q_category = TxtCategoryAdd.Text.ToString();
            objAdmn.CategoryDetails();
        }
    }
}
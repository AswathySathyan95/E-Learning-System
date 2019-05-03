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
            if (!IsPostBack)
            {
                DataTable dtCtgry = new DataTable();
                dtCtgry = objFctly.FetchCategory();
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
            if (TxtCategoryAdd.Text == "")
            {
                objFctly.Sb_category = DdlCategory.SelectedValue.ToString();
            }
            else
            {
                objFctly.Sb_category = ViewState["cyid"].ToString();
            }
            objFctly.Sub_category = TxtSubCategory.Text.ToString();
            objFctly.Cdate = System.DateTime.Now.ToShortDateString();
            objFctly.Userid = Session["u_id"].ToString();
            objFctly.InsertSubCategory();
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
            /*DataTable dtCtgry = new DataTable();
            dtCtgry = objAdmn.FetchCategory();
            if (dtCtgry.Rows.Count > 0)
            {
                DdlCategory.Items.Add("---Select---");
                for (int i = 0; i < dtCtgry.Rows.Count; i++)
                {
                    DdlCategory.Items.Add(dtCtgry.Rows[i]["Category"].ToString());
                }
            }*/
            objFctly.C_id = objFctly.CategoryIdGenerate();
            ViewState["cyid"] = objFctly.C_id;
            objFctly.Q_category = TxtCategoryAdd.Text.ToString();
            objFctly.CategoryDetails();
        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
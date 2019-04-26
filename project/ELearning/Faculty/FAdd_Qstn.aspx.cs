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
    public partial class FAdd_Qstn : System.Web.UI.Page
    {
        FacultyClass objFctly = new FacultyClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TxtQ_Id.Text = objFctly.GenerateQId();

                DataTable dtCategory = new DataTable();
                dtCategory = objFctly.FetchCategory();
                if (dtCategory.Rows.Count > 0)
                {
                    DdlCategory.DataSource = dtCategory;
                    DdlCategory.DataTextField = "Category";
                    DdlCategory.DataValueField = "Category";
                    DdlCategory.DataBind();
                }
            }


        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objFctly.Q_id = TxtQ_Id.Text.ToString();
            objFctly.Ctgy = DdlCategory.SelectedItem.ToString();
            objFctly.Sub_catgy = DdlSubcategory.SelectedValue.ToString();
            objFctly.Qustn = TxtQuestion.Text.ToString();
            objFctly.OptnA = TxtOptn1.Text.ToString();
            objFctly.OptnB = TxtOptn2.Text.ToString();
            objFctly.OptnC = TxtOptn3.Text.ToString();
            objFctly.OptnD = TxtOptn4.Text.ToString();
            objFctly.Answer = TxtCorrectAns.Text.ToString();
            objFctly.Ans_description = TxtDescription.Text.ToString();
            objFctly.Created_by = Session["u_id"].ToString();
            objFctly.Created_on = System.DateTime.Now.ToShortDateString();
            objFctly.InsertQuestions();

        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            objFctly.Ctgy = DdlCategory.SelectedItem.ToString();
            DataTable dtSubCategory = new DataTable();
            dtSubCategory = objFctly.FetchSubCategory();
            if (dtSubCategory.Rows.Count > 0)
            {
                DdlSubcategory.DataSource = dtSubCategory;
                DdlSubcategory.DataTextField = "Sub_Category";
                DdlSubcategory.DataValueField = "C_Id";
                DdlSubcategory.DataBind();
            }
        }
    }
}
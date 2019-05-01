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
    public partial class Add_Questions : System.Web.UI.Page
    {
        AdminClass objAdmnQ = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TxtQ_Id.Text = objAdmnQ.GenerateQId();

                DataTable dtCategory = new DataTable();
                dtCategory = objAdmnQ.FetchCategory();
                if (dtCategory.Rows.Count > 0)
                {
                    DdlCategory.DataSource = dtCategory;
                    DdlCategory.DataTextField = "Category";
                    DdlCategory.DataValueField = "C_Id";
                    DdlCategory.DataBind();
                }
            }
        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            objAdmnQ.Ctgy = DdlCategory.SelectedValue.ToString();
            DataTable dtSubCategory = new DataTable();
            dtSubCategory = objAdmnQ.FetchSubCategory();
            if (dtSubCategory.Rows.Count > 0)
            {
                DdlSubcategory.DataSource = dtSubCategory;
                DdlSubcategory.DataTextField = "Sub_Category";
                DdlSubcategory.DataValueField = "C_Id";
                DdlSubcategory.DataBind();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objAdmnQ.Q_id = TxtQ_Id.Text.ToString();
            objAdmnQ.Ctgy = DdlCategory.SelectedItem.ToString();
            objAdmnQ.Sub_catgy = DdlSubcategory.SelectedValue.ToString();
            objAdmnQ.Qustn = TxtQuestion.Text.ToString();
            objAdmnQ.OptnA = TxtOptn1.Text.ToString();
            objAdmnQ.OptnB = TxtOptn2.Text.ToString();
            objAdmnQ.OptnC = TxtOptn3.Text.ToString();
            objAdmnQ.OptnD = TxtOptn4.Text.ToString();
            objAdmnQ.Answer = TxtCorrectAns.Text.ToString();
            objAdmnQ.Ans_description = TxtDescription.Text.ToString();
            objAdmnQ.Created_by = Session["u_id"].ToString();
            objAdmnQ.Created_on = System.DateTime.Now.ToShortDateString();
            objAdmnQ.InsertQuestions();
        }
    }
}
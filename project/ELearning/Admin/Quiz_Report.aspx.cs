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
    public partial class Quiz_Report : System.Web.UI.Page
    {
        AdminNewClass obj = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obj.Userid = Session["u_id"].ToString();
                DataTable dtbranch = new DataTable();
                dtbranch = obj.BranchDetails();
                if (dtbranch.Rows.Count > 0)
                {
                    DdlBranch.DataSource = dtbranch;
                    DdlBranch.DataTextField = "Branch_Name";
                    DdlBranch.DataValueField = "B_Id";
                    DdlBranch.DataBind();
                }
                DdlBranch.Items.Insert(0, "---Select---");
            }
        }
        protected void GvQuizReport_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvQuizReport.PageIndex = e.NewPageIndex;
            BindData();
        }

        public void BindData()
        {
            obj.Branch = DdlBranch.SelectedItem.Text.ToString();
            obj.Semester = DdlSemster.SelectedItem.Text.ToString();
            DataTable dtQuiz = new DataTable();
            dtQuiz = obj.QuizReport();
            if (dtQuiz.Rows.Count > 0)
            {
                GvQuizReport.DataSource = dtQuiz;
                GvQuizReport.DataBind();
            }
        }

        protected void DdlSemster_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindData();
        }
    }
}
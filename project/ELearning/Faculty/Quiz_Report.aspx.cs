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
    public partial class Quiz_Report : System.Web.UI.Page
    {
        FacultyNewClass objFclty = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objFclty.Userid = Session["u_id"].ToString();
                objFclty.Dept = objFclty.Department();
                DataTable dtbranch = new DataTable();
                dtbranch = objFclty.BranchDetails();
                if (dtbranch.Rows.Count > 0)
                {
                    DdlBranch.DataSource = dtbranch;
                    DdlBranch.DataTextField = "Branch";
                    DdlBranch.DataValueField = "Branch";
                    DdlBranch.DataBind();
                }
                DdlBranch.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }

        protected void GvQuizReport_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GvQuizReport_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvQuizReport.PageIndex = e.NewPageIndex;
            BindData();
        }

        public void BindData()
        {
            objFclty.Branch = DdlBranch.SelectedItem.Text.ToString();
            objFclty.Semseter = DdlSemster.SelectedItem.Text.ToString();
            DataTable dtQuiz = new DataTable();
            dtQuiz = objFclty.QuizReport();
            if(dtQuiz.Rows.Count>0)
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
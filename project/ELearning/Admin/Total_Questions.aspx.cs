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
    public partial class Total_Questions : System.Web.UI.Page
    {
        AdminNewClass objadm = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dtCategory = new DataTable();
                dtCategory = objadm.FetchCategory();
                if (dtCategory.Rows.Count > 0)
                {
                    DdlCtgry.DataSource = dtCategory;
                    DdlCtgry.DataTextField = "SubCategory";
                    DdlCtgry.DataValueField = "SubCat_Id";
                    DdlCtgry.DataBind();
                }
                DdlCtgry.Items.Insert(0, new ListItem("---Select---"));
            }
        }
        public void BindDocument()
        {
            objadm.Ctgry = DdlCtgry.SelectedValue.ToString();
            DataTable dtquestions = new DataTable();
            dtquestions = objadm.FetchQuestions();
            if (dtquestions.Rows.Count > 0)
            {
                GvQuestions.DataSource = dtquestions;
                GvQuestions.DataBind();
            }
        }

      protected void DdlCtgry_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }
        protected void GvQuestions_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvQuestions.PageIndex = e.NewPageIndex;
            BindDocument();
        }

        protected void GvQuestions_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void deletequestion(string id)
        {
            objadm.Id = id;
            objadm.DeleteQuestion();
        }
        protected void GvQuestions_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "deleteQuestion")
            {
                deletequestion(Convert.ToString(e.CommandArgument));
            }
        }
    }
}
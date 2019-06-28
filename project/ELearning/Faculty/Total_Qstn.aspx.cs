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
    public partial class Total_Qstn : System.Web.UI.Page
    {
        FacultyNewClass obj = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtCategory = new DataTable();
                dtCategory = obj.FetchCategory();
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
            obj.Ctgry = DdlCtgry.SelectedValue.ToString();
            DataTable dtquestions = new DataTable();
            dtquestions = obj.FetchQuestions();
            if (dtquestions.Rows.Count > 0)
            {
                GvQuestions.DataSource = dtquestions;
                GvQuestions.DataBind();
            }
            else
            {
                DataTable dt = new DataTable();
                GvQuestions.DataSource = dt;
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
    }
}
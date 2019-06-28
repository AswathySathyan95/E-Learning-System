using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Student
{
    public partial class AllQuiz : System.Web.UI.Page
    {
        StudentClass objStud = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objStud.User_id = Session["u_id"].ToString();
            if (!IsPostBack)
            {
                DataTable dtcategy = new DataTable();
                dtcategy = objStud.getCategory();
                if (dtcategy.Rows.Count > 0)
                {
                    DdlCategory.DataSource = dtcategy;
                    DdlCategory.DataTextField = "SubCategory";
                    DdlCategory.DataValueField = "SubCat_Id";
                    DdlCategory.DataBind();
                }
                DdlCategory.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            objStud.Subid = DdlCategory.SelectedValue.ToString();
            DataTable dtQuizReport = new DataTable();
            dtQuizReport = objStud.getQuizReports();
            if(dtQuizReport.Rows.Count>0)
            {
                GvDetails.DataSource = dtQuizReport;
                GvDetails.DataBind();
            }
            else
            {
                DataTable dt = new DataTable();
                GvDetails.DataSource = dt;
                GvDetails.DataBind();
            }
        }
    }
}
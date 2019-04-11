using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ELearning.Classes;

namespace ELearning.Faculty
{
    public partial class Upload_Videos : System.Web.UI.Page
    {
        FacultyClass objFctly = new FacultyClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtDept = new DataTable();
                dtDept = objFctly.FetchDept();
                if (dtDept.Rows.Count > 0)
                {
                    ddlDepartment.DataSource = dtDept;
                    ddlDepartment.DataTextField = "Branch_Name";
                    ddlDepartment.DataValueField = "B_Id";
                    ddlDepartment.DataBind();
                }
            }
        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            objFctly.Dept = ddlDepartment.SelectedItem.Text.ToString();
            DataTable dtSubject = new DataTable();
            dtSubject = objFctly.FetchSubject();
            if (dtSubject.Rows.Count > 0)
            {
                ddlSubject.DataSource = dtSubject;
                ddlSubject.DataTextField = "Subject";
                ddlSubject.DataValueField = "Sub_Id";
                ddlSubject.DataBind();
            }
        }
    }
}
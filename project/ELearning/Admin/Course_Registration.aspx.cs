using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class Course_Registration : System.Web.UI.Page
    {
        AdminClass objAdmReg = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtDeptmnt = new DataTable();
                dtDeptmnt = objAdmReg.DepartmentDetails();
                if (dtDeptmnt.Rows.Count > 0)
                {
                    ddlDept.DataSource = dtDeptmnt;
                    ddlDept.DataTextField = "Department";
                    ddlDept.DataValueField = "Dept_Id";
                    ddlDept.DataBind();
                }
                ddlDept.Items.Insert(0, "---Select---");
                DataTable dtPrgm = new DataTable();
                dtPrgm = objAdmReg.ProgramDetails();
                if (dtPrgm.Rows.Count > 0)
                {
                    ddlProgram.DataSource = dtPrgm;
                    ddlProgram.DataTextField = "Program";
                    ddlProgram.DataValueField = "Prgm_Id";
                    ddlProgram.DataBind();
                }
                ddlProgram.Items.Insert(0, "---Select---");
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objAdmReg.Dptid =Convert.ToInt32(ddlDept.SelectedValue.ToString());
            objAdmReg.Prmid =Convert.ToInt32(ddlProgram.SelectedValue.ToString());
            objAdmReg.Course = TxtCourse.Text.ToString();
            objAdmReg.InsertCourse();
            TxtCourse.Text = "";
            ddlDept.ClearSelection();
            ddlProgram.ClearSelection();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Course Registration Has Been Successfully Completed.')</script>");
        }
    }
}
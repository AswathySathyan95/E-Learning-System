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
    public partial class Department_Details : System.Web.UI.Page
    {
        AdminNewClass obj = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            obj.Department = TxtDept.Text.ToString();
            obj.DepartmentDetails();
            TxtDept.Text = "";
            LblDept.Visible = false;
            Response.Write("<script LANGUAGE='JavaScript' >alert('Department Registration Has Been Successfully Completed.')</script>");
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            TxtDept.Text = "";
        }

        protected void TxtDept_TextChanged(object sender, EventArgs e)
        {
            obj.Department = TxtDept.Text.ToString();
            DataTable dtDept = new DataTable();
            dtDept = obj.CheckDepartment();
            if(dtDept.Rows.Count>0)
            {
                LblDept.Visible = true;
                LblDept.Text = "Department Already Exists";
            }
        }
    }
}
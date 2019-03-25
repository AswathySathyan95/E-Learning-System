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
    public partial class Reg_Qualification : System.Web.UI.Page
    {
        AdminClass objAdnReg = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usertype"].ToString() == "Faculty")
            {
                PanelExperience.Visible = true;
            }
            else if (Session["usertype"].ToString() == "Student")
            {
                PanelExperience.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objAdnReg.User_id = Session["userid"].ToString();
            objAdnReg.Username = Session["username"].ToString();
            objAdnReg.Password = Session["password"].ToString();
            objAdnReg.UpdateRegistration();
            Response.Write("Registration Has Been Successfully Completed.");
        }

        protected void txtC_pg_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddQual_Click(object sender, EventArgs e)
        {
            lbltest.Visible = false;
            txtCgpa.Visible = true;
            txtCollege.Visible = true;
            txtPercent.Visible = true;
            txtQual.Visible = true;
            txtSep.Visible = true;
            txtUniversity.Visible = true;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            objAdnReg.User_id = Session["userid"].ToString();
            objAdnReg.Qualification = txtQual.Text.ToString();
            objAdnReg.Sepcialization = txtSep.Text.ToString();
            objAdnReg.College = txtCollege.Text.ToString();
            objAdnReg.University = txtUniversity.Text.ToString();
            objAdnReg.Cgpa = Convert.ToDouble(txtCgpa.Text.ToString());
            objAdnReg.Percent = Convert.ToDouble(txtPercent.Text.ToString());
            objAdnReg.InsertQualification();
            DataTable dtQual = new DataTable();
            dtQual = objAdnReg.QualificationDetails();
            if(dtQual.Rows.Count>0)
            {
                gvQual.Visible = true;
                gvQual.DataSource = dtQual;
                gvQual.DataBind();
            }
            lbltest.Visible = true;
            lbltest.Text = "Click Here To Add More Qualification Details.";
            txtCgpa.Text = "";
            txtCollege.Text = "";
            txtPercent.Text = "";
            txtQual.Text = "";
            txtSep.Text = "";
            txtUniversity.Text = "";
            txtCgpa.Visible = false;
            txtCollege.Visible = false;
            txtPercent.Visible = false;
            txtQual.Visible = false;
            txtSep.Visible = false;
            txtUniversity.Visible = false;

        }

        protected void txtTo_TextChanged(object sender, EventArgs e)
        {
            DateTime from = Convert.ToDateTime(txtFrom.Text);
            DateTime to = Convert.ToDateTime(txtTo.Text);
            int years = to.Year - from.Year;
            int month = to.Month - from.Month;
            txtDuration.Text = ((years*12)+month) +" "+ "Months";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            objAdnReg.User_id = Session["userid"].ToString();
            objAdnReg.Organisation = txtOrg.Text.ToString();
            objAdnReg.Designation = txtDesg.Text.ToString();
            objAdnReg.From_date =Convert.ToDateTime(txtFrom.Text.ToString());
            objAdnReg.To_date = Convert.ToDateTime(txtTo.Text.ToString());
            objAdnReg.Duration = txtDuration.Text.ToString();
            objAdnReg.InsertExperience();
            DataTable dtExp = new DataTable();
            dtExp = objAdnReg.ExperienceDetails();
            if (dtExp.Rows.Count > 0)
            {
                gvExper.Visible = true;
                gvExper.DataSource = dtExp;
                gvExper.DataBind();
            }
            lblExperience.Visible = true;
            lblExperience.Text = "Click Here To Add More Details.";
            txtOrg.Text = "";
            txtDesg.Text = "";
            txtFrom.Text = "";
            txtTo.Text = "";
            txtDuration.Text = "";
            txtOrg.Visible = false;
            txtDesg.Visible = false;
            txtFrom.Visible = false;
            txtTo.Visible = false;
            txtDuration.Visible = false;
        }

        protected void btnExper_Click(object sender, EventArgs e)
        {
            lblExperience.Visible = false;
            txtOrg.Visible = true;
            txtDesg.Visible = true;
            txtFrom.Visible = true;
            txtTo.Visible = true;
            txtDuration.Visible = true;
        }
    }
}
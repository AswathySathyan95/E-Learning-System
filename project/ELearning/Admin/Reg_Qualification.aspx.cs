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
            if(Session["usertype"].ToString() == "Faculty")
            {
                PanelExperience.Visible = true;
            }
            else
            {
                PanelExperience.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void txtC_pg_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddQual_Click(object sender, EventArgs e)
        {
            lbltest.Visible = false;
            PanelQual.Visible = true;
            txtCgpa.Text = "";
            txtCollege.Text = "";
            txtPercent.Text = "";
            txtQual.Text = "";
            txtSep.Text = "";
            txtUniversity.Text = "";
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
            PanelQual.Visible = false;
            lbltest.Visible = true;
            lbltest.Text = "Click Here To Add More Qualification Details.";
        }
    }
}
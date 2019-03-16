using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class Registration : System.Web.UI.Page
    {
        AdminClass objAdn = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if(rdfemale.Checked)
            {
                objAdn.Gender = rdfemale.Text.ToString();
            }
            else if(rdmale.Checked)
            {
                objAdn.Gender = rdmale.Text.ToString();
            }
            objAdn.Name = txtFName.Text.ToString() + " " + txtMName.Text.ToString() + " " + txtLName.Text.ToString();
            objAdn.Mob_no = Convert.ToDouble(txtMobNo.Text);
            objAdn.Dob = Convert.ToDateTime(txtDob.Text.ToString());
            objAdn.Email = txtemailid.Text.ToString();
            objAdn.Religion = ddlReligion.SelectedItem.Text.ToString();
            objAdn.Category = txtCategory.Text.ToString();
            objAdn.Nationality = ddlNationality.SelectedItem.Text.ToString();
            objAdn.Blood_group = ddlBloodgroup.SelectedItem.Text.ToString();
            objAdn.Address = txtAddress.Text.ToString() + "," + txtStreet.Text.ToString() + "," + txtCity.Text.ToString();
            objAdn.District = ddlDistrict.SelectedItem.Text.ToString();
            objAdn.State = ddlState.SelectedItem.Text.ToString();
            objAdn.Pincode =Convert.ToInt16(txtPin.Text);
            objAdn.Doa = Convert.ToDateTime(txtDoa.Text.ToString());
            objAdn.Program = ddlProgram.SelectedItem.Text.ToString();
            objAdn.Branch = ddlBranch.SelectedItem.Text.ToString();
            objAdn.Admission_no = txtAdmsnNo.Text.ToString();
            objAdn.Dept = ddlDept.SelectedItem.Text.ToString();
            objAdn.F_name = txtFathername.Text.ToString();
            objAdn.Occupation = txtOccupation.Text.ToString();
            objAdn.F_mobno = Convert.ToDouble(txtFMob.Text.ToString());
            objAdn.InsertDetails();
            Response.Redirect("~/Reg_Qualification.aspx");
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
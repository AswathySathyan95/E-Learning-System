using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ELearning.Classes;
using System.IO;

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
            objAdn.User_type = Session["usertype"].ToString();
            string lastmob = txtMobNo.Text.ToString();
            lastmob = lastmob.Substring(lastmob.Length - 4);
            objAdn.Username = txtFName.Text.ToString() + lastmob;
            objAdn.Password = txtFName.Text.ToString() + lastmob;
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
            objAdn.Pincode =Convert.ToInt32(txtPin.Text);
            objAdn.Doa = Convert.ToDateTime(txtDoa.Text.ToString());
            objAdn.Program = ddlProgram.SelectedItem.Text.ToString();
            objAdn.Branch = ddlBranch.SelectedItem.Text.ToString();
            objAdn.Admission_no = txtAdmsnNo.Text.ToString();
            objAdn.Dept = ddlDept.SelectedItem.Text.ToString();
            objAdn.F_name = txtFathername.Text.ToString();
            objAdn.Occupation = txtOccupation.Text.ToString();
            objAdn.Photo = Session["photopath"].ToString();
            objAdn.F_mobno = Convert.ToDouble(txtFMob.Text.ToString());            
            objAdn.InsertDetails();
            Session["userid"] = objAdn.User_id;
            Session["utype"] = objAdn.User_type;
            Response.Redirect("~/Admin/Reg_Qualification.aspx");
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            objAdn.S_id = Convert.ToInt16(ddlState.SelectedValue.ToString());
            DataTable dtADistrict = new DataTable();
            dtADistrict = objAdn.AddDistrict();
            if (dtADistrict.Rows.Count > 0)
            {
                ddlDistrict.DataSource = dtADistrict;
                ddlDistrict.DataTextField = "District";
                ddlDistrict.DataValueField = "D_Id";
                ddlDistrict.DataBind();
            }
        }

        protected void ddlProgram_SelectedIndexChanged(object sender, EventArgs e)
        {
            objAdn.P_id =Convert.ToInt16(ddlProgram.SelectedValue.ToString());
            DataTable dtABranch = new DataTable();
            dtABranch = objAdn.AdmittedBranch();
            if (dtABranch.Rows.Count > 0)
            {
                ddlBranch.DataSource = dtABranch;
                ddlBranch.DataTextField = "Branch_Name";
                ddlBranch.DataValueField = "B_Id";
                ddlBranch.DataBind();
            }
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            DateTime day = Convert.ToDateTime(txtDob.Text.ToString());
            string pname = txtFName.Text.ToString() + day.Day.ToString();
            string filename = Path.GetFileName(fuPhoto.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/Photo") + "/" + pname + ".JPG";
                fuPhoto.PostedFile.SaveAs(src);
                string picpath = "~/Photo/" + pname  + ".JPG";
                imgPhoto.Visible = true;
                imgPhoto.ImageUrl = picpath;
                Session["photopath"] = picpath;                
            }
            else
            {
                Response.Write("Please Select An Image File....");
            }
        }
    }
}
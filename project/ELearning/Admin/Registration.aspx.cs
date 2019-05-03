using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class Registration : System.Web.UI.Page
    {
        AdminClass objAdmReg = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (rdfemale.Checked)
            {
                objAdmReg.Gender = rdfemale.Text.ToString();
            }
            else if (rdmale.Checked)
            {
                objAdmReg.Gender = rdmale.Text.ToString();
            }
            objAdmReg.User_type = Session["usertype"].ToString();
            string lastmob = txtMobNo.Text.ToString();
            lastmob = lastmob.Substring(lastmob.Length - 4);
            Session["username"] = txtfname.Text.ToString() + lastmob;
            Session["password"] = txtfname.Text.ToString() + lastmob;
            // objAdn.Username = txtFName.Text.ToString() + lastmob;
            //  objAdn.Password = txtFName.Text.ToString() + lastmob;
            objAdmReg.Name = txtfname.Text.ToString() + " " + txtmname.Text.ToString() + " " + txtlname.Text.ToString();
            Session["name"] = objAdmReg.Name;
            objAdmReg.Mob_no = Convert.ToDouble(txtMobNo.Text);
            Session["mobno"] = objAdmReg.Mob_no;
            objAdmReg.Dob = Convert.ToDateTime(txtDob.Text.ToString());
            objAdmReg.Email = txtemailid.Text.ToString();
            objAdmReg.Religion = ddlReligion.SelectedItem.Text.ToString();
            objAdmReg.Category = txtCategory.Text.ToString();
            objAdmReg.Nationality = ddlNationality.SelectedItem.Text.ToString();
            objAdmReg.Blood = ddlBloodgroup.SelectedItem.Text.ToString();
            objAdmReg.Address = txtAddress.Text.ToString() + "," + txtStreet.Text.ToString() + "," + txtCity.Text.ToString();
            objAdmReg.District = ddlDistrict.SelectedItem.Text.ToString();
            objAdmReg.State = ddlState.SelectedItem.Text.ToString();
            objAdmReg.Pincode = Convert.ToInt32(txtPin.Text);
            objAdmReg.Doa = Convert.ToDateTime(txtDoa.Text.ToString());
            objAdmReg.Admsn_no = txtAdmsnNo.Text.ToString();
            objAdmReg.Dept = ddlDept.SelectedItem.Text.ToString();
            objAdmReg.F_name = txtFathername.Text.ToString();
            objAdmReg.Occupation = txtOccupation.Text.ToString();
            objAdmReg.Photo = Session["photopath"].ToString();
            objAdmReg.F_mobno = Convert.ToDouble(txtFMob.Text.ToString());
            objAdmReg.RegInsertDetails();
            Session["userid"] = objAdmReg.User_id;
            Session["utype"] = objAdmReg.User_type;
            Response.Redirect("~/Admin/Reg_Qualification.aspx");
        }

        protected void btnUploadd_Click(object sender, EventArgs e)
        {
            DateTime day = Convert.ToDateTime(txtDob.Text.ToString());
            string pname = txtfname.Text.ToString() + day.Day.ToString();
            string filename = Path.GetFileName(fuPhoto.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/Photos") + "/" + pname + ".JPG";
                fuPhoto.PostedFile.SaveAs(src);
                string picpath = "~/Photos/" + pname + ".JPG";
                imgPhoto.Visible = true;
                imgPhoto.ImageUrl = picpath;
                Session["photopath"] = picpath;
            }
            else
            {
                Response.Write("Please Select An Image File....");
            }
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            objAdmReg.S_id = Convert.ToInt16(ddlState.SelectedValue.ToString());
            DataTable dtADistrict = new DataTable();
            dtADistrict = objAdmReg.AddDistrict();
            if (dtADistrict.Rows.Count > 0)
            {
                for(int i=0;i<dtADistrict.Rows.Count;i++)
                {
                    ddlDistrict.Items.Add(dtADistrict.Rows[i]["District"].ToString());
                }
                /*ddlDistrict.DataSource = dtADistrict;
                ddlDistrict.DataTextField = "District";
                ddlDistrict.DataValueField = "D_Id";
                ddlDistrict.DataBind();*/
            }
        }

        protected void txtPin_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Registration.aspx");
        }
    }
}
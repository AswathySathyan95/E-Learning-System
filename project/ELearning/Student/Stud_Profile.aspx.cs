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
    public partial class Stud_Profile : System.Web.UI.Page
    {
        StudentClass objStud = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objStud.Userid = Session["u_id"].ToString();
            DataTable dtStudDetails = new DataTable();
            dtStudDetails = objStud.DisUserDetails();
            if (dtStudDetails.Rows.Count > 0)
            {
                string add = dtStudDetails.Rows[0]["Address"].ToString();
                string district = dtStudDetails.Rows[0]["District"].ToString();
                string state = dtStudDetails.Rows[0]["State"].ToString();
                string pincode = dtStudDetails.Rows[0]["Pincode"].ToString();
                lblName.Text = dtStudDetails.Rows[0]["Name"].ToString();
                lblGender.Text = dtStudDetails.Rows[0]["Gender"].ToString();
                lblMobNo.Text = dtStudDetails.Rows[0]["Mobile_No"].ToString();
                lblDob.Text = dtStudDetails.Rows[0]["Dob"].ToString();
                lblEmail.Text = dtStudDetails.Rows[0]["Email_Id"].ToString();
                lblNationality.Text = dtStudDetails.Rows[0]["Nationality"].ToString();
                lblReligion.Text = dtStudDetails.Rows[0]["Religion"].ToString();
                lblCategory.Text = dtStudDetails.Rows[0]["Category"].ToString();
                lblBloodgroup.Text = dtStudDetails.Rows[0]["Blood_Group"].ToString();
                imgProfile.ImageUrl = dtStudDetails.Rows[0]["Photo"].ToString();
                lblAddress.Text = add + "," + district + "," + state + "," + pincode;
                lblFname.Text = dtStudDetails.Rows[0]["Father_Name"].ToString();
                lblOccupation.Text = dtStudDetails.Rows[0]["Occupation"].ToString();
                lblFMob.Text = dtStudDetails.Rows[0]["F_Mob_No"].ToString();
            }
        }
    }
}
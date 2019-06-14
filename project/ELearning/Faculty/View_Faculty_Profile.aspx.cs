using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Faculty
{
    public partial class View_Faculty_Profile : System.Web.UI.Page
    {
        FacultyNewClass obj = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Userid = Session["u_id"].ToString();
            DataTable dtDetails = new DataTable();
            dtDetails = obj.FacultyDetails();
            if (dtDetails.Rows.Count > 0)
            {
                LblName.Text = dtDetails.Rows[0]["Name"].ToString();
                LblGender.Text = dtDetails.Rows[0]["Gender"].ToString();
                LblMob.Text = dtDetails.Rows[0]["Mobile_No"].ToString();
                LblDob.Text =(Convert.ToDateTime(dtDetails.Rows[0]["Dob"].ToString()).ToShortDateString()).ToString();
                LblEmail.Text = dtDetails.Rows[0]["Email_Id"].ToString();
                LblBlood.Text = dtDetails.Rows[0]["Blood_Group"].ToString();
                LblReligion.Text = dtDetails.Rows[0]["Religion"].ToString();
                LblCategory.Text = dtDetails.Rows[0]["Category"].ToString();
                LblNationality.Text = dtDetails.Rows[0]["Nationality"].ToString();
                Image1.ImageUrl = dtDetails.Rows[0]["Photo"].ToString();
                LblAddress.Text = dtDetails.Rows[0]["Address"].ToString();
                LblDistrict.Text = dtDetails.Rows[0]["District"].ToString();
                LblState.Text = dtDetails.Rows[0]["State"].ToString();
                LblPincode.Text = dtDetails.Rows[0]["Pincode"].ToString();
                LblFname.Text = dtDetails.Rows[0]["Father_Name"].ToString();
                LblFMob.Text = dtDetails.Rows[0]["F_Mob_No"].ToString();
                LblOccupation.Text = dtDetails.Rows[0]["Occupation"].ToString();
                Lbldoa.Text = (Convert.ToDateTime(dtDetails.Rows[0]["Joining_Date"].ToString()).ToShortDateString()).ToString();
                lblprogram.Text = dtDetails.Rows[0]["Admitted_Program"].ToString();
                lbldept.Text = dtDetails.Rows[0]["Department"].ToString();
                lbladmsnno.Text = dtDetails.Rows[0]["Admission_No"].ToString();
                lblbranch.Text = dtDetails.Rows[0]["Branch"].ToString();
                lblsem.Text = dtDetails.Rows[0]["Semester"].ToString();
                //Qualification
                DataTable dtqual = new DataTable();
                dtqual = obj.QualificationDetails();
                if (dtqual.Rows.Count > 0)
                {
                    GvQual.DataSource = dtqual;
                    GvQual.DataBind();
                }
                //Experience
                DataTable dtExp = new DataTable();
                dtExp = obj.ExperienceDetails();
                if (dtExp.Rows.Count > 0)
                {
                    GvExperience.DataSource = dtExp;
                    GvExperience.DataBind();
                }
            }
        }
    }
}
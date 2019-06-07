using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using ELearning.Classes;


namespace ELearning.Admin
{
    public partial class Reg_Qualification : System.Web.UI.Page
    {
        AdminClass objAdmnReg = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["usertype"].ToString() == "Faculty" || Session["usertype"].ToString() == "Admin")
            {
                PanelExperience.Visible = true;
            }
            else if (Session["usertype"].ToString() == "Student")
            {
                BtnSubmit.Visible = true;
                PanelExperience.Visible = false;

            }*/
        }

        protected void BtnSaveQual_Click(object sender, EventArgs e)
        {
            objAdmnReg.User_id = Session["userid"].ToString();
            objAdmnReg.Qualification = TxtQual.Text.ToString();
            objAdmnReg.Specialization = TxtSpecialization.Text.ToString();
            objAdmnReg.College = TxtCollege.Text.ToString();
            objAdmnReg.University = TxtUniversity.Text.ToString();
            objAdmnReg.Cgpa = Convert.ToDouble(TxtCgpa.Text.ToString());
            objAdmnReg.Percentage = Convert.ToDouble(TxtPercent.Text.ToString());
            objAdmnReg.InsertQualification();
            DataTable dtQual = new DataTable();
            dtQual = objAdmnReg.QualificationDetails();
            if (dtQual.Rows.Count > 0)
            {
                //GvQual.Visible = true;
                GvQual.DataSource = dtQual;
                GvQual.DataBind();
            }
            LblQual.Visible = true;
           // PanelQualification.Visible = false;
        }

        protected void BtnAddQual_Click(object sender, EventArgs e)
        {
            LblQual.Visible = false;
            PanelQualification.Visible = true;
            TxtQual.Text = "";
            TxtSpecialization.Text = "";
            TxtCollege.Text = "";
            TxtUniversity.Text = "";
            TxtCgpa.Text = "";
            TxtPercent.Text = "";
        }

        protected void BtnSaveExp_Click(object sender, EventArgs e)
        {
            objAdmnReg.User_id = Session["userid"].ToString();
            objAdmnReg.Organisation = TxtOrganization.Text.ToString();
            objAdmnReg.Designation = TxtDesg.Text.ToString();
            objAdmnReg.From_date = Convert.ToDateTime(TxtFrom_date.Text.ToString());
            objAdmnReg.To_date = Convert.ToDateTime(TxtTo_date.Text.ToString());
            objAdmnReg.Duration = TxtDuration.Text.ToString();
            objAdmnReg.InsertExperience();
            DataTable dtExp = new DataTable();
            dtExp = objAdmnReg.ExperienceDetails();
            if (dtExp.Rows.Count > 0)
            {
                GvExperience.Visible = true;
                GvExperience.DataSource = dtExp;
                GvExperience.DataBind();
            }
            LblExperience.Visible = true;
            PanelAddExperience.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LblExperience.Visible = false;
            PanelAddExperience.Visible = true;
            TxtOrganization.Text = "";
            TxtDesg.Text = "";
            TxtFrom_date.Text = "";
            TxtTo_date.Text = "";
            TxtDuration.Text = "";
        }

        protected void TxtTo_date_TextChanged(object sender, EventArgs e)
        {
            DateTime from = Convert.ToDateTime(TxtFrom_date.Text.ToString());
            DateTime to = Convert.ToDateTime(TxtTo_date.Text.ToString());
            int years = to.Year - from.Year;
            int month = to.Month - from.Month;
            TxtDuration.Text = ((years * 12) + month) + " " + "Months";
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            objAdmnReg.User_id = Session["userid"].ToString();
            objAdmnReg.Username = Session["username"].ToString();
            objAdmnReg.Password = Session["password"].ToString();
            objAdmnReg.UpdateRegistration();
            string to_mobno = "+91" + Session["mobno"].ToString();
            string msg = "You have been successfully registered to the SJCET Elearning Portal. Your Username and Password are as follows: \n Username: " + objAdmnReg.Username + "\nPassword : " + objAdmnReg.Password;
            objAdmnReg.UpdateRegistration();
            //Sending username and password to the user
            const string accountSid = "AC1eb08c6f5419018f0d858442a88dd229";
            const string authToken = "97a6238b492ead699b3a6d8a88cebb49";
            TwilioClient.Init(accountSid, authToken);
            var message = MessageResource.Create(
                body: msg,
                from: new Twilio.Types.PhoneNumber("+16037694884"),
                to: new Twilio.Types.PhoneNumber(to_mobno)
            );
            Console.WriteLine(message.Sid);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Registration Has Been Successfully Completed.')</script>");
            Response.Redirect("Reg_Home.aspx");
        }

        protected void BtnSubmitAll_Click(object sender, EventArgs e)
        {
            objAdmnReg.User_id = Session["userid"].ToString();
            objAdmnReg.Username = Session["username"].ToString();
            objAdmnReg.Password = Session["password"].ToString();
            objAdmnReg.UpdateRegistration();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Registration Has Been Successfully Completed.')</script>");
            Response.Redirect("Reg_Home.aspx");
        }
    }
}
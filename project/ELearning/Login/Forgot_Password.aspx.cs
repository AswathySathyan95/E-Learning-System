using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using ELearning.Classes;

namespace ELearning.Login
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        LoginClass objLgn = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SendMail()
        {
            //Retreving username and password
            objLgn.Email = TxtEmail.Text.ToString();
            DataTable dtUserDetails = new DataTable();
            dtUserDetails = objLgn.ForgotPassword();
            if (dtUserDetails.Rows.Count > 0)
            {
                objLgn.Name = dtUserDetails.Rows[0]["Name"].ToString();
                objLgn.Uname = dtUserDetails.Rows[0]["Username"].ToString();
                objLgn.Pswd = dtUserDetails.Rows[0]["Password"].ToString();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please Enter Registered Email Address')</script>");
            }
            LblMsg.Text = "Hi " + objLgn.Name + ",<br>" + "You recently submitted a forgot password request on Elearning System." + "<br>" + "Your Username and Password are as follow: <br>" + "Username :" + objLgn.Uname + "<br>Password :" + objLgn.Pswd;
            /*MailMessage mail = new MailMessage();
            mail.To.Add(TxtEmail.Text.ToString());
            mail.From = new MailAddress("elearningsjcet@gmail.com");
            mail.Subject = "Forgot Password Request";
            string body = LblMsg.Text.ToString();
            mail.Body = body;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 465;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("elearningsjcet@gmial.com", "elearning123@");
            smtp.EnableSsl = true;
            smtp.Send(mail);*/
            
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SendMail();
            //LblPswd.Text = objLgn.Name + "<br>" + objLgn.Uname + "\n" + objLgn.Pswd;
        }
    }
}
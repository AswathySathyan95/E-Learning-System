using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.IO;
using ELearning.Classes;


namespace ELearning.Login
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        LoginClass objLgn = new LoginClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
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
              string msg = "Hi " + objLgn.Name + ",<br>" + "You recently submitted a forgot password request on Elearning System." + "<br>" + "Your Username and Password are as follow: <br>" + "Username :" + objLgn.Uname + "<br>Password :" + objLgn.Pswd;
              
              using (StringWriter sw = new StringWriter())
              {
                  using (HtmlTextWriter ht = new HtmlTextWriter(sw))
                  {
                      StringReader sr = new StringReader(sw.ToString());
                      MailMessage mail = new MailMessage();
                      mail.From = new MailAddress("elearningsjcet@gmail.com");
                      mail.To.Add(TxtEmail.Text.ToString());
                      mail.Subject = "Forgot Password Request";
                     // string body = LblMsg.Text.ToString();
                     mail.Body = msg;
                     mail.IsBodyHtml = true;
                     SmtpClient smtp = new SmtpClient();
                     smtp.Host = "smtp.gmail.com";
                     System.Net.NetworkCredential nt = new NetworkCredential();
                     nt.UserName = "elearningsjcet@gmail.com";
                     nt.Password = "elearning123@";
                     smtp.UseDefaultCredentials = true;
                     smtp.Credentials = nt;
                     smtp.Port = 587;
                     smtp.EnableSsl = true;
                     smtp.Send(mail);
                  }
              }
              LblPswd.Visible = true;
        }
    }
}
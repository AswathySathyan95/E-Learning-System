using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.mail
{
    public partial class Compose_Mail : System.Web.UI.Page
    {
        MailClass objMail = new MailClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objMail.Userid = Session["u_id"].ToString();
            DataTable dtMailId = new DataTable();
            dtMailId = objMail.FetchMailId();
            if(dtMailId.Rows.Count>0)
            {
                objMail.FromMail = dtMailId.Rows[0]["Email_Id"].ToString();
                TxtFrom.Text = objMail.FromMail.ToString();
            }
        }

        protected void TxtToId_TextChanged(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
            objMail.To_id = TxtToId.Text.ToString();
            DataTable dtUserType = new DataTable();
            dtUserType = objMail.CheckUserType();
            if (dtUserType.Rows.Count > 0)
            {
                if(dtUserType.Rows[0]["User_Type"].ToString()== "Admin")
                {
                    LblMsg.Visible = true;
                    TxtToId.Text = "";
                }
            }
            DataTable dtCheckMail = new DataTable();
            dtCheckMail = objMail.CheckMailId();
            if(dtCheckMail.Rows.Count<=0)
            {
                LblMsg.Visible = true;
                TxtToId.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objMail.FromMail = TxtFrom.Text.ToString();
            objMail.To_id = TxtToId.Text.ToString();
            objMail.Subject = TxtSubject.Text.ToString();
            objMail.Msg = TxtMessage.Text.ToString();
            objMail.Date = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
            objMail.InsertInboxMail();
            objMail.InsertSentMail();
            TxtToId.Text = "";
            TxtSubject.Text = "";
            TxtMessage.Text = "";
            Response.Write("<script LANGUAGE='JavaScript' >alert('Message Sent')</script>");
        }
    }
}
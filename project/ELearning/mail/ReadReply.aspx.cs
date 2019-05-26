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
    public partial class ReadReply : System.Web.UI.Page
    {
        MailClass objMail = new MailClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objMail.Mid = Session["mid"].ToString();
            DataTable dtReply = new DataTable();
            dtReply = objMail.ReadMail();
            if(dtReply.Rows.Count>0)
            {
                TxtFrom.Text = dtReply.Rows[0]["to_id"].ToString();
                TxtToId.Text = dtReply.Rows[0]["from_id"].ToString();
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
            TxtSubject.Text = "";
            TxtMessage.Text = "";
            Response.Write("<script LANGUAGE='JavaScript' >alert('Message Sent')</script>");
        }
    }
}
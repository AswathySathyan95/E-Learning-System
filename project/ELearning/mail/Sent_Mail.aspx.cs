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
    public partial class Sent_Mail : System.Web.UI.Page
    {
        MailClass objMail = new MailClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objMail.Userid = Session["u_id"].ToString();
            DataTable dtMail = new DataTable();
            dtMail = objMail.FetchMailId();
            if (dtMail.Rows.Count > 0)
            {
                objMail.FromMail = dtMail.Rows[0]["Email_Id"].ToString();
            }
            BindMail();
        }
        
        public void BindMail()
        {
            DataTable dtSent = new DataTable();
            dtSent = objMail.SentMail();
            if (dtSent.Rows.Count > 0)
            {
                GVSentMail.DataSource = dtSent;
                GVSentMail.DataBind();
            }
        }
        protected void GVSentMail_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ReadMessage")
            {
                Session["mid"] = e.CommandArgument.ToString();
                Response.Redirect("ReadSent.aspx");
            }
            else if (e.CommandName == "DeleteMsg")
            {
                objMail.Mid = e.CommandArgument.ToString();
                objMail.DeleteMail();
                objMail.Userid = Session["u_id"].ToString();
                BindMail();
            }
        }
    }
}
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
    public partial class ReadSent : System.Web.UI.Page
    {
        MailClass objMail = new MailClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objMail.Mid = Session["mid"].ToString();
            DataTable dtRead = new DataTable();
            dtRead = objMail.ReadMail();
            if (dtRead.Rows.Count > 0)
            {
                TxtFrom.Text = dtRead.Rows[0]["from_id"].ToString();
                TxtToId.Text = dtRead.Rows[0]["to_id"].ToString();
                TxtSubject.Text= dtRead.Rows[0]["subject"].ToString();
                TxtMessage.Text= dtRead.Rows[0]["message"].ToString();
            }
        }
    }
}
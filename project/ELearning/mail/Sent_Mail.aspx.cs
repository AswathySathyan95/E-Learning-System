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
        MailClass objmail = new MailClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objmail.Userid = Session["u_id"].ToString();

        }
    }
}
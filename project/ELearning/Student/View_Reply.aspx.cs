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
    public partial class View_Reply : System.Web.UI.Page
    {
        StudentNewClass obj = new StudentNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            BindDocument();
        }
        public void BindDocument()
        {
            obj.Userid = Session["u_id"].ToString();
            obj.Qryid =Convert.ToInt32( obj.getQueryId());
            DataTable dtReplyQ = new DataTable();
            dtReplyQ = obj.FetchQueryReply();
            if (dtReplyQ.Rows.Count > 0)
            {
                GvReply.DataSource = dtReplyQ;
                GvReply.DataBind();
            }
        }
        protected void GvReply_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvReply.PageIndex = e.NewPageIndex;
            BindDocument();
        }
    }
}
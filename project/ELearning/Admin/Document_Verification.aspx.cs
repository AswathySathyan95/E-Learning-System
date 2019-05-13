using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class Document_Verification : System.Web.UI.Page
    {
        AdminClass objAdm = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void downloadfile_Click(object sender, EventArgs e)
        {
            var cl = (Control)sender;
            GridView row = (GridView)cl.NamingContainer;
            
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            string firstCellText = row.Cells[0].Text;
            objAdm.Doc_id = firstCellText;
            objAdm.UpdateTable();
            BindDocument();
        }

        private void BindDocument()
        {
            DataTable dtDoc = new DataTable();
            objAdm.Doc_type = DdlDocument.SelectedItem.Text.ToString();
            dtDoc = objAdm.FectchDocument();
            if (dtDoc.Rows.Count > 0)
            {
                GvDocument.DataSource = dtDoc;
                GvDocument.DataBind();
            }
        }
     
        protected void GvDocument_RowCommand(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.FindControl("hdnApp") as HiddenField).Value == "0")
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = true;
                }
                else
                {
                    (e.Row.FindControl("Button1") as Button).Enabled = false;
                }
            }
        }

        protected void GvDocument_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           /* if (e.CommandName == "downloadDoc")
            {
                string filename = e.CommandArgument.ToString();
                Response.Redirect(filename);
            }*/
        }
        protected void GvDocument_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvDocument.PageIndex = e.NewPageIndex;
            BindDocument();
        }

        protected void DdlDocument_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }
    }
}
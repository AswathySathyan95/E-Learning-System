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
            
            /* var closeLink = (Control)sender;
              GridViewRow row = (GridViewRow)closeLink.NamingContainer;
              string firstCellText = row.Cells[4].Text;
              string filePath = firstCellText;
            
              byte[] bts = System.IO.File.ReadAllBytes(filePath);
              Response.Clear();
              Response.ClearHeaders();
              Response.AddHeader("Content-Type", "Application/octet-stream");
              Response.AddHeader("Content-Length", bts.Length.ToString());

              Response.AddHeader("Content-Disposition", "attachment;   filename=" + Path.GetFileName(filePath));

              Response.BinaryWrite(bts);

              Response.Flush();

              Response.End();*/
            /* string filePath = (sender as LinkButton).CommandArgument;
             *  Response.Write(string.Format("<script>window.open('{0}','_blank');</script>", Path.GetFileName(filePath)));

                 Response.ContentType = ContentType;
               Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
              Response.WriteFile(filePath);
              Response.End();
              Response.ContentType = ContentType;
              Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
              Response.WriteFile(filePath);
              Response.End();
              var closeLink = (Control)sender;
               GridViewRow row = (GridViewRow)closeLink.NamingContainer;
               string docidd = row.Cells[0].Text;
               objAdm.Docid = row.Cells[0].Text.ToString();
               string filename = objAdm.documentId();
               Response.ContentType = "application/octet-stream";
               Response.AppendHeader("content-disposition", "attachment;filename=" + filename);
               Response.TransmitFile(Server.MapPath(filename));
               Response.End();*/
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
        
      /*  public void docDownload(string id)
        {
            objAdm.Docid = id;
            string filename = objAdm.documentId();
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("content-disposition", "attachment;filename=" + filename);
            Response.TransmitFile(Server.MapPath(filename));
            Response.End();
        }*/

        protected void GvDocument_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName== "downloadDoc")
            {
                string filename = e.CommandArgument.ToString();
                Response.ContentType = ContentType;
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filename));
                Response.WriteFile(filename);
                //Response.End();
            }
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using ELearning.Classes;

namespace ELearning
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        AdminClass objAdm = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objAdm.Docid = TextBox1.Text.ToString();
            string filename = objAdm.documentId();
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filename));
            Response.WriteFile(filename);
            Response.End();
        }
    }
}
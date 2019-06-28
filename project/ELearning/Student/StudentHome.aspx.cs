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
    public partial class StudentHome : System.Web.UI.Page
    {
        StudentNewClass objStud = new StudentNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objStud.Userid = Session["u_id"].ToString();
            lbltotalquiz.Text=objStud.getQuizCount().ToString();
            objStud.Qryid=Convert.ToString(objStud.getQueryId());
            lblreply.Text = objStud.getreplycount().ToString();
        }
    }
}
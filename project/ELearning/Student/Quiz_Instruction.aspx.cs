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
    public partial class Quiz_Instruction : System.Web.UI.Page
    {
        StudentClass objStudnt = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Session["subcategory"].ToString();
        }

        protected void BtnStart_Click(object sender, EventArgs e)
        {
            objStudnt.Rsubid = Session["subcategory"].ToString();
            objStudnt.FetchQuestions();
            Response.Redirect("Online_Quiz.aspx");
        }
    }
}
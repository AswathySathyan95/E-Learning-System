using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELearning.Student
{
    public partial class Quiz_Instruction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnStart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Online_Quiz.aspx");
        }
    }
}
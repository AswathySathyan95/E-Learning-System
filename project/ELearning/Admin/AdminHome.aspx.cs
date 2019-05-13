using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        AdminNewClass objadm = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbltotalquiz.Text = objadm.getCountQuiz().ToString();
            lbltotalquestion.Text = objadm.getQuestionCount().ToString();
            lbltotalstudents.Text = objadm.getStudentCount().ToString();
        }
    }
}
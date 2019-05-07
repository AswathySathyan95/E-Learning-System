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
    public partial class Online_Quiz : System.Web.UI.Page
    {
        StudentClass objStud = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objStud.Rsubid = Session["subcategory"].ToString();
            //objStud.Rsubid = objStud.subcategoryid();
            DataTable dtQstn = new DataTable();
            dtQstn = objStud.FetchQuestions();
            if(dtQstn.Rows.Count>0)
            {
                LblQstn.Text = dtQstn.Rows[0]["Question"].ToString();
                RbAOptn.Text = dtQstn.Rows[0]["Option_A"].ToString();
                RbBOptn.Text= dtQstn.Rows[0]["Option_B"].ToString();
                RbCOptn.Text= dtQstn.Rows[0]["Option_C"].ToString();
                RbDOptn.Text= dtQstn.Rows[0]["Option_D"].ToString();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            foreach(Control c in PanelQstn.Controls)
            {
                
            }
        }
    }
}
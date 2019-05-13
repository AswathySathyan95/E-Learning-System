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
    public partial class Quiz_Result : System.Web.UI.Page
    {
        StudentClass objStud = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            int c_ans= objStud.Correct_Answer();
            objStud.User_id= Session["u_id"].ToString();
            objStud.Start_time =Convert.ToDateTime(Session["start_time"].ToString());
            objStud.End_time = Convert.ToDateTime(Session["end_time"].ToString());
            objStud.Quiz_date =Convert.ToString(System.DateTime.Now.ToShortDateString());
            objStud.Subctgry= Session["subcategory"].ToString();
            objStud.Correct_ans = objStud.Correct_Answer();
            objStud.Wrong_ans = objStud.Wrong_Answer();
            objStud.Attended = objStud.Attended_Qstn();
            objStud.Score= objStud.Correct_Answer();
            double per = (c_ans / 25)*100;
            objStud.Percent = per;
            TimeSpan diff = objStud.End_time.Subtract(objStud.Start_time);
            ViewState["timetaken"] = diff.Minutes + ":" + diff.Seconds;
            LblTime.Text = ViewState["timetaken"].ToString();
            LblAttempted.Text = objStud.Attended.ToString();
            LblCorrect.Text = objStud.Correct_ans.ToString();
            LblWrong.Text = objStud.Wrong_ans.ToString();
            LblScore.Text = objStud.Correct_ans.ToString() + " / 25";
            LblPercentage.Text = per.ToString();
            objStud.Quiz_Report();
        }
    }
}
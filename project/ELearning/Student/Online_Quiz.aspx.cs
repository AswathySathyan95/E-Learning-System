using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;
using System.Drawing;

namespace ELearning.Student
{
    public partial class Online_Quiz : System.Web.UI.Page
    {
        StudentClass objStud = new StudentClass();
        int counter = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                Session["starttime"] = DateTime.Now.AddMinutes(25).ToString();
                objStud.User_id = Session["u_id"].ToString();
                Session["start_time"] =System.DateTime.Now.ToShortTimeString();
                DataTable dtQuestion = new DataTable();
                dtQuestion = objStud.FetchQuizQuestion();
                if (dtQuestion.Rows.Count > 0)
                {
                    LblQstnNo.Text = dtQuestion.Rows[0]["Qstn_No"].ToString();
                    LblTest.Text = dtQuestion.Rows[0]["Qstn_Id"].ToString();
                    LblQstn.Text = dtQuestion.Rows[0]["Question"].ToString();
                    RbAOptn.Text = dtQuestion.Rows[0]["OptionA"].ToString();
                    RbBOptn.Text = dtQuestion.Rows[0]["OptionB"].ToString();
                    RbCOptn.Text = dtQuestion.Rows[0]["OptionC"].ToString();
                    RbDOptn.Text = dtQuestion.Rows[0]["OptionD"].ToString();
                }
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if(DateTime.Compare(DateTime.Now,DateTime.Parse(Session["starttime"].ToString()))<0)
            {
                TxtDisTime.Text = ((Int32)DateTime.Parse(Session["starttime"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString() + ":" + (((Int32)DateTime.Parse(Session["starttime"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString();
            }
            else
            {
                TxtDisTime.Text = "Time Expired";
                Session["end_time"] = System.DateTime.Now.ToShortTimeString();
                Response.Redirect("Quiz_Result.aspx");
            }
        }

        protected void BtnNxtQstn_Click(object sender, EventArgs e)
        {
            counter++;
            if (!RbAOptn.Checked && !RbBOptn.Checked && !RbCOptn.Checked && !RbDOptn.Checked)
             {
                string nmbrcheck = LblQstnNo.Text.ToString();
                string controlid = "Button" + nmbrcheck;
                //btn.ID = controlid;
                foreach (Control c in PanelQstn.Controls)
                {
                    if (c.ID == controlid)
                    {
                        if (c is Button)
                        {
                            ((Button)c).BackColor = Color.Red;
                        }
                    }
                }
             }
            objStud.Q_id = LblTest.Text.ToString();
            objStud.Qsn_no = Convert.ToInt32(LblQstnNo.Text.ToString());
            objStud.UpdateStatus();
            DataTable dtQuestion = new DataTable();
            dtQuestion = objStud.FetchQuizQuestion();
            /// int qstncount = dtQuestion.Rows.Count;
            if (dtQuestion.Rows.Count > 0)
            {
                LblQstnNo.Text = dtQuestion.Rows[0]["Qstn_No"].ToString();
                LblTest.Text = dtQuestion.Rows[0]["Qstn_Id"].ToString();
                LblQstn.Text = dtQuestion.Rows[0]["Question"].ToString();
                RbAOptn.Text = dtQuestion.Rows[0]["OptionA"].ToString();
                RbBOptn.Text = dtQuestion.Rows[0]["OptionB"].ToString();
                RbCOptn.Text = dtQuestion.Rows[0]["OptionC"].ToString();
                RbDOptn.Text = dtQuestion.Rows[0]["OptionD"].ToString();
            }
            else
            {
                BtnNxtQstn.Enabled = false;
            }
            RbAOptn.Checked = false;
            RbBOptn.Checked = false;
            RbCOptn.Checked = false;
            RbDOptn.Checked = false;
           
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Session["end_time"] = System.DateTime.Now.ToShortTimeString();
            Response.Redirect("Quiz_Result.aspx");

        }
        public void changecolor()
        {
            string nmbrcheck = LblQstnNo.Text.ToString();
            string controlid = "Button" + nmbrcheck;
            foreach (Control c in PanelQstn.Controls)
            {
                if (c.ID == controlid)
                {
                    if (c is Button)
                    {
                        ((Button)c).BackColor = Color.Green;
                    }
                }
            }
        }
        protected void RbAOptn_CheckedChanged(object sender, EventArgs e)
        {
            objStud.Seleted_optn = RbAOptn.Text.ToString();
            objStud.Q_id = LblTest.Text.ToString();
            objStud.UpdateTemp();
            changecolor();
        }

        protected void RbBOptn_CheckedChanged(object sender, EventArgs e)
        {
            objStud.Seleted_optn = RbBOptn.Text.ToString();
            objStud.Q_id = LblTest.Text.ToString();
            objStud.UpdateTemp();
            changecolor();
        }

        protected void RbCOptn_CheckedChanged(object sender, EventArgs e)
        {
            objStud.Seleted_optn = RbCOptn.Text.ToString();
            objStud.Q_id = LblTest.Text.ToString();
            objStud.UpdateTemp();
            changecolor();
        }

        protected void RbDOptn_CheckedChanged(object sender, EventArgs e)
        {
            objStud.Seleted_optn = RbDOptn.Text.ToString();
            objStud.Q_id = LblTest.Text.ToString();
            objStud.UpdateTemp();
            changecolor();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = ((Button)sender).Text;
            objStud.Btnqstn = Convert.ToInt16(id);
            DataTable dtqstnno = new DataTable();
            dtqstnno = objStud.QuestionFetch();
            if(dtqstnno.Rows.Count>0)
            {
                LblQstnNo.Text = dtqstnno.Rows[0]["Qstn_No"].ToString();
                LblTest.Text = dtqstnno.Rows[0]["Qstn_Id"].ToString();
                LblQstn.Text = dtqstnno.Rows[0]["Question"].ToString();
                RbAOptn.Text = dtqstnno.Rows[0]["OptionA"].ToString();
                RbBOptn.Text = dtqstnno.Rows[0]["OptionB"].ToString();
                RbCOptn.Text = dtqstnno.Rows[0]["OptionC"].ToString();
                RbDOptn.Text = dtqstnno.Rows[0]["OptionD"].ToString();
                foreach(Control c in PanelOptions.Controls)
                {
                    if(c is RadioButton)
                    {
                        String value = ((RadioButton)c).Text.ToString();
                        if(value==dtqstnno.Rows[0]["Selected_Option"].ToString())
                        {
                            ((RadioButton)c).Checked = true;
                        }
                        else
                        {
                            ((RadioButton)c).Checked = false;
                        }
                    }
                }
            }
            
        }
    }
}
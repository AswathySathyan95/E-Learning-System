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
       // int counter=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Session["starttime"] = DateTime.Now.AddMinutes(25).ToString();
                objStud.User_id = Session["u_id"].ToString();
                objStud.Start_time =System.DateTime.Now.ToShortTimeString();
                DataTable dtQuestion = new DataTable();
                dtQuestion = objStud.FetchQuizQuestion();
                if (dtQuestion.Rows.Count > 0)
                {
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
            }
        }

        protected void BtnNxtQstn_Click(object sender, EventArgs e)
        {
             if(!RbAOptn.Checked && !RbBOptn.Checked && !RbCOptn.Checked && !RbDOptn.Checked)
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
             // counter++;
            objStud.Q_id = LblTest.Text.ToString();
            objStud.Qsn_no = Convert.ToInt32(LblQstnNo.Text.ToString());
            objStud.UpdateStatus();
            RbAOptn.Checked = false;
            RbBOptn.Checked = false;
            RbCOptn.Checked = false;
            RbDOptn.Checked = false;
            DataTable dtQuestion = new DataTable();
            dtQuestion = objStud.FetchQuizQuestion();
            int qstncount = dtQuestion.Rows.Count;
            if (qstncount > 0)
            {

                int nmbr = Convert.ToInt16(LblQstnNo.Text.ToString());
                nmbr++;
                LblQstnNo.Text = nmbr.ToString();
                LblTest.Text= dtQuestion.Rows[0]["Qstn_Id"].ToString();
                LblQstn.Text = dtQuestion.Rows[0]["Question"].ToString();
                RbAOptn.Text = dtQuestion.Rows[0]["OptionA"].ToString();
                RbBOptn.Text = dtQuestion.Rows[0]["OptionB"].ToString();
                RbCOptn.Text = dtQuestion.Rows[0]["OptionC"].ToString();
                RbDOptn.Text = dtQuestion.Rows[0]["OptionD"].ToString();
                //}
            }
            else
            {
                BtnSubmit.Visible = true;
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

        }
        public void changecolor()
        {
            // Button btn = new Button();
            string nmbrcheck = LblQstnNo.Text.ToString();
            string controlid = "Button" + nmbrcheck;
            //btn.ID = controlid;
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
    }
}
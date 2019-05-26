using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class Subject_Details : System.Web.UI.Page
    {
        AdminNewClass objAdm = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dtCourse = new DataTable();
                dtCourse = objAdm.FetchCourse();
                if (dtCourse.Rows.Count > 0)
                {
                    DdlCourse.DataSource = dtCourse;
                    DdlCourse.DataTextField = "Branch_Name";
                    DdlCourse.DataValueField = "B_Id";
                    DdlCourse.DataBind();
                }
                DdlCourse.Items.Insert(0, "---Select---");
            }
        }

        protected void TxtSubject_TextChanged(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
            objAdm.Bid = Convert.ToInt32(DdlCourse.SelectedValue.ToString());
            objAdm.SubjectDetail = TxtSubject.Text.ToString();
            DataTable dtSubject = new DataTable();
            dtSubject = objAdm.CheckSubject();
            if(dtSubject.Rows.Count>0)
            {
                LblMsg.Visible = true;
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objAdm.Bid =Convert.ToInt32(DdlCourse.SelectedValue.ToString());
            objAdm.SubjectDetail = TxtSubject.Text.ToString();
            objAdm.InsertSubject();
            DdlCourse.ClearSelection();
            TxtSubject.Text = "";
            Response.Write("<script LANGUAGE='JavaScript' >alert('Subject Details added successfully....')</script>");
        }

        protected void DdlCourse_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
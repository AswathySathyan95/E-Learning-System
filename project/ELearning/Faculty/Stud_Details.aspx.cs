using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Faculty
{
    public partial class Stud_Details : System.Web.UI.Page
    {
        FacultyNewClass objFclty = new FacultyNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                objFclty.Userid = Session["u_id"].ToString();
                objFclty.Dept = objFclty.Department();
                DataTable dtbranch = new DataTable();
                dtbranch = objFclty.BranchDetails();
                if(dtbranch.Rows.Count>0)
                {
                    DdlBranch.DataSource = dtbranch;
                    DdlBranch.DataTextField = "Branch_Name";
                    DdlBranch.DataValueField = "B_Id";
                    DdlBranch.DataBind();
                }
                DdlBranch.Items.Insert(0, new ListItem("---Select---", "0"));
            }

        }

        protected void DdlSemster_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }
        public void BindDocument()
        {
            objFclty.Branch = DdlBranch.SelectedValue.ToString();
            objFclty.Semseter = DdlSemster.SelectedItem.Text.ToString();
            DataTable dtname = new DataTable();
            dtname = objFclty.NameDetails();
            if (dtname.Rows.Count > 0)
            {
                GvDetails.DataSource = dtname;
                GvDetails.DataBind();
            }
        }
        protected void GvDetailsPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvDetails.PageIndex = e.NewPageIndex;
            BindDocument();
        }
        protected void GvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                Session["studid"] = e.CommandArgument.ToString();
                Response.Redirect("DetailedStudDetails.aspx");
            }
        }

        protected void DdlBranch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
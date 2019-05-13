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
    public partial class Student_Details : System.Web.UI.Page
    {
        AdminNewClass objadm = new AdminNewClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtbranch = new DataTable();
                dtbranch = objadm.BranchDetails();
                if (dtbranch.Rows.Count > 0)
                {
                    DdlBranch.DataSource = dtbranch;
                    DdlBranch.DataTextField = "Branch";
                    DdlBranch.DataValueField = "Branch";
                    DdlBranch.DataBind();
                }
                DdlBranch.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }
        
        public void BindDocument()
        {
            objadm.Branch = DdlBranch.SelectedItem.Text.ToString();
            objadm.Semester = DdlSemster.SelectedItem.Text.ToString();
            DataTable dtname = new DataTable();
            dtname = objadm.NameDetails();
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
                Response.Redirect("StudentFullDetails.aspx");
            }
        }

        protected void DdlSemster_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDocument();
        }

        protected void DdlBranch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
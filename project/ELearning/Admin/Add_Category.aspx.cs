using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using ELearning.Classes;

namespace ELearning.Admin
{
    public partial class Add_Category : System.Web.UI.Page
    {
        AdminClass objAdmn = new AdminClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtCtgry = new DataTable();
                dtCtgry = objAdmn.FetchCategory();
                if (dtCtgry.Rows.Count > 0)
                {
                    DdlCategory.DataSource = dtCtgry;
                    DdlCategory.DataTextField = "Category";
                    DdlCategory.DataValueField = "C_Id";
                    DdlCategory.DataBind();
                }
                DdlCategory.Items.Insert(0, new ListItem("---Select---", "0"));
            }
        }


        protected void BtnSubctgry_Click(object sender, EventArgs e)
        {
            PanelSubCtgry.Visible = true;
            DataTable dtCtgry = new DataTable();
            dtCtgry = objAdmn.FetchCategory();
            if (dtCtgry.Rows.Count > 0)
            {
                DdlCategory.Items.Add("---Select---");
                DdlCategory.DataSource = dtCtgry;
                DdlCategory.DataTextField = "Category";
                DdlCategory.DataValueField = "C_Id";
                DdlCategory.DataBind();
            }
        }
        

        protected void BtnSubSave_Click(object sender, EventArgs e)
        {
            //setting image path
            string subpname = TxtSubctgry.Text.ToString();
            string filename = Path.GetFileName(FuSubctgry.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/CategoryImage") + "/" + subpname + ".JPG";
                FuSubctgry.PostedFile.SaveAs(src);
                string picsub = "~/CategoryImage/" + subpname + ".JPG";
                ViewState["subcgry"] = picsub;
            }
            else
            {
                Response.Write("Please Select An Image File....");
            }
            //adding values to the table
            objAdmn.Subcategory_cid = DdlCategory.SelectedValue.ToString();
            objAdmn.Quiz_subcategory = TxtSubctgry.Text.ToString();
            objAdmn.Subcategory_image = ViewState["subcgry"].ToString();
            objAdmn.Cuser = Session["u_id"].ToString();
            objAdmn.Cdate = System.DateTime.Now.ToShortDateString();
            objAdmn.InsertSubCategory();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            TxtSubctgry.Text = "";
        }
        
        protected void BtnSaveCategory_Click(object sender, EventArgs e)
        {
            //Setting image path
            string pname = TxtCtgry.Text.ToString();
            string filename = Path.GetFileName(FuCtgry.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/CategoryImage") + "/" + pname + ".JPG";
                FuCtgry.PostedFile.SaveAs(src);
                string picpath = "~/CategoryImage/" + pname + ".JPG";
                //ImgCtgry.Visible = true;
                //ImgCtgry.ImageUrl = picpath;
                ViewState["photopath"] = picpath;
            }
            else
            {
                Response.Write("Please Select An Image File....");
            }
            //adding values to table
            objAdmn.C_id = objAdmn.CategoryIdGenerate();
            objAdmn.Quiz_category = TxtCtgry.Text.ToString();
            objAdmn.Category_image = ViewState["photopath"].ToString();
            objAdmn.Cuser = Session["u_id"].ToString();
            objAdmn.Cdate = System.DateTime.Now.ToShortDateString();
            objAdmn.CategoryDetails();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            TxtCtgry.Text = "";
            //ImgCtgry.ImageUrl = "";
        }

        protected void TxtCtgry_TextChanged(object sender, EventArgs e)
        {
            objAdmn.Ctgry_check = TxtCtgry.Text.ToString();
            DataTable dtChkCategory = new DataTable();
            dtChkCategory = objAdmn.CheckCategory();
            if (dtChkCategory.Rows.Count > 0)
            {
                LblCtgry.Visible = true;
                TxtCtgry.Text = "";
            }
            else
            {
                LblCtgry.Visible = false;
            }
        }

        protected void TxtSubctgry_TextChanged(object sender, EventArgs e)
        {
            objAdmn.Subctgry_check = TxtSubctgry.Text.ToString();
            DataTable dtChkSubCategory = new DataTable();
            dtChkSubCategory = objAdmn.CheckSubCategory();
            if (dtChkSubCategory.Rows.Count > 0)
            {
                LblSubCtgry.Visible = true;
                TxtSubctgry.Text = "";
            }
            else
            {
                LblSubCtgry.Visible = false;
            }
        }
    }
}
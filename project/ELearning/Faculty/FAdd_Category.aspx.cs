using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using ELearning.Classes;

namespace ELearning.Faculty
{
    public partial class FAdd_Category : System.Web.UI.Page
    {
        FacultyClass objFctly = new FacultyClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {

        }
        protected void BtnAddCategory_Click(object sender, EventArgs e)
        {

        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSaveCtgry_Click(object sender, EventArgs e)
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
                ImgCtgry.Visible = true;
                ImgCtgry.ImageUrl = picpath;
                ViewState["photopath"] = picpath;
            }
            else
            {
                Response.Write("Please Select An Image File....");
            }
            //adding values to table
            objFctly.C_id = objFctly.CategoryIdGenerate();
            objFctly.Quiz_category = TxtCtgry.Text.ToString();
            objFctly.Category_image = ViewState["photopath"].ToString();
            objFctly.Cuser = Session["u_id"].ToString();
            objFctly.Cdate = System.DateTime.Now.ToShortDateString();
            objFctly.CategoryDetails();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            TxtCtgry.Text = "";
            ImgCtgry.ImageUrl = "";
        }

        protected void BtnSubctgry_Click(object sender, EventArgs e)
        {
            PanelSubctgry.Visible = true;
            DataTable dtCtgry = new DataTable();
            dtCtgry = objFctly.FetchCategory();
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
                ImgSubCtgry.Visible = true;
                ImgSubCtgry.ImageUrl = picsub;
                ViewState["subcgry"] = picsub;
            }
            else
            {
                Response.Write("Please Select An Image File....");
            }
            //adding values to the table
            objFctly.Subcategory_cid = DdlCategory.SelectedValue.ToString();
            objFctly.Quiz_subcategory = TxtSubctgry.Text.ToString();
            objFctly.Subcategory_image = ViewState["subcgry"].ToString();
            objFctly.Cuser = Session["u_id"].ToString();
            objFctly.Cdate = System.DateTime.Now.ToShortDateString();
            objFctly.InsertSubCategory();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            TxtSubctgry.Text = "";
            ImgSubCtgry.ImageUrl = "";
        }

        protected void TxtCtgry_TextChanged(object sender, EventArgs e)
        {
            objFctly.Ctgry_check = TxtCtgry.Text.ToString();
            DataTable dtChkCategory = new DataTable();
            dtChkCategory = objFctly.CheckCategory();
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
            objFctly.Subctgry_check = TxtSubctgry.Text.ToString();
            DataTable dtChkSubCategory = new DataTable();
            dtChkSubCategory = objFctly.CheckSubCategory();
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
            objFctly.C_id = objFctly.CategoryIdGenerate();
            objFctly.Quiz_category = TxtCtgry.Text.ToString();
            objFctly.Category_image = ViewState["photopath"].ToString();
            objFctly.Cuser = Session["u_id"].ToString();
            objFctly.Cdate = System.DateTime.Now.ToShortDateString();
            objFctly.CategoryDetails();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Details added successfully!!!!')</script>");
            TxtCtgry.Text = "";
            //ImgCtgry.ImageUrl = "";
        }
    }
}
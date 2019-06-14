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
    public partial class Quiz_SubCategory : System.Web.UI.Page
    {
        StudentClass objStud = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            objStud.Quiz_category = Session["quiz_category"].ToString();
            DataTable dtSubCategory = new DataTable();
            dtSubCategory = objStud.FetchSubCategory();
            int sub_count = dtSubCategory.Rows.Count;
            if(sub_count>0)
            {
                for(int i=0;i<sub_count;i++)
                {
                    ImageButton img = new ImageButton();
                    img.ID = dtSubCategory.Rows[i]["SubCat_Id"].ToString();
                    img.ImageUrl = dtSubCategory.Rows[i]["Image"].ToString();
                    img.Width=Unit.Pixel(350);
                    img.Height = Unit.Pixel(200);
                    img.Style.Add("padding", "25px");
                    img.Click += new ImageClickEventHandler(img_Click);
                    PanelSubCtgry.Controls.Add(img);
                }
            }
        }
        private void img_Click(object sender,ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            Session["subcategory"] = img.ID;
            Response.Redirect("Quiz_Instruction.aspx");
        }
    }
}
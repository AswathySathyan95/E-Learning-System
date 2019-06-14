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
    public partial class Quiz_Category : System.Web.UI.Page
    {
        StudentClass objStudt = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtCategory = new DataTable();
            dtCategory = objStudt.FetchCategory();
            int ctgy_count = dtCategory.Rows.Count;
            if (ctgy_count> 0)
            {
                for (int i = 0; i < ctgy_count; i++)
                {
                    ImageButton img = new ImageButton();
                    img.ID = dtCategory.Rows[i]["C_Id"].ToString();
                    img.ImageUrl = dtCategory.Rows[i]["Image"].ToString();
                    img.Width = Unit.Pixel(350);
                    img.Height = Unit.Pixel(200);
                    img.Style.Add("padding", "25px");
                    img.Click += new ImageClickEventHandler(img_Click);
                    PanelCategory.Controls.Add(img);
                }
            }
        }
        private void img_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            Session["quiz_category"] = img.ID;
            Response.Redirect("Quiz_SubCategory.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Session["quizcategory"] = Button1.Text;
            //Response.Redirect("Quiz_Instruction.aspx");
        }

       /* protected void ImgBtn1_Click(object sender, ImageClickEventArgs e)
        {
            Session["quiz_category"] = ImgBtn1.ID.ToString();
            Response.Redirect("Quiz_SubCategory.aspx");
        }

        protected void ImgBtn2_Click(object sender, ImageClickEventArgs e)
        {
            Session["quiz_category"] = .ID.ToString();
            Response.Redirect("Quiz_SubCategory.aspx");
        }

        protected void ImgBtn3_Click(object sender, ImageClickEventArgs e)
        {
            Session["quiz_category"] = this.ID.ToString();
            Response.Redirect("Quiz_SubCategory.aspx");
        }

        protected void ImgBtn4_Click(object sender, ImageClickEventArgs e)
        {
            Session["quiz_category"] = this.ID.ToString();
            Response.Redirect("Quiz_SubCategory.aspx");
        }*/
    }
}
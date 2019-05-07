using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ELearning.Classes
{
    public class StudentClass
    {
        string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
        SqlConnection con;
        public void OpenConnection()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
        }
        public void CloseConnection()
        {
            con.Close();
        }
        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }
        private string ctgry;
        private string subid;
        private string rsubid;
        private string quiz_category;

        public string Ctgry { get => ctgry; set => ctgry = value; }
        public string Subid { get => subid; set => subid = value; }
        public string Rsubid { get => rsubid; set => rsubid = value; }
        public string Quiz_category { get => quiz_category; set => quiz_category = value; }

        //Fetching Sub category from the table Quiz_Category
        public DataTable FetchSubCategory()
        {
            OpenConnection();
            DataTable dtSubCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select SubCat_Id,SubCategory,Image from Quiz_Subcategory where C_Id=@sctgry", con);
            command.Parameters.AddWithValue("@sctgry", quiz_category);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtSubCategory);
            CloseConnection();
            return dtSubCategory;
        }

        //Fetching category from the table Quiz_Category
        public DataTable FetchCategory()
        {
            OpenConnection();
            DataTable dtCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select C_Id,Category,Image from Quiz_Category", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtCategory);
            CloseConnection();
            return dtCategory;
        }

        public DataTable FetchQuestions()
        {
            OpenConnection();
            DataTable dtQuestion = new DataTable();
            SqlCommand command1 = new SqlCommand("Select Question,Option_A,Option_B,Option_C,Option_D from Quiz_Questions where Category_Id=@rsubid", con);
            command1.Parameters.AddWithValue("@rsubid", rsubid);
            SqlDataAdapter da = new SqlDataAdapter(command1);
            da.Fill(dtQuestion);
            CloseConnection();
            return dtQuestion;
        }
        public string subcategoryid()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select SubCat_Id from Quiz_Subcategory where SubCategory =@cry ", con);
            command.Parameters.AddWithValue("@cry", ctgry);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                subid = (string)cnt;
                
            }
            return subid;
        }
    }
}
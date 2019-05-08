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
        private string seleted_optn;
        private Int32 q_id;
        private string user_id;
        private string start_time;
        private string end_time;

        public string Ctgry { get => ctgry; set => ctgry = value; }
        public string Subid { get => subid; set => subid = value; }
        public string Rsubid { get => rsubid; set => rsubid = value; }
        public string Quiz_category { get => quiz_category; set => quiz_category = value; }
        public string Seleted_optn { get => seleted_optn; set => seleted_optn = value; }
        public int Q_id { get => q_id; set => q_id = value; }
        public string User_id { get => user_id; set => user_id = value; }
        public string Start_time { get => start_time; set => start_time = value; }
        public string End_time { get => end_time; set => end_time = value; }

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

        public DataTable FetchQuizQuestion()
        {
            OpenConnection();
            DataTable dtQuestion = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Temporary_Qstn where Status='Not Attempeted'", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQuestion);
            CloseConnection();
            return dtQuestion;
        }

        //Update
        public void UpdateTemp()
        {
            OpenConnection();
            string qry = "update Temporary_Qstn set Selected_Option=@soptn where Qstn_No=@Qstnno";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@soptn", seleted_optn);
            cmd.Parameters.AddWithValue("@Qstnno", Q_id);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public void UpdateStatus()
        {
            OpenConnection();
            string qry = "update Temporary_Qstn set Status='Attended' where Qstn_No=@Qstnno";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Qstnno", Q_id);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //fetch and insert data into new table
        public void FetchQuestions()
        {
            OpenConnection();
            string qry = "insert into Temporary_Qstn(Qstn_Id,Question,OptionA,OptionB,OptionC,OptionD,Answer)Select top 10 Q_Id,Question,Option_A,Option_B,Option_C,Option_D,Answer from Quiz_Questions where Category_Id=@rsubid ORDER BY NEWID() ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@rsubid", rsubid);
            cmd.ExecuteNonQuery();
            CloseConnection();
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
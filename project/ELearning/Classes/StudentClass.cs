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

        public string Ctgry { get => ctgry; set => ctgry = value; }
        public string Subid { get => subid; set => subid = value; }
        public string Rsubid { get => rsubid; set => rsubid = value; }

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
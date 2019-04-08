using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

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
        private string userid;

        public string Userid
        {
            get
            {
                return userid;
            }

            set
            {
                userid = value;
            }
        }

        public DataTable DisUserDetails()
        {
            OpenConnection();
            DataTable dtStudDetails = new DataTable();
            SqlCommand command = new SqlCommand("Select * from User_Details where User_Id='"+userid+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtStudDetails);
            CloseConnection();
            return dtStudDetails;
        }
    }
}
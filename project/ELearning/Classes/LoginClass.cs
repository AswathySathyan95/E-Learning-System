using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ELearning.Classes
{
    public class LoginClass
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
        private string username;
        private string password;
        private string user_id;
        private string user_type;

        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string User_id
        {
            get
            {
                return user_id;
            }

            set
            {
                user_id = value;
            }
        }

        public string User_type
        {
            get
            {
                return user_type;
            }

            set
            {
                user_type = value;
            }
        }
        public DataTable LoginDetails()
        {
              OpenConnection();
              DataTable dtLogin = new DataTable();
              SqlCommand command = new SqlCommand("Select User_Id,User_Type from User_Details where Username='"+username+"' and Password= '"+password+"'", con);
             /* command.Parameters.AddWithValue("@uname", username);
              command.Parameters.AddWithValue("@utype", user_type);
              command.Parameters.AddWithValue("@pswd", password);
              command.Parameters.AddWithValue("@uid", user_id);*/
              SqlDataAdapter da = new SqlDataAdapter(command);             
              da.Fill(dtLogin);
              CloseConnection();
              return dtLogin;
        }
    }
    
}
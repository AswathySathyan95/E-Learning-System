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
        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }
        private string username;
        private string password;
        private string user_type;
        private string user_id;

        private string cpassword;
        private string new_pswd;
        private string cnew_pswd;

        private string email;
        private string uname;
        private string pswd;
        private string name;

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string User_type { get => user_type; set => user_type = value; }
        public string User_id { get => user_id; set => user_id = value; }
        public string Cpassword { get => cpassword; set => cpassword = value; }
        public string New_pswd { get => new_pswd; set => new_pswd = value; }
        public string Cnew_pswd { get => cnew_pswd; set => cnew_pswd = value; }
        public string Email { get => email; set => email = value; }
        public string Uname { get => uname; set => uname = value; }
        public string Pswd { get => pswd; set => pswd = value; }
        public string Name { get => name; set => name = value; }

        public DataTable LoginDetails()
        {
            OpenConnection();
            DataTable dtLogin = new DataTable();
            SqlCommand command = new SqlCommand("Select User_Id,User_Type from User_Details where Username=@uname and Password= @pswd", con);
             command.Parameters.AddWithValue("@uname", username);
             //command.Parameters.AddWithValue("@utype", user_type);
             command.Parameters.AddWithValue("@pswd", password);
             //command.Parameters.AddWithValue("@uid", user_id);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtLogin);
            CloseConnection();
            return dtLogin;
        }

        public void ChangePassword()
        {
            OpenConnection();
            string qry = "update User_Details set Password=@spassword where User_Id=@suserid and User_Type=@usertype";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@suserid", user_id);
            cmd.Parameters.AddWithValue("@spassword", new_pswd);
            cmd.Parameters.AddWithValue("@usertype", user_type);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public DataTable ForgotPassword()
        {
            OpenConnection();
            DataTable dtUserDetails = new DataTable();
            SqlCommand command = new SqlCommand("Select Name,Username,Password from User_Details where Email_Id=@semail ", con);
            command.Parameters.AddWithValue("@semail", email);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtUserDetails);
            CloseConnection();
            return dtUserDetails;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ELearning.Classes
{
    public class MailClass
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

        private string userid;
        private string mid;
        private string f_id;
        private string to_id;
        private string subject;
        private string msg;
        private string flagg;

        public string Userid { get => userid; set => userid = value; }
        public string Mid { get => mid; set => mid = value; }
        public string F_id { get => f_id; set => f_id = value; }
        public string To_id { get => to_id; set => to_id = value; }
        public string Subject { get => subject; set => subject = value; }
        public string Msg { get => msg; set => msg = value; }
        public string Flagg { get => flagg; set => flagg = value; }

        //fetch mail id

    }
}
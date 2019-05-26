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
        private string fromMail;
        private string flagg;
        private string usertype;
        private DateTime date;


        public string Userid { get => userid; set => userid = value; }
        public string Mid { get => mid; set => mid = value; }
        public string F_id { get => f_id; set => f_id = value; }
        public string To_id { get => to_id; set => to_id = value; }
        public string Subject { get => subject; set => subject = value; }
        public string Msg { get => msg; set => msg = value; }
        public string Flagg { get => flagg; set => flagg = value; }
        public string FromMail { get => fromMail; set => fromMail = value; }
        public string Usertype { get => usertype; set => usertype = value; }
        public DateTime Date { get => date; set => date = value; }

        //fetch Inbox
        public DataTable InboxMail()
        {
            OpenConnection();
            DataTable dtInbox = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Mail_Msg where to_id=@frommail and flag='Inbox'", con);
            command.Parameters.AddWithValue("@frommail", fromMail);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtInbox);
            CloseConnection();
            return dtInbox;
        }
        //fetch Sent Mail
        public DataTable SentMail()
        {
            OpenConnection();
            DataTable dtSent = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Mail_Msg where from_id=@frommail and flag='Sent Mail'", con);
            command.Parameters.AddWithValue("@frommail", fromMail);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtSent);
            CloseConnection();
            return dtSent;
        }
        //fetch mail id
        public DataTable FetchMailId()
        {
            OpenConnection();
            DataTable dtMail = new DataTable();
            SqlCommand cmd = new SqlCommand("select Email_Id from User_Details where User_Id=@userid",con);
            cmd.Parameters.AddWithValue("@userid", userid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtMail);
            CloseConnection();
            return dtMail;
        }
        //fetch User Type
        public DataTable FetchUserType()
        {
            OpenConnection();
            DataTable dtUser = new DataTable();
            SqlCommand cmd = new SqlCommand("select User_Type from User_Details where User_Id=@userid",con);
            cmd.Parameters.AddWithValue("@userid", userid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtUser);
            CloseConnection();
            return dtUser;
        }
        //check User Type
        public DataTable CheckUserType()
        {
            OpenConnection();
            DataTable dtUser = new DataTable();
            SqlCommand cmd = new SqlCommand("select User_Type from User_Details where Email_Id=@toid", con);
            cmd.Parameters.AddWithValue("@toid", to_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtUser);
            CloseConnection();
            return dtUser;
        }
        //Check to mail id
        public DataTable CheckMailId()
        {
            OpenConnection();
            DataTable dtCheckMail = new DataTable();
            SqlCommand cmd = new SqlCommand("select Email_Id from User_Details where Email_Id=@toid", con);
            cmd.Parameters.AddWithValue("@toid", to_id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtCheckMail);
            CloseConnection();
            return dtCheckMail;
        }

        //Insert Inbox Mail
        public void InsertInboxMail()
        {
            OpenConnection();
            string qry = "insert into Mail_Msg values(@sfrommsid,@stomail,@sub,@message,@sdate,'Inbox')";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sfrommsid", fromMail);
            cmd.Parameters.AddWithValue("@stomail", to_id);
            cmd.Parameters.AddWithValue("@sub", subject);
            cmd.Parameters.AddWithValue("@message", msg);
            cmd.Parameters.AddWithValue("@sdate", date);
            //cmd.Parameters.AddWithValue("@sflag", flagg);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //Insert Sent Mail
        public void InsertSentMail()
        {
            OpenConnection();
            string qry = "insert into Mail_Msg values(@sfrommsid,@stomail,@sub,@message,@sdate,'Sent Mail')";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sfrommsid", fromMail);
            cmd.Parameters.AddWithValue("@stomail", to_id);
            cmd.Parameters.AddWithValue("@sub", subject);
            cmd.Parameters.AddWithValue("@message", msg);
            cmd.Parameters.AddWithValue("@sdate", date);
            //cmd.Parameters.AddWithValue("@sflag", flagg);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //Delete Inbox Mail
        public void DeleteMail()
        {
            OpenConnection();
            string qry = "delete from Mail_Msg where mid=@midd ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@midd", mid);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        //Fetch reply
        public DataTable ReadMail()
        {
            OpenConnection();
            DataTable dtReply = new DataTable();
            SqlCommand cmd = new SqlCommand("select * from Mail_Msg where mid=@smid", con);
            cmd.Parameters.AddWithValue("@smid", mid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReply);
            CloseConnection();
            return dtReply;
        }
    }
}
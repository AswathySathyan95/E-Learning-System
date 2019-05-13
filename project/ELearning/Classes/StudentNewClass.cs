using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace ELearning.Classes
{
    public class StudentNewClass
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
        //notes
        private string userid;
        private string subject;
        private string topic;
        private string doctype;
        //query
        private string query;
        private DateTime date;
        private string queryid;
        private int replycount;
        private int qryid;
        private int quizcount;

        public string Userid { get => userid; set => userid = value; }
        public string Subject { get => subject; set => subject = value; }
        public string Topic { get => topic; set => topic = value; }
        public string Doctype { get => doctype; set => doctype = value; }
        public string Query { get => query; set => query = value; }
        public DateTime Date { get => date; set => date = value; }
        public string Queryid { get => queryid; set => queryid = value; }
        public int Replycount { get => replycount; set => replycount = value; }
        public int Quizcount { get => quizcount; set => quizcount = value; }
        public int Qryid { get => qryid; set => qryid = value; }


        //Fetch subject
        public DataTable FetchSubject()
        {
            OpenConnection();
            DataTable dtSubject = new DataTable();
            SqlCommand command = new SqlCommand("Select distinct Subject from Uploaded_Document", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtSubject);
            CloseConnection();
            return dtSubject;
        }
        //Fetch topic
        public DataTable FetchTopic()
        {
            OpenConnection();
            DataTable dtTopic = new DataTable();
            SqlCommand command = new SqlCommand("Select distinct Topic from Uploaded_Document where Subject=@sub", con);
            command.Parameters.AddWithValue("@sub", subject);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtTopic);
            CloseConnection();
            return dtTopic;
        }
        //fetch document details
        public DataTable FetchDocument()
        {
            OpenConnection();
            DataTable dtDocument = new DataTable();
            SqlCommand command = new SqlCommand("Select Doc_Id,Document_File,Description from Uploaded_Document where Subject=@sub and Topic=@top and Status='Verified' and Doc_Type=@type", con);
            command.Parameters.AddWithValue("@sub", subject);
            command.Parameters.AddWithValue("@top", topic);
            command.Parameters.AddWithValue("@type", doctype);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtDocument);
            CloseConnection();
            return dtDocument;
        }

        //fetch subject name
        public DataTable SubjectDetails()
        {
            OpenConnection();
            DataTable dtSubject = new DataTable();
            SqlCommand command = new SqlCommand("Select Subject from Subject_Details", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtSubject);
            CloseConnection();
            return dtSubject;
        }

        //insert query
        public void QueryInsert()
        {
            OpenConnection();
            /*SqlCommand command = new SqlCommand("select count(Query_Id) from Query_Details", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
                count++;
            }
            else
            {
                count = 1;
            }
            queryid = "Qry" + count;*/
            string qry = "insert into Query_Details values (@user,@sub,@query,@date)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@user", userid);
            cmd.Parameters.AddWithValue("@sub", subject);
            cmd.Parameters.AddWithValue("@query", query);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //fetch student details
        public DataTable StudentDetails()
        {
            OpenConnection();
            DataTable dtDetails = new DataTable();
            SqlCommand command = new SqlCommand("Select * from User_Details where User_Id=@userid", con);
            command.Parameters.AddWithValue("@userid", userid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtDetails);
            CloseConnection();
            return dtDetails;
        }

        //fetch qualification details
        public DataTable QualificationDetails()
        {
            OpenConnection();
            DataTable dtDetails = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Qualification where User_Id=@userid", con);
            command.Parameters.AddWithValue("@userid", userid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtDetails);
            CloseConnection();
            return dtDetails;
        }

        //Total quiz attended
        public int getQuizCount()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Quiz_Id) from Quiz_Report where User_Id=@suser", con);
            command.Parameters.AddWithValue("@suser", userid);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                Quizcount = (int)cnt;

            }
            return Quizcount;
        }

        public int getreplycount()
        {
            SqlCommand command = new SqlCommand("select count(Reply_id) from Query_Reply where Query_Id=@qrid", con);
            command.Parameters.AddWithValue("@qrid", Qryid);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                replycount = (int)cnt;

            }
            return replycount;
        }
        public int getQueryId()
        {
            OpenConnection();
            SqlCommand command1 = new SqlCommand("select Query_Id from Query_Details where QUser_Id=@suser", con);
            command1.Parameters.AddWithValue("@suser", userid);
            object cnt1 = command1.ExecuteScalar();
            if (cnt1 != DBNull.Value)
            {
                qryid = (int)cnt1;

            }
            else
            {
                qryid = 0;
            }
            return qryid;
        }

        public DataTable FetchQueryReply()
        {
            OpenConnection();
            DataTable dtReplyQ = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Query_Reply where Query_Id=@qyid", con);
            command.Parameters.AddWithValue("@qyid", Qryid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtReplyQ);
            CloseConnection();
            return dtReplyQ;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ELearning.Classes
{
    public class FacultyClass
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
        private string nDept;
        private string nSubject;
        private string nTopic;
        private string notes;
        private string userid;
        private string doc_type;
        private string doc_id;

        private string rDept;
        private string rSubject;
        private string rTopic;
        private string rDescription;
        private string reports;

        public string NDept { get => nDept; set => nDept = value; }
        public string NSubject { get => nSubject; set => nSubject = value; }
        public string NTopic { get => nTopic; set => nTopic = value; }
        public string Notes { get => notes; set => notes = value; }
        public string Userid { get => userid; set => userid = value; }
        public string Doc_type { get => doc_type; set => doc_type = value; }
        public string Doc_id { get => doc_id; set => doc_id = value; }
        public string RDept { get => rDept; set => rDept = value; }
        public string RSubject { get => rSubject; set => rSubject = value; }
        public string RTopic { get => rTopic; set => rTopic = value; }
        public string RDescription { get => rDescription; set => rDescription = value; }
        public string Reports { get => reports; set => reports = value; }

        public DataTable FetchDept()
        {
            OpenConnection();
            DataTable dtDept = new DataTable();
            SqlCommand command = new SqlCommand("Select B_Id,Branch_Name from Branch_Details", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtDept);
            CloseConnection();
            return dtDept;
        }
        public DataTable FetchSubject()
        {
            OpenConnection();
            DataTable dtSubject = new DataTable();
            SqlCommand command = new SqlCommand("Select s.Sub_Id,s.Subject from Subject_Details s inner join Branch_Details b on s.Dept_Id=b.B_Id where b.Branch_Name='" + nDept + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtSubject);
            CloseConnection();
            return dtSubject;
        }

        public void UploadNotes()
        {
            OpenConnection();
            doc_type = "Notes";
            SqlCommand command = new SqlCommand("select count(Doc_Id) from Uploaded_Document where Doc_Type = '" + doc_type + "'", con);
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
            doc_id = "Note" + count;
            string qry = "insert into Uploaded_Document(Doc_Id,Doc_Type,User_Id,Subject,Topic,Document_File)values('" + doc_id + "','" + doc_type + "',@suserid,@sub,@stopic,@path)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@suserid", userid);
            cmd.Parameters.AddWithValue("@sub", nSubject);
            cmd.Parameters.AddWithValue("@stopic", nTopic);
            cmd.Parameters.AddWithValue("@path", notes);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        public void UploadReports()
        {
            OpenConnection();
            doc_type = "Reports";
            SqlCommand command = new SqlCommand("select count(Doc_Id) from Uploaded_Document where Doc_Type = '" + doc_type + "'", con);
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
            doc_id = "Report" + count;
            string qry = "insert into Uploaded_Document(Doc_Id,Doc_Type,User_Id,Subject,Topic,Document_File,Description)values('" + doc_id + "','" + doc_type + "',@ruserid,@rsub,@rtopic,@rpath,@rdscrptn)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@ruserid", userid);
            cmd.Parameters.AddWithValue("@rsub", rSubject);
            cmd.Parameters.AddWithValue("@rtopic", rTopic);
            cmd.Parameters.AddWithValue("@rpath", reports);
            cmd.Parameters.AddWithValue("@rdscrptn", rDescription);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
    }
}
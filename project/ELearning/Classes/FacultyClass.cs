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

        //Add Category
        private string c_id;
        private string q_category;
        private string sub_category;
        private string cdate;
        private string user_id;
        //Add Questions
        private string ctgy;
        private string q_id;
        private string sub_catgy;
        private string qustn;
        private string optnA;
        private string optnB;
        private string optnC;
        private string optnD;
        private string answer;
        private string ans_description;
        private string created_by;
        private string created_on;

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
        public string C_id { get => c_id; set => c_id = value; }
        public string Q_category { get => q_category; set => q_category = value; }
        public string Sub_category { get => sub_category; set => sub_category = value; }
        public string Cdate { get => cdate; set => cdate = value; }
        public string User_id { get => user_id; set => user_id = value; }
        public string Ctgy { get => ctgy; set => ctgy = value; }
        public string Q_id { get => q_id; set => q_id = value; }
        public string Sub_catgy { get => sub_catgy; set => sub_catgy = value; }
        public string Qustn { get => qustn; set => qustn = value; }
        public string OptnA { get => optnA; set => optnA = value; }
        public string OptnB { get => optnB; set => optnB = value; }
        public string OptnC { get => optnC; set => optnC = value; }
        public string OptnD { get => optnD; set => optnD = value; }
        public string Answer { get => answer; set => answer = value; }
        public string Ans_description { get => ans_description; set => ans_description = value; }
        public string Created_by { get => created_by; set => created_by = value; }
        public string Created_on { get => created_on; set => created_on = value; }

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

        //Fetching category from the table Quiz_Category
        public DataTable FetchCategory()
        {
            OpenConnection();
            DataTable dtCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select C_Id,Category,Sub_Category from Quiz_Category", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtCategory);
            CloseConnection();
            return dtCategory;
        }

        //Fetching Sub category from the table Quiz_Category
        public DataTable FetchSubCategory()
        {
            OpenConnection();
            DataTable dtSubCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select C_Id,Sub_Category from Quiz_Category where Category=@sctgry", con);
            command.Parameters.AddWithValue("@sctgry", ctgy);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtSubCategory);
            CloseConnection();
            return dtSubCategory;
        }

        //Adding Category List into the table
        public void CategoryDetails()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(C_Id) from Quiz_Category", con);
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
            q_id = "Ctgry" + count;
            string qry = "insert into Quiz_Category(C_Id,Category,Sub_Category,Created_On,Created_By)values('" + q_id + "',@qcategory,@ssubctgry,@scdate,@suserid)";
            SqlCommand cmd = new SqlCommand(qry, con);

            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //Inserting Quiz Questions into the table
        public void InsertQuestions()
        {
            OpenConnection();
            string qry = "insert into Quiz_Questions(Q_Id,Category_Id,Question,Option_A,Option_B,Option_C,Option_D,Answer,Description,Created_By,Created_On)values('" + q_id + "',@ssub_ctgyId,@squstn,@soptnA,@soptnB,@soptnC,@soptnD,@sanswer,@sans_dscrptn,@screatedby,@screatedon)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@ssub_ctgyId", sub_catgy);
            cmd.Parameters.AddWithValue("@squstn", qustn);
            cmd.Parameters.AddWithValue("@soptnA", optnA);
            cmd.Parameters.AddWithValue("@soptnB", optnB);
            cmd.Parameters.AddWithValue("@soptnC", optnC);
            cmd.Parameters.AddWithValue("@soptnD", optnD);
            cmd.Parameters.AddWithValue("@sanswer", answer);
            cmd.Parameters.AddWithValue("@sans_dscrptn", ans_description);
            cmd.Parameters.AddWithValue("@screatedby", created_by);
            cmd.Parameters.AddWithValue("@screatedon", created_on);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //Generate Question Id
        public string GenerateQId()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Q_Id) from Quiz_Questions", con);
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
            q_id = "Qstn" + count;
            return q_id;
        }
    }
}
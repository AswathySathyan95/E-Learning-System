using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ELearning.Classes
{
    public class FacultyNewClass
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

        //fetch query
        private string quserid;
        private string ruserid;
        private string query;
        private DateTime qdate;
        private DateTime rdate;
        private string subject;
        private int querycount;
        private string queryid;
        //reply
        private string reply;
        //quiz report
        private string branch;
        private string semseter;
        private string dept;
        private string userid;
        private string fdept;
        private int qstn_count;
        private string ctgry;
        //Doc Delete
        private string doc_type;
        private string facultyid;
        private string docUser;
        private string docid;

        public string Quserid { get => quserid; set => quserid = value; }
        public string Ruserid { get => ruserid; set => ruserid = value; }
        public string Query { get => query; set => query = value; }
        public DateTime Qdate { get => qdate; set => qdate = value; }
        public DateTime Rdate { get => rdate; set => rdate = value; }
        public string Subject { get => subject; set => subject = value; }
        public int Querycount { get => this.querycount; set => this.querycount = value; }
        public string Queryid { get => queryid; set => queryid = value; }
        public string Reply { get => reply; set => reply = value; }
        public string Branch { get => branch; set => branch = value; }
        public string Semseter { get => semseter; set => semseter = value; }
        public string Dept { get => dept; set => dept = value; }
        public string Userid { get => userid; set => userid = value; }
        public string Fdept { get => fdept; set => fdept = value; }
        public string Ctgry { get => ctgry; set => ctgry = value; }
        public int Qstn_count { get => qstn_count; set => qstn_count = value; }
        public string Doc_type { get => doc_type; set => doc_type = value; }
        public string Facultyid { get => facultyid; set => facultyid = value; }
        public string DocUser { get => docUser; set => docUser = value; }
        public string Docid { get => docid; set => docid = value; }

        public DataTable FetchSubject()
        {
            OpenConnection();
            DataTable dtsub = new DataTable();
            SqlCommand command = new SqlCommand("Select distinct Subject from Common_Query", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtsub);
            CloseConnection();
            return dtsub;
        }

        public DataTable FetchQuery()
        {
            OpenConnection();
            DataTable dtquery = new DataTable();
            SqlCommand command = new SqlCommand("select q.Query_Id,q.Doc_Id,d.Name,q.Date,q.Query,u.Document_File from Query_Details q join Uploaded_Document u on q.Doc_Id=u.Doc_Id join User_Details d on q.QUser_Id=d.User_Id where q.Subject=@sub", con);
            command.Parameters.AddWithValue("@sub", subject);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtquery);
            CloseConnection();
            return dtquery;
        }

        public DataTable FetchCommonQuery()
        {
            OpenConnection();
            DataTable dtquery = new DataTable();
            SqlCommand command = new SqlCommand("select q.Query_Id,d.Name,q.Date,q.Query from Common_Query q join User_Details d on q.QUser_Id=d.User_Id where q.Subject=@sub", con);
            command.Parameters.AddWithValue("@sub", subject);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtquery);
            CloseConnection();
            return dtquery;
        }

        public int getquerycount()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(q.Query_Id) from Query_Details q join Uploaded_Document u on u.Doc_Id=q.Doc_Id where u.User_Id=@userid", con);
            command.Parameters.AddWithValue("@userid", userid);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                querycount = (int)cnt;

            }
            return querycount;
        }

        public int getDocumentcount()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Doc_Id) from Uploaded_Document where User_Id=@userid", con);
            command.Parameters.AddWithValue("@userid", userid);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                querycount = (int)cnt;

            }
            return querycount;
        }

        public DataTable QueryDetails()
        {
            OpenConnection();
            DataTable dtquery = new DataTable();
            SqlCommand command = new SqlCommand("select d.Name,q.Query from Query_Details q join User_Details d on q.QUser_Id=d.User_Id where q.Query_Id=@qid", con);
            command.Parameters.AddWithValue("@qid", queryid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtquery);
            CloseConnection();
            return dtquery;
        }

        public void ReplyCommon()
        {
            OpenConnection();
            string qry = "insert into Common_Reply values(@qid,@ruser,@reply,@rdate)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@qid", queryid);
            cmd.Parameters.AddWithValue("@ruser", ruserid);
            cmd.Parameters.AddWithValue("@reply", reply);
            cmd.Parameters.AddWithValue("@rdate", rdate);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //save query reply
        public void InsertReply()
        {
            OpenConnection();
            string qry = "insert into Query_Reply values(@qid,@ruser,@reply,@rdate)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@qid", queryid);
            cmd.Parameters.AddWithValue("@ruser", ruserid);
            cmd.Parameters.AddWithValue("@reply", reply);
            cmd.Parameters.AddWithValue("@rdate", rdate);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //fetch Department
        public string Department()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select Department from User_Details where User_Id=@user", con);
            command.Parameters.AddWithValue("@user",userid );
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                fdept = (string)cnt;
            }
            return fdept;
        }

        //fetch branch
        public DataTable BranchDetails()
        {
            OpenConnection();
            DataTable dtbranch = new DataTable();
            SqlCommand command = new SqlCommand("Select B_Id,Branch_Name from Branch_Details b join User_Details u on b.B_Id=u.Branch", con);
            command.Parameters.AddWithValue("@deptmnt", dept);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtbranch);
            CloseConnection();
            return dtbranch;
        }

        //Fetch name
        public DataTable NameDetails()
        {
            OpenConnection();
            DataTable dtName = new DataTable();
            SqlCommand command = new SqlCommand("Select User_Id,Name from User_Details where Branch=@brnch and Semester=@sem", con);
            command.Parameters.AddWithValue("@brnch", branch);
            command.Parameters.AddWithValue("@sem", semseter);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtName);
            CloseConnection();
            return dtName;
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

        //fetch Faculty details
        public DataTable FacultyDetails()
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

        //fetch Experience details
        public DataTable ExperienceDetails()
        {
            OpenConnection();
            DataTable dtExp = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Experience where User_Id=@userid", con);
            command.Parameters.AddWithValue("@userid", userid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtExp);
            CloseConnection();
            return dtExp;
        }

        //fetch qualification details
        public DataTable QuizReport()
        {
            OpenConnection();
            DataTable dtQuiz = new DataTable();
            SqlCommand command = new SqlCommand("Select r.Quiz_Id,u.Name,r.Date,r.SubCategory,r.Start_Time,r.End_Time,r.Correct_Answer,r.Incorrect_Answer,r.Attended_Qusers,r.Total_Score from Quiz_Report r left join User_Details u on u.User_Id=r.User_Id where u.Branch=@sbranch and u.Semester=@sem", con);
            command.Parameters.AddWithValue("@sbranch", branch);
            command.Parameters.AddWithValue("@sem", semseter);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQuiz);
            CloseConnection();
            return dtQuiz;
        }

        //Fetching category from the table Quiz_Category
        public DataTable FetchCategory()
        {
            OpenConnection();
            DataTable dtCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select SubCat_Id,SubCategory from Quiz_Subcategory", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtCategory);
            CloseConnection();
            return dtCategory;
        }

        //Fetch Questions
        public DataTable FetchQuestions()
        {
            OpenConnection();
            DataTable dtQuestions = new DataTable();
            SqlCommand command = new SqlCommand("Select Q_Id,Question,Option_A,Option_B,Option_C,Option_D,Answer,Description from Quiz_Questions  where Category_Id=@Subid", con);
            command.Parameters.AddWithValue("@Subid", Ctgry);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQuestions);
            CloseConnection();
            return dtQuestions;
        }

        //Get Question count
        public int getQuestionCount()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Q_Id) from Quiz_Questions", con);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                Qstn_count = (int)cnt;
            }
            return Qstn_count;
        }

        //Fetch Questions
        public DataTable FetchDocuments()
        {
            OpenConnection();
            DataTable dtDocument = new DataTable();
            SqlCommand command = new SqlCommand("Select Doc_Id,Subject,Topic,Description,Status,Document_File from Uploaded_Document where Doc_Type=@doctype and User_Id=@user", con);
            command.Parameters.AddWithValue("@doctype", doc_type);
            command.Parameters.AddWithValue("@user", facultyid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtDocument);
            CloseConnection();
            return dtDocument;
        }

        public DataTable FetchSubjectDoc()
        {
            OpenConnection();
            DataTable dtSubject = new DataTable();
            SqlCommand command = new SqlCommand("select Subject from Subject_Details where B_Id in (select B_Id from Branch_Details where Dept_Id in (select Department from User_Details where User_Id=@uid))", con);
            command.Parameters.AddWithValue("@uid", userid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtSubject);
            CloseConnection();
            return dtSubject;
        }

        //Delete Documents
        public void DeleteDocument()
        {
            OpenConnection();
            string qry = "delete from Uploaded_Document where Doc_Id=@dcid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@dcid", docid);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
    }
}
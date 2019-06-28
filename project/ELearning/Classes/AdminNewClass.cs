using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace ELearning.Classes
{
    public class AdminNewClass
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

        //total quiz
        private int quizcount;
        private int qstn_count;
        private string ctgry;
        private string id;
        private string subject;
        private string rqueryid;
        //view reply
        private string qryid;
        private string branch;
        private string semester;
        private string userid;
        private int studcount;
        private string dept;
        private string fuserid;
        private string usertype;
        //Department
        private string department;
        private string prgmid;
        //Course Registration
        private string subjectDetail;
        private int bid;

        private string username;

        public int Quizcount { get => quizcount; set => quizcount = value; }
        public int Qstn_count { get => qstn_count; set => qstn_count = value; }
        public string Ctgry { get => ctgry; set => ctgry = value; }
        public string Id { get => id; set => id = value; }
        public string Subject { get => subject; set => subject = value; }
        public string Rqueryid { get => rqueryid; set => rqueryid = value; }
        public string Qryid { get => qryid; set => qryid = value; }
        public string Branch { get => branch; set => branch = value; }
        public string Semester { get => semester; set => semester = value; }
        public string Userid { get => userid; set => userid = value; }
        public int Studcount { get => studcount; set => studcount = value; }
        public string Dept { get => dept; set => dept = value; }
        public string Fuserid { get => fuserid; set => fuserid = value; }
        public string Usertype { get => usertype; set => usertype = value; }
        public string Department { get => department; set => department = value; }
        public string Prgmid { get => prgmid; set => prgmid = value; }
        public string SubjectDetail { get => subjectDetail; set => subjectDetail = value; }
        public int Bid { get => bid; set => bid = value; }
        public string Username { get => username; set => username = value; }

        //Get Quiz Count
        public int getCountQuiz()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Quiz_Id) from Quiz_Report", con);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                quizcount = (int)cnt;
            }
            return quizcount;
        }

        //Get Question count
        public int getQuestionCount()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Q_Id) from Quiz_Questions", con);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                qstn_count = (int)cnt;
            }
            return qstn_count;
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
        //Fetch department
        public DataTable DepartmentView()
        {
            OpenConnection();
            DataTable dtDeptmnt = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Department_Details", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtDeptmnt);
            CloseConnection();
            return dtDeptmnt;
        }

        //Fetch Questions
        public DataTable FetchQuestions()
        {
            OpenConnection();
            DataTable dtQuestions = new DataTable();
            SqlCommand command = new SqlCommand("Select Q_Id,Question,Option_A,Option_B,Option_C,Option_D,Answer,Description from Quiz_Questions  where Category_Id=@Subid", con);
            command.Parameters.AddWithValue("@Subid", ctgry);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQuestions);
            CloseConnection();
            return dtQuestions;
        }

        //Delete Question
        public void DeleteQuestion()
        {
            OpenConnection();
            string qry = "delete from Quiz_Questions where Q_Id=@qqid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@qqid", id);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        public DataTable querysubject()
        {
            OpenConnection();
            DataTable dtsub = new DataTable();
            SqlCommand command = new SqlCommand("Select distinct Subject from Query_Details", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtsub);
            CloseConnection();
            return dtsub;
        }
        public DataTable FetchQuery()
        {
            OpenConnection();
            DataTable dtquery = new DataTable();
            SqlCommand command = new SqlCommand("Select QUser_Id,Date,Query,Query_Id from Query_Details where Subject=@sub", con);
            command.Parameters.AddWithValue("@sub", subject);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtquery);
            CloseConnection();
            return dtquery;
        }

        //Delete Query
        public void DeleteQuery()
        {
            OpenConnection();
            string qry = "delete from Query_Details where Query_Id=@qqid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@qqid", id);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //Delete Reply
        public void DeleteReply()
        {
            OpenConnection();
            string qry = "delete from Query_Reply where Reply_id=@qqid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@qqid", id);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //fetch replies
        public DataTable FetchReply()
        {
            OpenConnection();
            DataTable dtreply = new DataTable();
            SqlCommand command = new SqlCommand("select RUser_Id,Date,Reply,Reply_id from Query_Reply where Query_Id=@qid ", con);
            command.Parameters.AddWithValue("@qid", qryid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtreply);
            CloseConnection();
            return dtreply;
        }

        //fetch branch
        public DataTable BranchDetails()
        {
            OpenConnection();
            DataTable dtbranch = new DataTable();
            SqlCommand command = new SqlCommand("Select B_Id,Branch_Name from Branch_Details b join User_Details u on b.B_Id=u.Branch", con);
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
            command.Parameters.AddWithValue("@brnch", Branch);
            command.Parameters.AddWithValue("@sem", semester);
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
        public int getStudentCount()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(User_Id) from User_Details where User_Type='Student'", con);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                studcount = (int)cnt;
            }
            return studcount;
        }
        //Fetch faculty name
        public DataTable FacultyNameDetails()
        {
            OpenConnection();
            DataTable dtName = new DataTable();
            SqlCommand command = new SqlCommand("Select User_Id,Name from User_Details where Department=@det and User_Type=@type", con);
            command.Parameters.AddWithValue("@det",dept );
            command.Parameters.AddWithValue("@type", usertype);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtName);
            CloseConnection();
            return dtName;
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
        public DataTable QuizReport()
        {
            OpenConnection();
            DataTable dtQuiz = new DataTable();
            SqlCommand command = new SqlCommand("Select r.Quiz_Id,u.Name,r.Date,r.SubCategory,r.Start_Time,r.End_Time,r.Correct_Answer,r.Incorrect_Answer,r.Attended_Qusers,r.Total_Score from Quiz_Report r left join User_Details u on u.User_Id=r.User_Id where u.Branch=@sbranch and u.Semester=@sem", con);
            command.Parameters.AddWithValue("@sbranch", branch);
            command.Parameters.AddWithValue("@sem", semester);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQuiz);
            CloseConnection();
            return dtQuiz;
        }
        //Add Department 
        public void DepartmentDetails()
        {
            OpenConnection();
            string qry = "insert into Department_Details values(@dept)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@dept", department);
           // cmd.Parameters.AddWithValue("@prgm", prgmid);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        //Check whether department already exists or not
        public DataTable CheckDepartment()
        {
            OpenConnection();
            DataTable dtDept = new DataTable();
            SqlCommand command = new SqlCommand("Select Dept_Id from Department_Details where Department=@sdept", con);
            command.Parameters.AddWithValue("@sdept", department);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtDept);
            CloseConnection();
            return dtDept;
        }

        //fetch Course
        public DataTable FetchCourse()
        {
            OpenConnection();
            DataTable dtCourse = new DataTable();
            SqlCommand command = new SqlCommand("select * from Branch_Details", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtCourse);
            CloseConnection();
            return dtCourse;
        }
        //fetch Course
        public DataTable CheckSubject()
        {
            OpenConnection();
            DataTable dtSubject = new DataTable();
            SqlCommand command = new SqlCommand("select * from Subject_Details where Subject=@sub and B_Id=@bid", con);
            command.Parameters.AddWithValue("@sub", subjectDetail);
            command.Parameters.AddWithValue("@bid", bid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtSubject);
            CloseConnection();
            return dtSubject;
        }

        //fetch name
        public DataTable FetchName()
        {
            OpenConnection();
            DataTable dtName = new DataTable();
            SqlCommand cmd = new SqlCommand("select Name from User_Details where User_Id=@urid", con);
            cmd.Parameters.AddWithValue("@urid", userid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtName);
            CloseConnection();
            return dtName;
        }

        //Insert Subject Details
        public void InsertSubject()
        {
            OpenConnection();
            string qry = "insert into Subject_Details values(@subdet,@sbid)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sbid", bid);
            cmd.Parameters.AddWithValue("@subdet", subjectDetail);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public DataTable Test()
        {
            OpenConnection();
            DataTable dtName = new DataTable();
            SqlCommand cmd = new SqlCommand("select Name,Photo from User_Details where User_Type='Faculty'", con);
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtName);
            CloseConnection();
            return dtName;
        }
    }
}
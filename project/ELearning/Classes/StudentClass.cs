using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

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
        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }
        private string ctgry;
        private string subid;
        private string rsubid;
        private string quiz_category;
        private string seleted_optn;
        private string q_id;
        private string user_id;
        private int qsn_no;
        private int btnqstn;
        //Quiz Report
        private string quiz_id;
        private string quiz_date;
        private string subctgry;
        private DateTime start_time;
        private DateTime end_time;
        private Int32 correct_ans;
        private Int32 wrong_ans;
        private Int32 attended;
        private Int32 score;
        private double percent;
        //values in class
        private int crctans;
        private int wrngans;
        private int attend;
        //quizcount
        private int quizcount;

        public string Ctgry { get => ctgry; set => ctgry = value; }
        public string Subid { get => subid; set => subid = value; }
        public string Rsubid { get => rsubid; set => rsubid = value; }
        public string Quiz_category { get => quiz_category; set => quiz_category = value; }
        public string Seleted_optn { get => seleted_optn; set => seleted_optn = value; }
        public string User_id { get => user_id; set => user_id = value; }
        public int Qsn_no { get => qsn_no; set => qsn_no = value; }
        public string Q_id { get => q_id; set => q_id = value; }
        public int Btnqstn { get => btnqstn; set => btnqstn = value; }
        public string Quiz_id { get => quiz_id; set => quiz_id = value; }
        public string Subctgry { get => subctgry; set => subctgry = value; }
        public int Correct_ans { get => correct_ans; set => correct_ans = value; }
        public int Wrong_ans { get => wrong_ans; set => wrong_ans = value; }
        public int Attended { get => attended; set => attended = value; }
        public int Score { get => score; set => score = value; }
        public double Percent { get => percent; set => percent = value; }
        public string Quiz_date { get => quiz_date; set => quiz_date = value; }
        public int Crctans { get => crctans; set => crctans = value; }
        public int Wrngans { get => wrngans; set => wrngans = value; }
        public int Attend { get => attend; set => attend = value; }
        public DateTime Start_time { get => start_time; set => start_time = value; }
        public DateTime End_time { get => end_time; set => end_time = value; }
        public int Quizcount { get => quizcount; set => quizcount = value; }

        //Fetching Sub category from the table Quiz_Category
        public DataTable FetchSubCategory()
        {
            OpenConnection();
            DataTable dtSubCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select SubCat_Id,SubCategory,Image from Quiz_Subcategory where C_Id=@sctgry", con);
            command.Parameters.AddWithValue("@sctgry", quiz_category);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtSubCategory);
            CloseConnection();
            return dtSubCategory;
        }

        //Fetching category from the table Quiz_Category
        public DataTable FetchCategory()
        {
            OpenConnection();
            DataTable dtCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select C_Id,Category,Image from Quiz_Category", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtCategory);
            CloseConnection();
            return dtCategory;
        }

        public DataTable QuestionFetch()
        {
            OpenConnection();
            DataTable dtqstnno = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Temporary_Qstn where Qstn_No=@qno", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            command.Parameters.AddWithValue("@qno", btnqstn);
            da.Fill(dtqstnno);
            CloseConnection();
            return dtqstnno;
        }

        public DataTable FetchQuizQuestion()
        {
            OpenConnection();
            DataTable dtQuestion = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Temporary_Qstn where Status='Not Attempted'", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQuestion);
            CloseConnection();
            return dtQuestion;
        }

        //Drop Tempoaray_Quiz table
        public void DeteleTable()
        {
            OpenConnection();
            string qry = "drop table Temporary_Qstn";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
        }

        //Update temporary Quiz table
        public void UpdateTemp()
        {
            OpenConnection();
            string qry = "update Temporary_Qstn set Selected_Option=@soptn where Qstn_Id=@qsid";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@soptn", seleted_optn);
            cmd.Parameters.AddWithValue("@qsid", Q_id);
            
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public void UpdateStatus()
        {
            OpenConnection();
            string qry = "update Temporary_Qstn set Status='Attended' where Qstn_Id=@qstid";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@qstid", Q_id);
            //cmd.Parameters.AddWithValue("@qstnno", qsn_no);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public void createtable()
        {
            OpenConnection();
            string qry = "create table Temporary_Qstn(Qstn_No INT IDENTITY(1,1) NOT NULL,Qstn_Id VARCHAR(20),Question VARCHAR(MAX),OptionA VARCHAR(MAX),OptionB VARCHAR(MAX),OptionC VARCHAR(MAX),OptionD VARCHAR(MAX),Answer VARCHAR(MAX),Selected_Option VARCHAR(MAX),Status VARCHAR(MAX) DEFAULT('Not Attempted'))";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //Fetch Correct answer from temporary table
        public int Correct_Answer()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Qstn_No) from Temporary_Qstn tm where tm.Answer=tm.Selected_Option", con);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                Crctans = (int)cnt;
            }
            return Crctans;
        }

        //Fetch wrong answer from temporary table
        public int Wrong_Answer()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Qstn_No) from Temporary_Qstn tm where tm.Answer != tm.Selected_Option and tm.Selected_Option IS NOT NULL", con);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                wrngans = (int)cnt;
            }
            return wrngans;
        }

        //Fetch Correct answer from temporary table
        public int Attended_Qstn()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Qstn_No) from Temporary_Qstn where Status='Attended'", con);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                attend = (int)cnt;
            }
            return attend;
        }

        //insert values into quiz_report table
        public void Quiz_Report()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(Quiz_Id) from Quiz_Report", con);
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
            quiz_id = "Quiz" + count;
            string qry = "insert into Quiz_Report values('"+quiz_id+ "',@cuserid,@cdate,@csub,@stime,@etime,@cans,@wans,@cattend,@cscore,@cper)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@cuserid", user_id);
            cmd.Parameters.AddWithValue("@cdate", quiz_date);
            cmd.Parameters.AddWithValue("@csub", subctgry);
            cmd.Parameters.AddWithValue("@stime", start_time);
            cmd.Parameters.AddWithValue("@etime", end_time);
            cmd.Parameters.AddWithValue("@cans", correct_ans);
            cmd.Parameters.AddWithValue("@wans", wrong_ans);
            cmd.Parameters.AddWithValue("@cattend", attended);
            cmd.Parameters.AddWithValue("@cscore", score);
            cmd.Parameters.AddWithValue("@cper", percent);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        //fetch and insert data into new table
        public void FetchQuestions()
        {
            OpenConnection();
            string qry = "insert into Temporary_Qstn(Qstn_Id,Question,OptionA,OptionB,OptionC,OptionD,Answer)Select top 25 Q_Id,Question,Option_A,Option_B,Option_C,Option_D,Answer from Quiz_Questions where Category_Id=@rsubid ORDER BY NEWID() ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@rsubid", rsubid);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        public string subcategoryid()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select SubCat_Id from Quiz_Subcategory where SubCategory =@cry ", con);
            command.Parameters.AddWithValue("@cry", ctgry);
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                subid = (string)cnt;
                
            }
            return subid;
        }
        

        public DataTable getCategory()
        {
            OpenConnection();
            DataTable dtcategy = new DataTable();
            SqlCommand command = new SqlCommand("SELECT distinct a.SubCategory,a.SubCat_Id FROM Quiz_Subcategory a JOIN Quiz_Report b ON a.SubCat_Id = b.SubCategory WHERE b.User_Id=@user", con);
            command.Parameters.AddWithValue("@user", user_id);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtcategy);
            CloseConnection();
            return dtcategy;
        }

        public DataTable getQuizReports()
        {
            OpenConnection();
            DataTable dtQuizReport = new DataTable();
            SqlCommand command = new SqlCommand("select Date,Start_Time,End_Time,Correct_Answer,Incorrect_Answer,Attended_Qusers,Total_Score from Quiz_Report where User_Id=@user and SubCategory=@sid ORDER BY Total_Score DESC", con);
            command.Parameters.AddWithValue("@user", user_id);
            command.Parameters.AddWithValue("@sid", subid);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQuizReport);
            CloseConnection();
            return dtQuizReport;
        }
    }
}
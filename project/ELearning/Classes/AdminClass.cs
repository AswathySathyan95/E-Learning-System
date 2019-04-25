using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ELearning.Classes
{
    public class AdminClass
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

        private string user_id;
        private string user_type;
        private string name;
        private string gender;
        private double mob_no;
        private DateTime dob;
        private string email;
        private string religion;
        private string category;
        private string blood;
        private string nationality;
        private string photo;
        private string address;
        private string district;
        private string state;
        private Int32 pincode;
        private DateTime doa;
        private string prgm;
        private string branch;
        private string admsn_no;
        private string dept;
        private string f_name;
        private string occupation;
        private double f_mobno;
        private int s_id;
        private int p_id;

        private string qualification;
        private string specialization;
        private string college;
        private string university;
        private double cgpa;
        private double percentage;

        private string organisation;
        private string designation;
        private DateTime from_date;
        private DateTime to_date;
        private string duration;

        private string username;
        private string password;

        private string c_id;
        private string q_category;
        private string sub_category;
        private string cdate;
        private string userid;

        private string ctgy_id;
        private string 

        public string User_id { get => user_id; set => user_id = value; }
        public string User_type { get => user_type; set => user_type = value; }
        public string Name { get => name; set => name = value; }
        public string Gender { get => gender; set => gender = value; }
        public double Mob_no { get => mob_no; set => mob_no = value; }
        public DateTime Dob { get => dob; set => dob = value; }
        public string Email { get => email; set => email = value; }
        public string Religion { get => religion; set => religion = value; }
        public string Category { get => category; set => category = value; }
        public string Blood { get => blood; set => blood = value; }
        public string Nationality { get => nationality; set => nationality = value; }
        public string Photo { get => photo; set => photo = value; }
        public string Address { get => address; set => address = value; }
        public string District { get => district; set => district = value; }
        public string State { get => state; set => state = value; }
        public int Pincode { get => pincode; set => pincode = value; }
        public DateTime Doa { get => doa; set => doa = value; }
        public string Prgm { get => prgm; set => prgm = value; }
        public string Branch { get => branch; set => branch = value; }
        public string Admsn_no { get => admsn_no; set => admsn_no = value; }
        public string Dept { get => dept; set => dept = value; }
        public string F_name { get => f_name; set => f_name = value; }
        public string Occupation { get => occupation; set => occupation = value; }
        public double F_mobno { get => f_mobno; set => f_mobno = value; }
        public int S_id { get => s_id; set => s_id = value; }
        public int P_id { get => p_id; set => p_id = value; }
        public string Qualification { get => qualification; set => qualification = value; }
        public string Specialization { get => specialization; set => specialization = value; }
        public string College { get => college; set => college = value; }
        public string University { get => university; set => university = value; }
        public double Cgpa { get => cgpa; set => cgpa = value; }
        public double Percentage { get => percentage; set => percentage = value; }
        public string Organisation { get => organisation; set => organisation = value; }
        public string Designation { get => designation; set => designation = value; }
        public DateTime From_date { get => from_date; set => from_date = value; }
        public DateTime To_date { get => to_date; set => to_date = value; }
        public string Duration { get => duration; set => duration = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string C_id { get => c_id; set => c_id = value; }
        public string Q_category { get => q_category; set => q_category = value; }
        public string Sub_category { get => sub_category; set => sub_category = value; }
        public string Userid { get => userid; set => userid = value; }
        public string Cdate { get => cdate; set => cdate = value; }

        public DataTable AddDistrict()
        {
            OpenConnection();
            DataTable dtADistrict = new DataTable();
            SqlCommand command = new SqlCommand("Select * from District_Details where S_Id='" + s_id + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtADistrict);
            CloseConnection();
            return dtADistrict;
        }

        public DataTable AdmittedBranch()
        {
            OpenConnection();
            DataTable dtABranch = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Branch_Details where P_Id='" + p_id + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtABranch);
            CloseConnection();
            return dtABranch;
        }

        public DataTable FetchCategory()
        {
            OpenConnection();
            DataTable dtCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select C_Id,Category,Sub_Category from Quiz_Category", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtCategory);
            CloseConnection();
            return dtCategory;
        }

        public DataTable FetchSubCategory()
        {
            OpenConnection();
            DataTable dtSubCategory = new DataTable();
            SqlCommand command = new SqlCommand("Select Sub_Category from Quiz_Category where C_Id=", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtSubCategory);
            CloseConnection();
            return dtSubCategory;
        }

        public DataTable RegAdmittedBranch()
        {
            OpenConnection();
            DataTable dtARegBranch = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Branch_Details  ", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtARegBranch);
            CloseConnection();
            return dtARegBranch;
        }

        public DataTable QualificationDetails()
        {
            OpenConnection();
            DataTable dtQual = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Qualification where User_Id='" + user_id + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtQual);
            CloseConnection();
            return dtQual;
        }

        public void InsertDetails()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(User_Id) from User_Details where User_Type = '" + user_type + "'", con);
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
            if (user_type == "Faculty")
            {
                user_id = "Fclty" + Convert.ToString(count);
            }
            else if (user_type == "Student")
            {
                user_id = "Stud" + Convert.ToString(count);
            }
            else if (user_type == "Admin")
            {
                user_id = "Admin" + Convert.ToString(count);
            }

            //       string qry = "insert into User_Details values('"+user_id+ "','"+user_type+"','"+name+"','"+gender+"','"+mob_no+"','"+dob+"','"+email+"','"+religion+"','"+category+"','"+nationality+"','"+blood_group+"','"+photo+"','"+address+"','"+district+"','"+state+"','"+pincode+"','"+f_name+"','"+occupation+"','"+f_mobno+"','"+doa+"','"+program+"','"+branch+"','"+dept+"','"+admission_no+"','"+username+"','"+password+"')";
            string qry = "insert into User_Details(User_Id,User_Type,Name,Gender,Mobile_No,Dob,Email_Id,Religion,Category,Nationality,Blood_Group,Photo,Address,District,State,Pincode,Father_Name,Occupation,F_Mob_No,Joining_Date,Admitted_Program,Branch,Department,Admission_No) values('" + user_id + "',@utype,@sname,@sgender,@smobno,@sdob,@semail,@sreligion,@scategory,@snationality,@sblood,@sphoto,@saddress,@sdistrict,@sstate,@spincode,@sfname,@soccupation,@sfmobno,@sdoa,@sprogram,@sbranch,@sdept,@sadmsnno)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sname", name);
            cmd.Parameters.AddWithValue("@sgender", gender);
            cmd.Parameters.AddWithValue("@smobno", mob_no);
            cmd.Parameters.AddWithValue("@sdob", dob);
            cmd.Parameters.AddWithValue("@semail", email);
            cmd.Parameters.AddWithValue("@sreligion", religion);
            cmd.Parameters.AddWithValue("@scategory", category);
            cmd.Parameters.AddWithValue("@snationality", nationality);
            cmd.Parameters.AddWithValue("@sblood", blood);
            cmd.Parameters.AddWithValue("@saddress", address);
            cmd.Parameters.AddWithValue("@sdistrict", district);
            cmd.Parameters.AddWithValue("@sstate", state);
            cmd.Parameters.AddWithValue("@spincode", pincode);
            cmd.Parameters.AddWithValue("@sdoa", doa);
            cmd.Parameters.AddWithValue("@sprogram", prgm);
            cmd.Parameters.AddWithValue("@sbranch", branch);
            cmd.Parameters.AddWithValue("@sadmsnno", admsn_no);
            cmd.Parameters.AddWithValue("@sdept", dept);
            cmd.Parameters.AddWithValue("@sfname", f_name);
            cmd.Parameters.AddWithValue("@soccupation", occupation);
            cmd.Parameters.AddWithValue("@sfmobno", f_mobno);
            cmd.Parameters.AddWithValue("@sphoto", photo);
            cmd.Parameters.AddWithValue("@utype", user_type);
            cmd.ExecuteNonQuery();
            //ExecuteQueries(qry);
            CloseConnection();
        }

        public void RegInsertDetails()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(User_Id) from User_Details where User_Type = '" + user_type + "'", con);
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
            if (user_type == "Faculty")
            {
                user_id = "Fclty" + Convert.ToString(count);
            }
            else if (user_type == "Student")
            {
                user_id = "Stud" + Convert.ToString(count);
            }
            else if (user_type == "Admin")
            {
                user_id = "Admin" + Convert.ToString(count);
            }

            //string qry = "insert into User_Details values('"+user_id+ "','"+user_type+"','"+name+"','"+gender+"','"+mob_no+"','"+dob+"','"+email+"','"+religion+"','"+category+"','"+nationality+"','"+blood_group+"','"+photo+"','"+address+"','"+district+"','"+state+"','"+pincode+"','"+f_name+"','"+occupation+"','"+f_mobno+"','"+doa+"','"+program+"','"+branch+"','"+dept+"','"+admission_no+"','"+username+"','"+password+"')";
            string qry = "insert into User_Details(User_Id,User_Type,Name,Gender,Mobile_No,Dob,Email_Id,Religion,Category,Nationality,Blood_Group,Photo,Address,District,State,Pincode,Father_Name,Occupation,F_Mob_No,Joining_Date,Department,Admission_No) values('" + user_id + "',@utype,@sname,@sgender,@smobno,@sdob,@semail,@sreligion,@scategory,@snationality,@sblood,@sphoto,@saddress,@sdistrict,@sstate,@spincode,@sfname,@soccupation,@sfmobno,@sdoa,@sdept,@sadmsnno)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sname", name);
            cmd.Parameters.AddWithValue("@sgender", gender);
            cmd.Parameters.AddWithValue("@smobno", mob_no);
            cmd.Parameters.AddWithValue("@sdob", dob);
            cmd.Parameters.AddWithValue("@semail", email);
            cmd.Parameters.AddWithValue("@sreligion", religion);
            cmd.Parameters.AddWithValue("@scategory", category);
            cmd.Parameters.AddWithValue("@snationality", nationality);
            cmd.Parameters.AddWithValue("@sblood", blood);
            cmd.Parameters.AddWithValue("@saddress", address);
            cmd.Parameters.AddWithValue("@sdistrict", district);
            cmd.Parameters.AddWithValue("@sstate", state);
            cmd.Parameters.AddWithValue("@spincode", pincode);
            cmd.Parameters.AddWithValue("@sdoa", doa);
            cmd.Parameters.AddWithValue("@sadmsnno", admsn_no);
            cmd.Parameters.AddWithValue("@sdept", dept);
            cmd.Parameters.AddWithValue("@sfname", f_name);
            cmd.Parameters.AddWithValue("@soccupation", occupation);
            cmd.Parameters.AddWithValue("@sfmobno", f_mobno);
            cmd.Parameters.AddWithValue("@sphoto", photo);
            cmd.Parameters.AddWithValue("@utype", user_type);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public void InsertQualification()
        {
            OpenConnection();
            string qry = "insert into Qualification values('" + user_id + "',@squal,@sspecl,@scollege,@suniversity,@scgpa,@spercent)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@squal", qualification);
            cmd.Parameters.AddWithValue("@sspecl", specialization);
            cmd.Parameters.AddWithValue("@scollege", college);
            cmd.Parameters.AddWithValue("@suniversity", university);
            cmd.Parameters.AddWithValue("@scgpa", cgpa);
            cmd.Parameters.AddWithValue("@spercent", percentage);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public void InsertExperience()
        {
            OpenConnection();
            string qry = "insert into Experience values('" + user_id + "',@sorganisation,@sdesignation,@sfrom,@sto,@sduration)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sorganisation", organisation);
            cmd.Parameters.AddWithValue("@sdesignation", designation);
            cmd.Parameters.AddWithValue("@sfrom", from_date);
            cmd.Parameters.AddWithValue("@sto", to_date);
            cmd.Parameters.AddWithValue("@sduration", duration);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public void UpdateRegistration()
        {
            OpenConnection();
            string qry = "update User_Details set Username=@susername,Password=@spassword where User_Id=@suserid";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@suserid", user_id);
            cmd.Parameters.AddWithValue("@susername", Username);
            cmd.Parameters.AddWithValue("@spassword", Password);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }

        public DataTable ExperienceDetails()
        {
            OpenConnection();
            DataTable dtExp = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Experience where User_Id='" + user_id + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dtExp);
            CloseConnection();
            return dtExp;
        }

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
            c_id = "Ctgry" + count;
            string qry = "insert into Quiz_Category(C_Id,Category,Sub_Category,Created_On,Created_By)values('"+c_id+ "',@qcategory,@ssubctgry,@scdate,@suserid)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@qcategory", q_category);
            cmd.Parameters.AddWithValue("@ssubctgry", sub_category);
            cmd.Parameters.AddWithValue("@suserid", userid);
            cmd.Parameters.AddWithValue("@scdate", Cdate);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
    }
}
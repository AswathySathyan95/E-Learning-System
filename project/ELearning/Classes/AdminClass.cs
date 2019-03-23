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
            // Whenever you want to execute a query, like an insert, update or delete
            //query then simply call this function 
            //using the object of a class and pass your query to the function
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }
        private string user_id;
        private string name;
        private string gender;
        private double mob_no;
        private DateTime dob;
        private string email;
        private string religion;
        private string category;
        private string nationality;
        private string blood_group;
        private string photo;
        private string address;
        private string district;
        private string state;
        private int pincode;
        private DateTime doa;
        private string program;
        private string branch;
        private string admission_no;
        private string dept;
        private string f_name;
        private string occupation;
        private double f_mobno;
        private string qualification;
        private string sepcialization;
        private string college;
        private string university;
        private double cgpa;
        private double percent;        
        private string username;
        private string password;
        private string user_type;
        private int p_id;
        private int s_id;
        private string organisation;
        private string designation;
        private DateTime from_date;
        private DateTime to_date;
        private string duration;

        public string User_id
        {
            get
            {
                return user_id;
            }

            set
            {
                user_id = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
            }
        }

       

        public DateTime Dob
        {
            get
            {
                return dob;
            }

            set
            {
                dob = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public string Religion
        {
            get
            {
                return religion;
            }

            set
            {
                religion = value;
            }
        }

        public string Category
        {
            get
            {
                return category;
            }

            set
            {
                category = value;
            }
        }

        public string Nationality
        {
            get
            {
                return nationality;
            }

            set
            {
                nationality = value;
            }
        }

        public string Blood_group
        {
            get
            {
                return blood_group;
            }

            set
            {
                blood_group = value;
            }
        }

        public string Photo
        {
            get
            {
                return photo;
            }

            set
            {
                photo = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }

        public string District
        {
            get
            {
                return district;
            }

            set
            {
                district = value;
            }
        }

        public string State
        {
            get
            {
                return state;
            }

            set
            {
                state = value;
            }
        }

        public int Pincode
        {
            get
            {
                return pincode;
            }

            set
            {
                pincode = value;
            }
        }

        public DateTime Doa
        {
            get
            {
                return doa;
            }

            set
            {
                doa = value;
            }
        }

        public string Program
        {
            get
            {
                return program;
            }

            set
            {
                program = value;
            }
        }

        public string Branch
        {
            get
            {
                return branch;
            }

            set
            {
                branch = value;
            }
        }

        public string Admission_no
        {
            get
            {
                return admission_no;
            }

            set
            {
                admission_no = value;
            }
        }

        public string Dept
        {
            get
            {
                return dept;
            }

            set
            {
                dept = value;
            }
        }

        public string F_name
        {
            get
            {
                return f_name;
            }

            set
            {
                f_name = value;
            }
        }

        public string Occupation
        {
            get
            {
                return occupation;
            }

            set
            {
                occupation = value;
            }
        }
        
        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string User_type
        {
            get
            {
                return user_type;
            }

            set
            {
                user_type = value;
            }
        }

        public double Mob_no
        {
            get
            {
                return mob_no;
            }

            set
            {
                mob_no = value;
            }
        }

        public double F_mobno
        {
            get
            {
                return f_mobno;
            }

            set
            {
                f_mobno = value;
            }
        }

        public int P_id
        {
            get
            {
                return p_id;
            }

            set
            {
                p_id = value;
            }
        }

        public int S_id
        {
            get
            {
                return s_id;
            }

            set
            {
                s_id = value;
            }
        }

        public string Qualification
        {
            get
            {
                return qualification;
            }

            set
            {
                qualification = value;
            }
        }

        public string Sepcialization
        {
            get
            {
                return sepcialization;
            }

            set
            {
                sepcialization = value;
            }
        }

        public string College
        {
            get
            {
                return college;
            }

            set
            {
                college = value;
            }
        }

        public string University
        {
            get
            {
                return university;
            }

            set
            {
                university = value;
            }
        }

        public double Cgpa
        {
            get
            {
                return cgpa;
            }

            set
            {
                cgpa = value;
            }
        }

        public double Percent
        {
            get
            {
                return percent;
            }

            set
            {
                percent = value;
            }
        }

       
        public string Designation
        {
            get
            {
                return designation;
            }

            set
            {
                designation = value;
            }
        }

        public DateTime From_date
        {
            get
            {
                return from_date;
            }

            set
            {
                from_date = value;
            }
        }

        public DateTime To_date
        {
            get
            {
                return to_date;
            }

            set
            {
                to_date = value;
            }
        }

        public string Duration
        {
            get
            {
                return duration;
            }

            set
            {
                duration = value;
            }
        }

        public string Organisation
        {
            get
            {
                return organisation;
            }

            set
            {
                organisation = value;
            }
        }

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
            SqlCommand command = new SqlCommand("Select * from Branch_Details where P_Id='"+p_id+"' ", con);
            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtABranch);
            CloseConnection();
            return dtABranch;
        }
        public DataTable QualificationDetails()
        {
            OpenConnection();
            DataTable dtQual = new DataTable();
            SqlCommand command = new SqlCommand("Select * from Qualification where User_Id='" + user_id+"' ", con);
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
            else
            {
                user_id = "Stud" + Convert.ToString(count);
            }

            //       string qry = "insert into User_Details values('"+user_id+ "','"+user_type+"','"+name+"','"+gender+"','"+mob_no+"','"+dob+"','"+email+"','"+religion+"','"+category+"','"+nationality+"','"+blood_group+"','"+photo+"','"+address+"','"+district+"','"+state+"','"+pincode+"','"+f_name+"','"+occupation+"','"+f_mobno+"','"+doa+"','"+program+"','"+branch+"','"+dept+"','"+admission_no+"','"+username+"','"+password+"')";
            string qry = "insert into User_Details values('" + user_id + "',@utype,@sname,@sgender,@smobno,@sdob,@semail,@sreligion,@scategory,@snationality,@sblood,@sphoto,@saddress,@sdistrict,@sstate,@spincode,@sfname,@soccupation,@sfmobno,@sdoa,@sprogram,@sbranch,@sdept,@sadmsnno,@susername,@spassword)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sname", name);
            cmd.Parameters.AddWithValue("@sgender", gender);
            cmd.Parameters.AddWithValue("@smobno", mob_no);
            cmd.Parameters.AddWithValue("@sdob",dob);
            cmd.Parameters.AddWithValue("@semail",email);
            cmd.Parameters.AddWithValue("@sreligion",religion);
            cmd.Parameters.AddWithValue("@scategory",category);
            cmd.Parameters.AddWithValue("@snationality",nationality);
            cmd.Parameters.AddWithValue("@sblood",blood_group);
            cmd.Parameters.AddWithValue("@saddress",address);
            cmd.Parameters.AddWithValue("@sdistrict",district);
            cmd.Parameters.AddWithValue("@sstate",state);
            cmd.Parameters.AddWithValue("@spincode",pincode);
            cmd.Parameters.AddWithValue("@sdoa",doa);
            cmd.Parameters.AddWithValue("@sprogram",program);
            cmd.Parameters.AddWithValue("@sbranch",branch);
            cmd.Parameters.AddWithValue("@sadmsnno",admission_no);
            cmd.Parameters.AddWithValue("@sdept",dept);
            cmd.Parameters.AddWithValue("@sfname",f_name);
            cmd.Parameters.AddWithValue("@soccupation",occupation);
            cmd.Parameters.AddWithValue("@sfmobno",f_mobno);
            cmd.Parameters.AddWithValue("@sphoto", photo);
            cmd.Parameters.AddWithValue("@utype", user_type);
            cmd.Parameters.AddWithValue("@susername", username);
            cmd.Parameters.AddWithValue("@spassword", password);
            cmd.ExecuteNonQuery();
            //ExecuteQueries(qry);
            CloseConnection();
        }
        public void InsertQualification()
        {
            OpenConnection();
            string qry = "insert into Qualification values('" + user_id + "',@squal,@sspecl,@scollege,@suniversity,@scgpa,@spercent)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@squal",qualification);
            cmd.Parameters.AddWithValue("@sspecl", sepcialization);
            cmd.Parameters.AddWithValue("@scollege", college);
            cmd.Parameters.AddWithValue("@suniversity", university);
            cmd.Parameters.AddWithValue("@scgpa", Cgpa);
            cmd.Parameters.AddWithValue("@spercent", Percent);
            cmd.ExecuteNonQuery();
            CloseConnection();
        }
        public void InsertExperience()
        {
            OpenConnection();
            string qry = "insert into Qualification values('" + user_id + "',@sorganisation,@sdesignation,@sfrom,@sto,@sduration)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@sorganisation", organisation);
            cmd.Parameters.AddWithValue("@sdesignation", designation);
            cmd.Parameters.AddWithValue("@sfrom", from_date);
            cmd.Parameters.AddWithValue("@sto", to_date);
            cmd.Parameters.AddWithValue("@sduration", duration);
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
    }
}

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
        private string sep_pg;
        private string sep_ug;
        private string sep_hse;
        private string sep_sslc;
        private string sep_o1;
        private string sep_o2;
        private string qual_pg;
        private string qual_ug;
        private string qual_hse;
        private string qual_sslc;
        private string qual_o1;
        private string qual_o2;
        private string col_pg;
        private string col_ug;
        private string col_hse;
        private string col_sslc;
        private string col_o1;
        private string col_o2;
        private string u_pg;
        private string u_ug;
        private string u_hse;
        private string u_sslc;
        private string u_o1;
        private string u_o2;
        private string cgpa_pg;
        private string cgpa_ug;
        private string cgpa_hse;
        private string cgpa_sslc;
        private string cgpa_o1;
        private string cgpa_o2;
        private string per_pg;
        private string per_ug;
        private string per_hse;
        private string per_sslc;
        private string per_o1;
        private string per_o2;
        private string username;
        private string password;
        private string user_type;

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

      

        public string Sep_pg
        {
            get
            {
                return sep_pg;
            }

            set
            {
                sep_pg = value;
            }
        }

        public string Sep_ug
        {
            get
            {
                return sep_ug;
            }

            set
            {
                sep_ug = value;
            }
        }

        public string Sep_hse
        {
            get
            {
                return sep_hse;
            }

            set
            {
                sep_hse = value;
            }
        }

        public string Sep_sslc
        {
            get
            {
                return sep_sslc;
            }

            set
            {
                sep_sslc = value;
            }
        }

        public string Sep_o1
        {
            get
            {
                return sep_o1;
            }

            set
            {
                sep_o1 = value;
            }
        }

        public string Sep_o2
        {
            get
            {
                return sep_o2;
            }

            set
            {
                sep_o2 = value;
            }
        }

        public string Qual_pg
        {
            get
            {
                return qual_pg;
            }

            set
            {
                qual_pg = value;
            }
        }

        public string Qual_ug
        {
            get
            {
                return qual_ug;
            }

            set
            {
                qual_ug = value;
            }
        }

        public string Qual_hse
        {
            get
            {
                return qual_hse;
            }

            set
            {
                qual_hse = value;
            }
        }

        public string Qual_sslc
        {
            get
            {
                return qual_sslc;
            }

            set
            {
                qual_sslc = value;
            }
        }

        public string Qual_o1
        {
            get
            {
                return qual_o1;
            }

            set
            {
                qual_o1 = value;
            }
        }

        public string Qual_o2
        {
            get
            {
                return qual_o2;
            }

            set
            {
                qual_o2 = value;
            }
        }

        public string Col_pg
        {
            get
            {
                return col_pg;
            }

            set
            {
                col_pg = value;
            }
        }

        public string Col_ug
        {
            get
            {
                return col_ug;
            }

            set
            {
                col_ug = value;
            }
        }

        public string Col_hse
        {
            get
            {
                return col_hse;
            }

            set
            {
                col_hse = value;
            }
        }

        public string Col_sslc
        {
            get
            {
                return col_sslc;
            }

            set
            {
                col_sslc = value;
            }
        }

        public string Col_o1
        {
            get
            {
                return col_o1;
            }

            set
            {
                col_o1 = value;
            }
        }

        public string Col_o2
        {
            get
            {
                return col_o2;
            }

            set
            {
                col_o2 = value;
            }
        }

        public string U_pg
        {
            get
            {
                return u_pg;
            }

            set
            {
                u_pg = value;
            }
        }

        public string U_ug
        {
            get
            {
                return u_ug;
            }

            set
            {
                u_ug = value;
            }
        }

        public string U_hse
        {
            get
            {
                return u_hse;
            }

            set
            {
                u_hse = value;
            }
        }

        public string U_sslc
        {
            get
            {
                return u_sslc;
            }

            set
            {
                u_sslc = value;
            }
        }

        public string U_o1
        {
            get
            {
                return u_o1;
            }

            set
            {
                u_o1 = value;
            }
        }

        public string U_o2
        {
            get
            {
                return u_o2;
            }

            set
            {
                u_o2 = value;
            }
        }

        public string Cgpa_pg
        {
            get
            {
                return cgpa_pg;
            }

            set
            {
                cgpa_pg = value;
            }
        }

        public string Cgpa_ug
        {
            get
            {
                return cgpa_ug;
            }

            set
            {
                cgpa_ug = value;
            }
        }

        public string Cgpa_hse
        {
            get
            {
                return cgpa_hse;
            }

            set
            {
                cgpa_hse = value;
            }
        }

        public string Cgpa_sslc
        {
            get
            {
                return cgpa_sslc;
            }

            set
            {
                cgpa_sslc = value;
            }
        }

        public string Cgpa_o1
        {
            get
            {
                return cgpa_o1;
            }

            set
            {
                cgpa_o1 = value;
            }
        }

        public string Cgpa_o2
        {
            get
            {
                return cgpa_o2;
            }

            set
            {
                cgpa_o2 = value;
            }
        }

        public string Per_pg
        {
            get
            {
                return per_pg;
            }

            set
            {
                per_pg = value;
            }
        }

        public string Per_ug
        {
            get
            {
                return per_ug;
            }

            set
            {
                per_ug = value;
            }
        }

        public string Per_hse
        {
            get
            {
                return per_hse;
            }

            set
            {
                per_hse = value;
            }
        }

        public string Per_sslc
        {
            get
            {
                return per_sslc;
            }

            set
            {
                per_sslc = value;
            }
        }

        public string Per_o1
        {
            get
            {
                return per_o1;
            }

            set
            {
                per_o1 = value;
            }
        }

        public string Per_o2
        {
            get
            {
                return per_o2;
            }

            set
            {
                per_o2 = value;
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

        public void InsertDetails()
        {
            OpenConnection();
            SqlCommand command = new SqlCommand("select count(User_Id) from User_Details where User_Type = '" + user_type + "'", con);
            int count;
            object cnt = command.ExecuteScalar();
            if (cnt != DBNull.Value)
            {
                count = (int)cnt;
            }
            else
            {
                count = 1;
            }
            if (user_type == "Faculty")
            {
                user_id = "Fclty" + count;
            }
            else
            {
                user_id = "Stud" + count;
            }
            string qry = "insert into User_Details values('"+user_id+ "',@sname,@sgender,@smobno,@sdob,@semail,@sreligion,@scategory,@snationality,@sblood,@saddress,@sdistrict,@sstate,@spincode,@sdoa,@sprogram,@sbranch,@sadmsnno,@sdept,@sfname,@soccupation,@sfmobno)";
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
            ExecuteQueries(qry);
        }
    }
}

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
            private string nsubject;
            private string ntopic;
            private string notes;
            private string userid;
            private string doc_type;
            private string doc_id;

            public string Nsubject
            {
                get
                {
                    return nsubject;
                }

                set
                {
                    nsubject = value;
                }
            }

            public string Ntopic
            {
                get
                {
                    return ntopic;
                }

                set
                {
                    ntopic = value;
                }
            }

            public string Notes
            {
                get
                {
                    return notes;
                }

                set
                {
                    notes = value;
                }
            }

            public string Userid
            {
                get
                {
                    return userid;
                }

                set
                {
                    userid = value;
                }
            }

            public string Doc_type
            {
                get
                {
                    return doc_type;
                }

                set
                {
                    doc_type = value;
                }
            }

            public string Doc_id
            {
                get
                {
                    return doc_id;
                }

                set
                {
                    doc_id = value;
                }
            }

            public void UploadNotes()
            {
                OpenConnection();
                doc_type = "Notes";
                SqlCommand command = new SqlCommand("select count(Doc_Id) from Uploaded_Document where Doc_Type = '"+doc_type+"'", con);
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
                string qry = "insert into Uploaded_Document(Doc_Id,Doc_Type,User_Id,Subject,Topic,Document_File)values('" + doc_id + "','"+doc_type+ "',@suserid,@sub,@stopic,@path)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@suserid", userid);
                cmd.Parameters.AddWithValue("@sub",nsubject);
                cmd.Parameters.AddWithValue("@stopic",ntopic);
                cmd.Parameters.AddWithValue("@path", notes);
                cmd.ExecuteNonQuery();
                CloseConnection();
            }
            public void UploadVideos()
            {
                
            }
   }
}

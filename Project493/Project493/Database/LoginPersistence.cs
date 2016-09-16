using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace Project493.Database
{
    public class LoginPersistence
    {
        String connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        MySqlConnection conn;
        int UID;
       
        public LoginPersistence() { 
            conn = new MySqlConnection(connectionString);
        }
        public Boolean signupPersist(String username,String password, String email,String question,String answer)
        {
            Boolean status = false;
            int uid = new Random().Next();
            String query = "INSERT INTO users (id,username,password,email,question,answer) VALUES (@UID,@user,@pass,@ema,@ques,@ans)";
            conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@UID", uid);
            cmd.Parameters.AddWithValue("@user", username);
            cmd.Parameters.AddWithValue("@pass", password);
            cmd.Parameters.AddWithValue("@ema", email);
            cmd.Parameters.AddWithValue("@Ques", question);
            cmd.Parameters.AddWithValue("@ans", answer);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                status = true;
                
            }catch(Exception ex)
            {
                status = false;
                Console.WriteLine(ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return status;
        }
        public bool checkLogin(String username,String password)
        {
            Boolean status = false;
            String query = "SELECT * from users WHERE username=@usr AND password=@pas";
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@usr", username);
                cmd.Parameters.AddWithValue("@pas", password);
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    UID =Convert.ToInt32( dr.GetValue(0));
                    //yes the user exist
                    status = true;
                    //get the user notes
                    //TODO
                }
                else
                {
                    status = false;
                }

            }catch(Exception ex)
            {
                status = false;
                Console.WriteLine(ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return status;

        }
        public int getUID()
        {
            return this.UID;
        }
    }
   
}
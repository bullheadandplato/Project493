using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace Project493
{
    public class Note
    {
        static String connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        private String title;
        private String text;
        private int UID;
      
        public void setTitle(String title)
        {
            this.title = title;
        }
        public void setText(String text)
        {
            this.text = text;
        }
        public String getTitle()
        {
            return title;
        }
        public String getText()
        {
            return text;
        }
        public void setUID(int uid)
        {
            this.UID = uid;
        }
      
        public Boolean saveNote()
        {

            Boolean status = false;
            int day = System.DateTime.Now.Day;
            int month = DateTime.Now.Month;
            int year = DateTime.Now.Year;

            MySqlConnection conn = new MySqlConnection(connectionString);
            String query = "insert into data (iddata,noteid,title,text,month,day,year) values(@id,@nid,@tit,@tex,@dat,@da,@ya)";
            MySqlCommand cmd = new MySqlCommand(query, conn);
           
            cmd.Parameters.AddWithValue("@id", UID);
            cmd.Parameters.AddWithValue("@nid", new Random().Next());
            cmd.Parameters.AddWithValue("@tit", title);
            cmd.Parameters.AddWithValue("@tex", text);
            cmd.Parameters.AddWithValue("@dat", month);
            cmd.Parameters.AddWithValue("@da", day);
            cmd.Parameters.AddWithValue("@ya", year);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                status = true;
            }catch(Exception ex)
            {
                status = false;
                Console.WriteLine(ex.StackTrace);
            }
            finally
            {
                conn.Close();
            }
            return status;

        }
       public DataTable getAllNotes()
        {
            MySqlConnection conn = new MySqlConnection(connectionString);
            conn.Open();
            String query = "select data.title, data.text from data INNER JOIN users ON data.iddata=users.id WHERE users.id=@uid";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@uid", UID);
            MySqlDataAdapter dr = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            conn.Close();
            return dt;

        }
        public DataTable getNoteOnDate(int day,int month,int year)
        {
            MySqlConnection conn = new MySqlConnection(connectionString);
            conn.Open();
            String query = "select data.title, data.text from data INNER JOIN users ON data.iddata=users.id WHERE users.id=@uid AND data.month=@moh AND data.day=@da AND data.year=@ya";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.Parameters.AddWithValue("@moh", month);
            cmd.Parameters.AddWithValue("@da", day);
            cmd.Parameters.AddWithValue("@ya", year);
            MySqlDataAdapter dr = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            conn.Close();
            return dt;
        }
        public int[] getNoteDatesForMonth(int month, int year)
        {
            MySqlConnection conn = new MySqlConnection(connectionString);
            conn.Open();
            String query = "select data.day from data INNER JOIN users ON data.iddata=users.id WHERE users.id=@uid AND data.month=@moh AND data.year=@ya";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.Parameters.AddWithValue("@moh", month);
            cmd.Parameters.AddWithValue("@ya", year);
            MySqlDataAdapter dr = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            conn.Close();
            int[] temp = new int[dt.Rows.Count];
            int index = 0;
            foreach(DataRow row in dt.Rows)
            {
                temp[index++]= (int)row.ItemArray[0];
            }
            return temp;
        }
    }
   
       
}
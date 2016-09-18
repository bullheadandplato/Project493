﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            String connectionString = "Server=172.16.183.1;DATABASE=NOTES;UID=osama;Password=root";
            MySqlConnection conn = new MySqlConnection(connectionString);
            conn.Open();
            String query = "select data.title, data.text from data INNER JOIN users ON data.iddata=users.id WHERE users.id=@uid";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@uid", 12);
            MySqlDataAdapter dr = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
           foreach(DataRow row in dt.Rows)
            {
                Console.WriteLine(row.ItemArray[0]);
            }
            conn.Close();
            Console.ReadKey();
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
 
 
 
 
public static class Database
{

    public static string connString = WebConfigurationManager.ConnectionStrings["MyFirstSite"].ConnectionString;


    public static DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(connString);
        SqlDataAdapter sda = new SqlDataAdapter(query, conn);
        conn.Open();
        sda.Fill(dt);
        conn.Close();
        return dt;
    }
   
    public static void UpdateData(string query)
    {
        SqlConnection conn = new SqlConnection(connString);
        SqlCommand cmd = new SqlCommand(query, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }
   
    public static void DeleteData(string query)
    {
        SqlConnection conn = new SqlConnection(connString);
        SqlCommand cmd = new SqlCommand(query, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public static void InsertData(string query)
    {
        SqlConnection conn = new SqlConnection(connString);
        SqlCommand cmd = new SqlCommand(query, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


    }

}
 
 
 
    
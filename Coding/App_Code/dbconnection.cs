using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dbconnectiond
/// </summary>
public class dbconnection
{
    SqlConnection scon;
    public dbconnection()
    {
       scon = new SqlConnection("server=DESKTOP-8P9I48M\\SQLEXPRESS;uid=sa;pwd=iamsarvesh;database=healthcare");
       
    }
    public SqlConnection GetConnection()
    {
        return scon;
    }
}
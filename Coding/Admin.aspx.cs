using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{


    SqlConnection scon;
   
    SqlDataAdapter sda;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)

    {

        dbconnection obj = new dbconnection();
        scon = obj.GetConnection();
        sda = new SqlDataAdapter(" select * from cusinfo ;", scon);
        ds = new DataSet();

        sda.Fill(ds, "fil");











    }
}
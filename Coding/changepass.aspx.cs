using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }

    protected void Change(object sender, EventArgs e)
    {
        string id, cpass, newpass, confpass;

        id = TextBox1.Text;
        cpass = TextBox2.Text;
        newpass = TextBox3.Text;
        confpass = TextBox4.Text;



        if (newpass == confpass)
        {
            SqlConnection scon;
            SqlCommand sc;
           

            dbconnection obj = new dbconnection();
            scon = obj.GetConnection();

            scon.Open();
            sc = new SqlCommand("update logininfo set password=@p1 where uid=@p2 and password=@p3;", scon);
            sc.Parameters.AddWithValue("p1", newpass);
            sc.Parameters.AddWithValue("p2", id);
            sc.Parameters.AddWithValue("p3", cpass);
           

            int cnt = sc.ExecuteNonQuery();




            if (cnt > 0)

            {
                Label2.Text ="password changed succefully";
            }
            else
               Label1.Text = "id or password is incorrect";


        }
        else
        {
            Label1.Text = "Password is mismatched";
        }

    }
}
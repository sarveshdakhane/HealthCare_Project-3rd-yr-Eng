using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Recoverpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void findid(object sender, EventArgs e)
    {

        string rid,sq,ansq,newps;
        rid = TextBox1.Text;
        //sq = DropDownList1.SelectedItem.Text;
        ansq = TextBox2.Text;



        SqlConnection scon;
        SqlCommand scmd;
        DataSet ds;
        SqlDataAdapter sda;

        dbconnection obj = new dbconnection();
        scon = obj.GetConnection();
        scmd = new SqlCommand("select * from cusinfo where uid=@p1 and ans=@p2 ;", scon);
        scmd.Parameters.AddWithValue("p1", rid);
        scmd.Parameters.AddWithValue("p2", ansq);
        //scmd.Parameters.AddWithValue("p3", ansq);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds, "ab");

     

        if(ds.Tables["ab"].Rows.Count>0)
        {
            newps = rid.Substring(0, 3) + "$121";
            scmd = new SqlCommand("update logininfo set password=@p1 where uid=@p2;", scon);
            scmd.Parameters.AddWithValue("p1", newps);
            scmd.Parameters.AddWithValue("p2", rid);
            sda = new SqlDataAdapter(scmd);
            sda.Fill(ds);
            

            Label1.Text="Your new password is " + newps;
        }
        else
        {
            Label2.Text = "wrong info";
        }







    }
}
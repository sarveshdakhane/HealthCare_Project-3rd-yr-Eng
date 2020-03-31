using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class personalinfo : System.Web.UI.Page
{
    SqlConnection scon;
    SqlCommand scmd;
    SqlDataAdapter sda;
    DataSet ds;
  



    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            string id = Convert.ToString(Session["userid"]);

            dbconnection obj = new dbconnection();
            scon = obj.GetConnection();
            scmd = new SqlCommand(" select * from cusinfo where uid=@v1 ;", scon);
            scmd.Parameters.AddWithValue("v1", id);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds, "fill");

            string add = Convert.ToString(ds.Tables["fill"].Rows[0]["address"]);
            Session["add"] = add;


            Label1.Text = "Name : "+ Convert.ToString(ds.Tables["fill"].Rows[0]["fname"]);
            Label2.Text = Convert.ToString(ds.Tables["fill"].Rows[0]["lname"]);
            Label3.Text = "Address : " +add ;
            Label4.Text = "Pincode : " + Convert.ToString(ds.Tables["fill"].Rows[0]["pincode"]);
            Label5.Text = "Height : " + Convert.ToString(ds.Tables["fill"].Rows[0]["height"]);
            Label6.Text = "Weight : " + Convert.ToString(ds.Tables["fill"].Rows[0]["weigth"]);
            Label7.Text = "Age: " + Convert.ToString(ds.Tables["fill"].Rows[0]["age"]);
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }


  }

    protected void Change(object sender, EventArgs e)
    {
        try
        {

            string add; int pin, hi, wht, inch, age;

            string id = Convert.ToString(Session["userid"]);

            add = TextBox1.Text;
            pin = Convert.ToInt32(TextBox2.Text);
            hi = Convert.ToInt32(TextBox3.Text);
            wht = Convert.ToInt32(TextBox4.Text);
            inch = Convert.ToInt32(TextBox5.Text);
            age = Convert.ToInt32(TextBox6.Text);



            dbconnection obj1 = new dbconnection();

            scon = obj1.GetConnection();
            scon.Open();
            scmd = new SqlCommand(" update cusinfo set address=@v2 , pincode=@v3, age=@v4, height=@v5, weigth=@v6, inch=@v7 where uid=@v1 ;", scon);
            scmd.Parameters.AddWithValue("v1", id);
            scmd.Parameters.AddWithValue("v2", add);
            scmd.Parameters.AddWithValue("v3", pin);
            scmd.Parameters.AddWithValue("v4", age);
            scmd.Parameters.AddWithValue("v5", hi);
            scmd.Parameters.AddWithValue("v6", wht);
            scmd.Parameters.AddWithValue("v7", inch);

            int cnt = scmd.ExecuteNonQuery();

            if (cnt > 0)

            {

                Response.Redirect("personalinfo.aspx");
                scon.Close();
            }


        }
        

  catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


        

    }


}
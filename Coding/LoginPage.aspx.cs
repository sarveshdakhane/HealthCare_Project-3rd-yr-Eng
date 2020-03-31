using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPage : System.Web.UI.Page
{

    SqlConnection scon;
    SqlDataAdapter sda;
    SqlCommand scmd;
    DataSet dss;
    protected void Page_Load(object sender, EventArgs e)
    {

       
        

    }


    public void checkif(object sender, EventArgs e)
    {
        string uid, psw, tp;
        try
        {


            uid = TextBox1.Text;
            psw = TextBox2.Text;

          

            dbconnection obj = new dbconnection();
            scon = obj.GetConnection();
            scmd = new SqlCommand("select * from logininfo where uid=@v1 and password=@v2;", scon);
            scmd.Parameters.AddWithValue("v1", uid);
            scmd.Parameters.AddWithValue("v2", psw);
            sda = new SqlDataAdapter(scmd);
            dss = new DataSet();
            sda.Fill(dss, "us");

            Session["userid"] = uid;

            int count = dss.Tables["us"].Rows.Count;


        






        if (count > 0)
            {

            tp = Convert.ToString(dss.Tables["us"].Rows[0]["type"]);


            dbconnection obj1 = new dbconnection();
                scmd = new SqlCommand(" select * from cusinfo where uid=@v1 ;", scon);
                scmd.Parameters.AddWithValue("v1", uid);
                sda = new SqlDataAdapter(scmd);
                dss = new DataSet();
                sda.Fill(dss, "fill");
                int cnt = dss.Tables["fill"].Rows.Count;



                int wght = Convert.ToInt32(dss.Tables["fill"].Rows[0]["weigth"]);
                int hgt = Convert.ToInt32(dss.Tables["fill"].Rows[0]["height"]);
                int inch = Convert.ToInt32(dss.Tables["fill"].Rows[0]["inch"]);
                int age = Convert.ToInt32(dss.Tables["fill"].Rows[0]["age"]);

                string gender = Convert.ToString(dss.Tables["fill"].Rows[0]["gender"]);

                Calcu wt = new Calcu();

                int wght1 = wt.CalcuWgt(hgt, inch, age, gender);



              

            if (cnt>0&&wght<wght1)
                {

                    if (tp == "customer")
                        Response.Redirect("Customer.aspx");

                    if (tp == "sadmin")
                        Response.Redirect("Admin.aspx");
                }

                else if (cnt>0 && wght > wght1)
                {


                     if (tp == "customer")
                        Response.Redirect("Customer1.aspx");

                    if (tp == "sadmin")
                        Response.Redirect("Admin.aspx");


                }

                else
                {
                    Label1.Text = "login failed sry try again";
                }
            }

            else { Label1.Text = "login failed sry try again"; }


        }


        catch (Exception er)
        {
            Response.Write(er.Message);
        }






    }
}



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Dieses : System.Web.UI.Page

{

    SqlConnection scon;
    SqlCommand scmd;
    SqlDataAdapter sda;
    DataSet ds;


    string cause, Symptoms, prevention, sel;

    protected void Page_Load(object sender, EventArgs e)
    {

        try


        {


            sel = Convert.ToString(Session["DropDown1"]);

            Label1.Text = sel;


            //string id = Convert.ToString(Session["userid"]);


            dbconnection obj = new dbconnection();
            scon = obj.GetConnection();
            scmd = new SqlCommand("select cause,Symptoms,prevention from Diseasesinfo where Diseases=@p1;", scon);
            scmd.Parameters.AddWithValue("p1", sel);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds, "con");



            string cause = Convert.ToString(ds.Tables["con"].Rows[0]["cause"]);
            string sys = Convert.ToString(ds.Tables["con"].Rows[0]["Symptoms"]);
            string pre = Convert.ToString(ds.Tables["con"].Rows[0]["prevention"]);



            Label3.Text = cause;

            Label4.Text = sys;

            Label5.Text = pre;





            dbconnection opn = new dbconnection();
            scon = opn.GetConnection();

            string id = Convert.ToString(Session["userid"]);
            SqlCommand cmd = new SqlCommand("select * from cusinfo where uid='" + id + "'", scon);

            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            sda.Fill(ds, "filll");

            int pincode = Convert.ToInt32(ds.Tables["filll"].Rows[0]["pincode"]);


            mapframe.Src = "https://www.google.com/maps/embed/v1/place?key=AIzaSyDPFyEGrQ8Jh9GEXoAdPkJ6bSRf0q0FzM0&q=" + Convert.ToString(pincode) + "Hospitals";

        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }



    }
}
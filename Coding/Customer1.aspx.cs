using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer1 : System.Web.UI.Page

{
    SqlConnection scon;
    SqlCommand scmd;
    SqlDataAdapter sda;
    DataSet ds;
    string Disnm, sel = "abc", id;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            //Session["DropDown1"] = DropDownList1.SelectedItem.Text;
            if (!IsPostBack)
            {
                id = Convert.ToString(Session["userid"]);


                dbconnection obj = new dbconnection();
                scon = obj.GetConnection();
                scmd = new SqlCommand("select fname,lname from cusinfo where uid=@v1 ;", scon);
                scmd.Parameters.AddWithValue("v1", id);
                sda = new SqlDataAdapter(scmd);
                ds = new DataSet();
                sda.Fill(ds, "fill");

                Label1.Text = Convert.ToString(ds.Tables["fill"].Rows[0]["fname"]);
                Label2.Text = Convert.ToString(ds.Tables["fill"].Rows[0]["lname"]);




                scon = obj.GetConnection();

                sda = new SqlDataAdapter("select * from Diseasesinfo ;", scon);
                ds = new DataSet();
                sda.Fill(ds, "dis");

                int cnt = ds.Tables["dis"].Rows.Count;

                for (int i = cnt + 1; i <= cnt; i++)
                {

                    Disnm = Convert.ToString(ds.Tables["dis"].Rows[i]["Diseases"]);
                    DropDownList1.Items.Add(new ListItem(Disnm));

                }



            }
        }




        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }


    }





    protected void Jump(object sender, EventArgs e)
    {


        string sel = DropDownList1.Text;
        Session["DropDown1"] = sel;

        Response.Redirect("Dieses.aspx");

    }

}
    

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ResisterForm : System.Web.UI.Page
{
    private object scon;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid, psw, fn, ln, gd, add, pc, mn, sq, ans, dt;
        int ag, hg, wg, inch;
        try
        {


            fn = TextBox1.Text;
            ln = TextBox2.Text;
            uid = TextBox3.Text;
            psw = TextBox4.Text;


            if (RadioButton1.Checked)
                gd = "male";
            else
                gd = "female";

            add = TextBox5.Text;

            pc = TextBox6.Text;

            ag = Convert.ToInt32(TextBox7.Text);

            hg = Convert.ToInt32(TextBox8.Text);

            wg = Convert.ToInt32(TextBox9.Text);

            mn = TextBox10.Text;
            
            sq = DropDownList1.SelectedItem.Text;

            ans = TextBox11.Text;

            dt = TextBox12.Text;

            inch = Convert.ToInt32(TextBox13.Text);

            SqlConnection scon;
            SqlDataAdapter sda;
            SqlCommand scmd;
            DataSet ds;

            scon = new SqlConnection("server=DESKTOP-8P9I48M\\SQLEXPRESS;uid=sa;pwd=iamsarvesh;database= healthcare");

            scmd = new SqlCommand("insert into logininfo values(@p1,@p2,default);", scon);
            scmd.Parameters.AddWithValue("p1", uid);
            scmd.Parameters.AddWithValue("p2", psw);

            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds);

            scmd = new SqlCommand("insert into cusinfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@P10,@P11,@P12,@P13,@p14);", scon);
            scmd.Parameters.AddWithValue("p1", uid);
            scmd.Parameters.AddWithValue("p2", fn);
            scmd.Parameters.AddWithValue("p3", ln);
            scmd.Parameters.AddWithValue("p4", dt);
            scmd.Parameters.AddWithValue("p5", gd);
            scmd.Parameters.AddWithValue("p6", add);
            scmd.Parameters.AddWithValue("p7", pc);
            scmd.Parameters.AddWithValue("p8", ag);
            scmd.Parameters.AddWithValue("p9", mn);
            scmd.Parameters.AddWithValue("p10", hg);
            scmd.Parameters.AddWithValue("p11", wg);
            scmd.Parameters.AddWithValue("p12", sq);
            scmd.Parameters.AddWithValue("p13", ans);
            scmd.Parameters.AddWithValue("p14", inch);

            sda = new SqlDataAdapter(scmd);
            sda.Fill(ds);

            Response.Redirect("RegSuccess.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}
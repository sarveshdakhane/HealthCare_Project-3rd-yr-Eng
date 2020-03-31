using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HealthCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        int height = Convert.ToInt32(TextBox1.Text);
        int inch = Convert.ToInt32(TextBox2.Text);
        int age =  Convert.ToInt32(TextBox3.Text);
        int weight=0;
        string gd;


        if (RadioButton1.Checked)
        {
            gd = "male";
        }
        else
        {
            gd = "female";
        }


        if (gd == "male")
        {


            if (age >= 5 && age < 24)
            {
                switch (height)
                {

                    case 4:
                        weight = Convert.ToInt32(45.08 + (inch * 1.15));
                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;
                    case 5:
                        weight = Convert.ToInt32(55.6 + (inch * 1.41));
                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;
                    case 6:
                        weight = Convert.ToInt32(65.12 + (inch * 1.69));

                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;
                    case 7:
                        weight = Convert.ToInt32(7.64 + (inch * 1.97));
                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;

                    default:
                        Label1.Text = "invalid option";
                        break;
                }
            }
        


        else if (age >= 24 && age < 30)
        {
            if (height == 4)
            {

                weight = Convert.ToInt32(46.08 + (inch * 1.15));

                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 5)
            {

                 weight = Convert.ToInt32(56.6 + (inch * 1.41));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 6)
            {

                    weight = Convert.ToInt32(66.12 + (inch * 1.69));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 7)
            {

                 weight  = Convert.ToInt32(76.64 + (inch * 1.97));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else { Label1.Text = "invalid option"; }


        }

        else if (age >= 30 && age < 55)
        {
            if (height == 4)
            {

                    weight = Convert.ToInt32(52.08 + (inch * 1.28));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 5)
            {

                    weight = Convert.ToInt32(62.6 + (inch * 1.34));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 6)
            {

                    weight = Convert.ToInt32(72.12 + (inch * 1.60));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 7)
            {

                    weight = Convert.ToInt32(82.64 + (inch * 1.86));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else { Label1.Text = "invalid option"; }

        }
        else if (age >= 55 && age <= 100)
        {
            if (height == 4)
            {

                    weight = Convert.ToInt32(50.08 + (inch * 1.28));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 5)
            {

                    weight = Convert.ToInt32(60.6 + (inch * 1.34));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 6)
            {

                    weight = Convert.ToInt32(70.12 + (inch * 1.60));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else if (height == 7)
            {

                    weight = Convert.ToInt32(80.64 + (inch * 1.86));
                Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
            }
            else
            {
                Label1.Text = "invalid option";
            }


        }
        }
        else
        {
            if (age >= 5 && age < 24)
            {
                switch (height)
                {

                    case 4:
                        weight = Convert.ToInt32(40.00 + (inch * 1.06));
                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;
                    case 5:
                        weight = Convert.ToInt32(50.00 + (inch *  1.36));
                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;
                    case 6:
                        weight = Convert.ToInt32(60.00 + (inch * 1.63));

                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;
                    case 7:
                        weight = Convert.ToInt32(70.00 +(inch * 1.95));
                        Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                        break;

                    default:
                        Label1.Text = "invalid option";
                        break;
                }
            }



            else if (age >= 24 && age < 30)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(42.00 + (inch * 1.06));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(52.00 + (inch * 1.36));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(62.00 + (inch * 1.63));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(72.00 + (inch * 1.95));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else { Label1.Text = "invalid option"; }


            }

            else if (age >= 30 && age < 55)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(43.00 + (inch * 1.06));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(54.00 + (inch * 1.36));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(64.00 + (inch * 1.63));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(74.00 + (inch * 1.95));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else { Label1.Text = "invalid option"; }

            }
            else if (age >= 55 && age <= 100)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(42.00 + (inch * 1.06));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(51.00 + (inch * 1.36));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 6)
                {

                    weight =Convert.ToInt32(61.00 + (inch * 1.63));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(71.00 + (inch * 1.95));
                    Label1.Text = "Your ideal Weight is " + Convert.ToString(weight);
                }
                else
                {
                    Label1.Text = "invalid option";
                }
            }


        }
    }
}
       
          

        
       
        
            
        
   
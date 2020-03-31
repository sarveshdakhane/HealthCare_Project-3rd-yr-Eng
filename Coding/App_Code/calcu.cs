using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for calcu
/// </summary>
public class Calcu
{

    SqlConnection scon;
    SqlDataAdapter sda;
    SqlCommand scmd;
    DataSet dss;






    public int  CalcuWgt ( int height ,int inch ,int age , string gender)
    {

        int weight = 0;
        string gd;


        if (gender ==" male" )
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
                       
                        break;
                    case 5:
                        weight = Convert.ToInt32(55.6 + (inch * 1.41));
                       
                        break;
                    case 6:
                        weight = Convert.ToInt32(65.12 + (inch * 1.69));

                       
                        break;
                    case 7:
                        weight = Convert.ToInt32(7.64 + (inch * 1.97));
                       
                        break;

                    default:
                       
                        break;
                }
            }



            else if (age >= 24 && age < 30)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(46.08 + (inch * 1.15));

                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(56.6 + (inch * 1.41));
                  
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(66.12 + (inch * 1.69));
                    
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(76.64 + (inch * 1.97));
                    
                }
                else { weight = Convert.ToInt32("invalid option"); }


            }

            else if (age >= 30 && age < 55)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(52.08 + (inch * 1.28));
                    
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(62.6 + (inch * 1.34));
                   
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(72.12 + (inch * 1.60));
                   
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(82.64 + (inch * 1.86));
                   
                }
                else { weight = Convert.ToInt32("invalid option"); }

            }
            else if (age >= 55 && age <= 100)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(50.08 + (inch * 1.28));
                    
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(60.6 + (inch * 1.34));
                    
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(70.12 + (inch * 1.60));
                   
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(80.64 + (inch * 1.86));
                    
                }
                else
                {
                    weight = Convert.ToInt32("invalid option");
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
                       
                        break;
                    case 5:
                        weight = Convert.ToInt32(50.00 + (inch * 1.36));
                       
                        break;
                    case 6:
                        weight = Convert.ToInt32(60.00 + (inch * 1.63));

                      
                        break;
                    case 7:
                        weight = Convert.ToInt32(70.00 + (inch * 1.95));
                       
                        break;

                    default:
                       
                        break;
                }
            }



            else if (age >= 24 && age < 30)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(42.00 + (inch * 1.06));
                    
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(52.00 + (inch * 1.36));
                   
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(62.00 + (inch * 1.63));
                   
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(72.00 + (inch * 1.95));
                  
                }
                else { weight = Convert.ToInt32("invalid option"); }


            }

            else if (age >= 30 && age < 55)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(43.00 + (inch * 1.06));
                    
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(54.00 + (inch * 1.36));
                   
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(64.00 + (inch * 1.63));
                   
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(74.00 + (inch * 1.95));
                   
                }
                else { weight = Convert.ToInt32("invalid option"); }

            }
            else if (age >= 55 && age <= 100)
            {
                if (height == 4)
                {

                    weight = Convert.ToInt32(42.00 + (inch * 1.06));
                   
                }
                else if (height == 5)
                {

                    weight = Convert.ToInt32(51.00 + (inch * 1.36));
                   
                }
                else if (height == 6)
                {

                    weight = Convert.ToInt32(61.00 + (inch * 1.63));
                   
                }
                else if (height == 7)
                {

                    weight = Convert.ToInt32(71.00 + (inch * 1.95));
                   
                }
                else
                {
                    weight = Convert.ToInt32("invalid option");
                }
            }


        }
        return weight;
    }
}

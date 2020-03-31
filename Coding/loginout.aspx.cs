using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["userid"] = "undefined";
        Session["DropDown1"] = "undefined";
        Session["add"] = "undefined";
        Session["DropDown1"] = "undefined";

        Session.Abandon();
        Session.Clear();

        Response.Redirect("LoginPage.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class begginer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["course"] == "You are currently not learning any course")
        {
            Response.Redirect("learn.aspx");
        }
    }

}
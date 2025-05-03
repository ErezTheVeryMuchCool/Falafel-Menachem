using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class learn : System.Web.UI.Page
{
    public string learnn = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["Submit"] != null)
        {
            learnn = Request.Form["course"];
            Console.WriteLine(learnn);
            if (learnn == null)
            {
                Session["course"] = "You are currently not learning any course";
            }
            else
            {
                string fileName = "Database.mdf";
                Session["course"] = "You are currently learning the " + learnn + " Course.";
                string sql = "UPDATE [Table] SET learn = '" + learnn + "' WHERE username = '" + Session["username"] + "';";
                MyAdoHelper.DoQuery(fileName, sql);
            }


        }
 
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    public string msg = "";
    public string Hello = "";

    protected void Page_Load(object sender, EventArgs e)

    {
        if (Request.Form["submit"] != null)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            string fileName = "Database.mdf";
            string sql = "select * from [Table] where username = '" + username + "' and password = '" + password + "'";

            DataTable table = MyAdoHelper.ExecuteDataTable(fileName, sql);
            int length = table.Rows.Count;

            if (length > 0)
                Session["Username"] = username;
            else
                Session["Username"] = "Guest. Please Log in.";         
            
            string adminsql = "select * from [Table] where username = '" + username + "' and password = '" + password + "'and isAdmin = 'False'";
            DataTable AdminTable = MyAdoHelper.ExecuteDataTable(fileName, adminsql);
            int admin = table.Rows.Count;
            if (admin > 0)
            {
                Session["Admin"] = "True";
            }
            Hello = "Hello " + Session["Username"];

            string learnsql = "SELECT learn FROM [Table] WHERE username = '" + username + "';";
            DataTable learn = MyAdoHelper.ExecuteDataTable(fileName, learnsql);
            string learnValue = "";
            if (learn.Rows.Count > 0)
            {
                learnValue = learn.Rows[0]["learn"].ToString();
            }

            if (learnValue != "NULL")
            {
                Session["course"] = "You are currently learning the " + learnValue + " Course.";
            }
        }


    }
}
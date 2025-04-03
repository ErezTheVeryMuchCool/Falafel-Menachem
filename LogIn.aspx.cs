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
                Session["Username"] = "Hello " + username;
            else
                Session["Username"] = "User not found";
            
            string adminsql = "select * from [Table] where username = '" + username + "' and password = '" + password + "'and isAdmin = 'False'";
            DataTable AdminTable = MyAdoHelper.ExecuteDataTable(fileName, adminsql);
            int admin = table.Rows.Count;
            if (admin > 0)
            {
                Session["Admin"] = "True";
            }
        }


    }
}
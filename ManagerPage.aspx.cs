using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;    // לא לשכוח

public partial class ManagerPage : System.Web.UI.Page
{
    public string userList = "";
    public int rows = 0;
    public string sql = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        string fileName = "Database.mdf";
        sql = "select * from [Table]";
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, sql);
        rows = table.Rows.Count;

        if (rows > 0)
        {
            userList += "<table border = 1 class='tableDis'>";
            userList += "<tr>";
            userList += "<th>username</th>";
            userList += "<th>password</th>";
            userList += "<th>firstname</th>";
            userList += "<th>surname</th>";
            userList += "<th>gender</th>";
            userList += "<th>age</th>";
            userList += "<th>learn</th>";
            userList += "<th>flavor</th>";
            userList += "<th>other</th>";
            userList += "</tr>";

            for (int i = 0; i < rows; i++)
            {
                userList += "<tr>";
                userList += "<td>" + table.Rows[i]["username"] + "</td>";
                userList += "<td>" + table.Rows[i]["password"] + "</td>";
                userList += "<td>" + table.Rows[i]["firstname"] + "</td>";
                userList += "<td>" + table.Rows[i]["surname"] + "</td>";
                userList += "<td>" + table.Rows[i]["gender"] + "</td>";
                userList += "<td>" + table.Rows[i]["age"] + "</td>";
                userList += "<td>" + table.Rows[i]["learn"] + "</td>";
                userList += "<td>" + table.Rows[i]["flavor"] + "</td>";
                userList += "<td>" + table.Rows[i]["other"] + "</td>";
                userList += "</tr>";
            }
            userList += "</table>";




        }

        string message = Request.Form["message"];
        Application["msg"] = message;






    }
}


using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    public string sameUser = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["Submit"] != null)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            string email = Request.Form["email"];
            string firstname = Request.Form["firstname"];
            string surname = Request.Form["surname"];
            string gender = Request.Form["gender"];
            string age = Request.Form["age"];
            string learn = "NULL";
            string flavor = Request.Form["flavor"];
            string other = Request.Form["otherr"];
            int IsAdmin = 0;

            string fileName = "Database.mdf";
            string CheckUsernameSQL = "SELECT * FROM [Table] WHERE username = '"+ username + "';";
            DataTable usernamecheck = MyAdoHelper.ExecuteDataTable(fileName, CheckUsernameSQL);

            int check = usernamecheck.Rows.Count;
            if (check > 0)
            {
                sameUser = "Username Already taken. Please try another!";
            }
            else
            {
                string sql = "INSERT INTO [Table] (username, password, email, IsAdmin, firstname, surname, gender, age, learn, flavor, other) VALUES ('" + username + "', '" + password + "', '" + email + "', '" + IsAdmin + "', '" + firstname + "', '" + surname + "', '" + gender + "', '" + age + "', '" + learn + "', '" + flavor + "', '" + other + "')";
                MyAdoHelper.DoQuery(fileName, sql);
                Session["username"] = username;
                Response.Redirect("homepage.aspx");
            }



        }

    }   
}
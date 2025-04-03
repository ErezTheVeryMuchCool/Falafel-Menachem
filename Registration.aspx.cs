using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["Submit"] != null)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            string firstname = Request.Form["firstname"];
            string surname = Request.Form["surname"];
            string gender = Request.Form["gender"];
            string age = Request.Form["age"];
            string learn = Request.Form["learnn"];
            string flavor = Request.Form["flavor"];
            string other = Request.Form["otherr"];
            int IsAdmin = 0;

            string sql = "INSERT INTO [Table] (username, password, IsAdmin, firstname, surname, gender, age, learn, flavor, other) VALUES ('" + username + "', '" + password + "', '" + IsAdmin + "', '" + firstname + "', '" + surname + "', '" + gender + "', '" + age + "', '" + learn + "', '" + flavor + "', '" + other + "')";
            string fileName = "Database.mdf";
            MyAdoHelper.DoQuery(fileName, sql);

        }

    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangeData : System.Web.UI.Page
{
    //sigma;
    public string password;
    public string email;
    public string firstname;
    public string surname;
    public string gender;
    public string age;
    public string flavor;
    public string other;

    // gender
    public string selected_male = "";
    public string selected_female = "";
    public string selected_other = "";

    // flavor
    public string spicy = "";
    public string sweet = "";
    public string salty = "";

    //age
    public string age1 = "";
    public string age2 = "";
    public string age3 = "";
    public string age4 = "";
    public string age5 = "";
    public string age6= "";
    public string age7 = "";
    public string nulli = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Username"] == "Guest. Please Log in.")
        {
            Response.Redirect("homepage.aspx");
        }
        string fileName = "Database.mdf";
        string sql = "SELECT * FROM [Table] WHERE username = '" + Session["username"] + "'";
        DataTable userData = MyAdoHelper.ExecuteDataTable(fileName, sql);

        DataRow row = userData.Rows[0];

        //username = Session["username"].ToString(;
        password = row["password"].ToString();
        email = row["email"].ToString();
        firstname = row["firstname"].ToString();
        surname = row["surname"].ToString();
        gender = row["gender"].ToString();
        age = row["age"].ToString();
        flavor = row["flavor"].ToString();
        other = row["other"].ToString();

        Debug.WriteLine(gender);
        if (gender == "male                          ")
        {
            selected_male = "checked";
        }
        if (gender == "female                        ")
        {
            selected_female = "checked";
        }
        if (gender == "other                         ")
        {
            selected_other = "checked";
        }


        if (flavor.Contains("Spicy"))
        {
            spicy = "checked";
        }
        if (flavor.Contains("Sweet"))
        {
            sweet = "checked";
        }
        if (flavor.Contains("Salty"))
        {
            salty = "checked";
        }


        if (age.Contains("1-18"))
        {
            age1 = "selected";
        }
        if (age.Contains("18-24"))
        {
            age2 = "selected";
        }
        if (age.Contains("25-34"))
        {
            age3 = "selected";
        }
        if (age.Contains("35-44"))
        {
            age4 = "selected";
        }
        if (age.Contains("45-54"))
        {
            age5 = "selected";
        }
        if (age.Contains("55-64"))
        {
            age6 = "selected";
        }
        if (age.Contains("65+"))
        {
            age7 = "selected";
        }
        if (age.Contains("                              "))
        {
            nulli = "selected";
        }

        if (Request.Form["Submit"] != null)
        {
            string UpdateData = "UPDATE [Table] SET " +
                "password = '" + Request.Form["password"] + "', " +
                "email = '" + Request.Form["email"] + "', " +
                "firstname = '" + Request.Form["firstname"] + "', " +
                "surname = '" + Request.Form["surname"] + "', " +
                "gender = '" + Request.Form["gender"] + "', " +
                "age = '" + Request.Form["age"] + "', " +
                "flavor = '" + Request.Form["flavor"] + "', " +
                "other = '" + Request.Form["other"] + "', " +
                "username = '" + Request.Form["username"] + "' " +
                "WHERE username = '" + Session["username"] + "';";
            MyAdoHelper.DoQuery(fileName, UpdateData);
            Session["username"] = Request.Form["username"];
            Response.Redirect("homepage.aspx");

            
        }

    }   
}
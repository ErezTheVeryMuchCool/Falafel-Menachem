<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManagerPage.aspx.cs" Inherits="ManagerPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%if (Session["Admin"].Equals("True"))
        {
            Response.Write(userList);
            Response.Write("<div class='message'>");
            Response.Write("<label for='message'>Message:</label><br />");
            Response.Write("<input type='text' id='message' name='message' placeholder='its Falafel Friday!'><br><br>");
            Response.Write("</div>");
            Response.Write("<div class='MenageSubmit'>");
            Response.Write("<input type='submit' name='Submit' value='Submit'>");
            Response.Write("</div>");

            Response.Write("<div class='delete-form'>");
            Response.Write("<form method='post'");
            Response.Write("<label for='deleteEntry'>Delete Username:</label><br />");
            Response.Write("<input type='text' id='deleteEntry' name='deleteEntry' placeholder='Enter username to delete'><br><br>");
            Response.Write("<input type='submit' name='Delete' value='Delete'>");
            Response.Write("</form>");

        }
        else
        {
            Response.Write("You shall not be here!");
        }
    %>
    
    <formview>

    </formview>



</asp:Content>


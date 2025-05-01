<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="learn.aspx.cs" Inherits="learn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tutorial">
        <h1>Learn How to make falafel, from the best.</h1>
        <%if (Session["Username"] == "Guest. Please Log in.") {
                Response.Write("<h2>But to do that, you must first <a href=\"LogIn.aspx\">Log In</a></h2><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />");
            }
            else {
                Response.Write("<label>\r\n   <input type=\"radio\" name=\"Course\" value=\"begginer\" checked>\r\n       <img src=\"Images/Begginer.png\" width=\"400px\" alt=\"Option 1\" class=\"radio-img\" />\r\n    </label>\r\n    <label>\r\n        <input type=\"radio\" name=\"Course\" value=\"expanding\" checked>\r\n    <img src=\"Images/Expanding.png\" width=\"400px\" alt=\"Option 2\" class=\"radio-img\" />\r\n</label>\r\n<label>\r\n    <input type=\"radio\" name=\"Course\" value=\"advanced\" checked>\r\n    <img src=\"Images/Advanced.png\" width=\"400px\" alt=\"Option 2\" class=\"radio-img\" />\r\n</label><br />\r\n <input type=\"submit\" name=\"Submit\" value=\"Lets Falafel ->\">");
            }
            %>

        


    

</asp:Content>


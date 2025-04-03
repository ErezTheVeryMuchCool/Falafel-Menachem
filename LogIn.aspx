<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form method="post">
        email <input type="text" id="username" name="username" /><br />
         password <input type="password" id="password" name="password" /><br />
               <input type="submit" id="submit" name="submit" value="log in" />

    </form>

    

</asp:Content>


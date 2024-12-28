<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero">
        <h1>Welcome To Falfel Menahem</h1>
        <h2>A falafel community for everyone.</h2>  
        <a class ="button" href="learn.aspx">Learn How To Do it.</a>
        <br />
        <br />
    </div>
    <div class="foreveryone">
        <img src="imgs/Falafel.jpg" />
    </div>
    <div class="list">
        <h1>Why You Shall Trust Us:</h1>
        <ul>
            <li>Coffee</li>
            <li>Tea</li>
            <li>Milk</li>
        </ul>
    </div>
</asp:Content>


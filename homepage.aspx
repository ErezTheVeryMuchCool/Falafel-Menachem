<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero">
        <h1>Welcome To Falfel Menahem</h1>
        <h2>A Falafel Community Powered By Hummus And Dreams.</h2>      
    </div>
    <div class="foreveryone">
        <br />
        <img src="Images/falafel.jpg" width=400/>
        <h1>Falfel Is For Everyone.</h1>
        <h3>That's why here at Falfel Menahem we teach everyone the art of Falfel.</h3>
        <br />
        <br />
        <a class ="button" href="learn.aspx">Learn How To Do it.</a>
        <br />
        <br />
        <br />
        <br />

    </div>
    <div class="list">
        <br />
        <h1>Why You Shall Trust Us:</h1>
        <a class ="button2" href="gallery.aspx">See It For Yourself.</a>
        <ul>
            <li>12 Years Of Experience</li>
            <li>Thousands Of Customers Over The Years</li>
            <li>Delicous Falfel</li>
        </ul>
        <br />
        <br />
    </div>  
    <div class="menahem">
        <img src="Images/menachem.png" width ="500" />
        <h1 style ="top:10px">But who am I?</h1>
        <p style ="top:50px">
            I am Menahem. An expert in falafel. <br />
            I opened my first "Falfel Menachem" stand <br />
            12 years ago in Petach tikva. Since <br />
            then, I've expended to 5 more locations, <br />
            and opened a Falfel website for everyone to learn.
        </p>

        <h1> <--------------- Menachem</h1>

    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="reg">
        <h1 style ="color:red; -webkit-text-stroke:1px; -webkit-text-stroke-color:black"><%=sameUser%></h1>
        <form action="/submit" method="post">

            <div class="username">
                <label for="username">Username *</label>
                <input type="text" id="username" name="username" placeholder ="Enter Your Username" required
                    pattern="^[a-zA-Z0-9_.]{5,16}$" 
                    title="Username must be 5-16 characters long and contain only letters, numbers, underscores, and dots.">
            </div>
            <div class ="password">
                <label for="password">Password *</label>
                <input type="password" id="password" name="password" placeholder ="Enter Your Password" required
                    pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$"
                    title = "Password must be 8-16 characters long and include uppercase, lowercase, number, and special character.">
            </div>
            <div class ="email">
                <label for="email">Email *</label>
                <input type="email" id="email" name="email" placeholder ="Enter Your email" required maxlength ="100" title = "Email must be at most 100 characters.">
            </div>
            <div class="firstname">
                <label for="firstname">First Name:</label>
                <input type="text" id="firstname" name="firstname" placeholder ="Enter Your First Name" maxlength ="30" title = "First name must be at most 30 characters." >
            </div>
            <div class ="surname">
                <label for="surname">Surname:</label>
                <input type="text" id="surname" name="surname" placeholder ="Enter Your Surname" maxlength ="30" title = "Surname must be at most 30 characters.">
            </div>

           
            <div class ="gender">
                <label style="font-size:40px !important">Gender:</label><br />

                <input type="radio" id="male" name="gender" value="male"  />
                <label for="male">  Male</label><br />

                <input type="radio" id="female" name="gender" value="female" >
                <label for="female">Female</label><br />

                <input type="radio" id="other" name="gender" value="other">
                <label for="other"> Other</label>
            </div>
            <div class="age">
                <br />
                <select id="age" name="age" >
                    <option value="" disabled selected>Select your age</option>
                    <option value="1-18">1-18</option>
                    <option value="18-24">18-24</option>
                    <option value="25-34">25-34</option>
                    <option value="35-44">35-44</option>
                    <option value="45-54">45-54</option>
                    <option value="55-64">55-64</option>
                    <option value="65+">65+</option>
                </select><br><br>
            </div>
           
            <div class="flavorLabel">
                <label for="flavor">What Are Your Prefferd Flavors? Choose atleast One.</label><br /><br />
            </div>
            <div class ="flavor">
                  <label for="Spicy">Spicy Falafel</label>
                  <input type="checkbox" id="Spicy" name="flavor" value="Spicy"><br>

                  <label for="sweet">Sweet Falafel</label>
                  <input type="checkbox" id="Sweet" name="flavor" value="Sweet"><br>

                  <label for="salty">Salty Falafel</label>
                  <input type="checkbox" id="Salty" name="flavor" value="Salty"><br>

                  <label for="other">Other...</label>
                  <input type="text" id="otherr" name="otherr" placeholder ="Let us know.." maxlength ="50" "Other flavor must be at most 50 characters."><br><br>

            </div>
            <div class="submit">
                <input type="reset" value="Reset" />
                <input type="submit" name="Submit" value="Submit">
            </div>
            
        </form>
    </div>
</asp:Content>


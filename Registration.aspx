<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="reg">
        <form action="/submit" method="post">
            <div class="username">
                <label for="username">Username:</label><br />
                <input type="text" id="username" name="username" placeholder ="Enter Your Username" required><br><br>
            </div>
            <div class ="password">
                <label for="password">Password:</label><br />
                <input type="password" id="password" name="password" placeholder ="Enter Your Password"required><br><br>
            </div>

            <div class="firstname">
                <label for="firstname">First Name:</label><br />
                <input type="text" id="firstname" name="firstname" placeholder ="Enter Your First Name" required><br><br>
            </div>
            <div class ="surname">
                <label for="surname">Surname:</label><br />
                <input type="text" id="surname" name="surname" placeholder ="Enter Your Surname" required><br><br>
            </div>
            <div class="GenderLabel">
                <label>Gender:</label><br />
            </div>
            
            <div class ="gender">
                <input type="radio" id="male" name="gender" value="male" required>
                <label for="male">  Male</label>
                <br />
                <input type="radio" id="female" name="gender" value="female" >
                <label for="female">Female</label>
                <br />
                <input type="radio" id="other" name="gender" value="other">
                <label for="other"> Other</label><br /><br /><br />
            </div>
            <div class="age">
                <label for="age">Age:</label><br /><br />
                <select id="age" name="age" required>
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
            <div class="learnnLabel">
                <label for="learnn">What Would you like to learn? Choose atleast one.</label><br /><br />
            </div>
            <div class ="learnn">
                  <label for="beginner">How To Make Basic Falafel </label>
                  <input type="checkbox" id="basicFalafel" name="learnn" value="basicFalafel"><br>

                  <label for="sauce">Secret Falafel Sauces</label>
                  <input type="checkbox" id="Sauces" name="learnn" value="Sauces"><br>

                  <label for="advanced">Advanced Techniques</label>
                  <input type="checkbox" id="Advanced" name="learnn" value="Advanced"><br>

                  <label for="sides">Sides Like Hummus Or Pita</label>
                  <input type="checkbox" id="Sides" name="learnn" value="Sides"><br>
  
                  <label for="history">The History Of Falafel</label>
                  <input type="checkbox" id="History" name="learnn" value="History"><br>
            </div>
            <div class="flavorLabel">
                <label for="flavor">What Are Your Prefferd Flavors? Choose Atleast One.</label><br /><br />
            </div>
            <div class ="flavor">
                  <label for="hot">Spicy Falafel</label>
                  <input type="checkbox" id="Hot" name="flavor" value="Hot"><br>

                  <label for="sweet">Sweet Falafel</label>
                  <input type="checkbox" id="Sweet" name="flavor" value="Sweet"><br>

                  <label for="salty">Salty Falafel</label>
                  <input type="checkbox" id="Salty" name="flavor" value="Salty"><br>

                  <label for="other">Other...</label>
                  <input type="text" id="otherr" name="username" placeholder ="Let us know.." required><br><br>

            </div>
            <div class="submit">
                <input type="reset" value="Reset" />
                <input type="submit" name="Submit" value="Submit">
            </div>
            
        </form>
    </div>
</asp:Content>


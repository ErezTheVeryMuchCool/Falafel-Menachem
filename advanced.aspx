<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="advanced.aspx.cs" Inherits="Advanced" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="advanced">
        <h1>Advanced Course</h1>
        
        <div id="lesson1" class="lesson" style="display:none;">
            <h3>Lesson 1 - Introduction to Gourmet Falafel</h3>
            <p>
                Welcome to the Advanced Course! By now, you’ve mastered the basics of falafel, and it’s time to elevate your skills to a gourmet level.<br />
                In this course, we will focus on:<br />
                - Perfecting the texture for a light, crispy falafel.<br />
                - Enhancing your falafel with creative and luxurious ingredients.<br />
                - Presenting your falafel like a fine dining dish.<br />
                - Exploring fusion cuisine and innovative flavor profiles.<br />
                Are you ready to transform your falafel into a gourmet masterpiece? Let’s begin!
            </p>
            <img src="Images/begginerCourseImg.png" width="30%" />
        </div>

        <div id="lesson2" class="lesson" style="display:none;">
            <h3>Lesson 2 - Precision Texture</h3>
            <p>
                The best falafel has a golden crisp outside and a tender, moist center:<br />
                - Add a teaspoon of baking soda to the mix for lightness.<br />
                - Double-fry: first a short fry at 300°F, rest, then finish at 375°F.<br />
                - Use fine breadcrumbs or semolina for added crunch.<br />
                These techniques ensure the perfect falafel texture.
            </p>
            <img src="Images/Ingridiants.jpg" width="30%" />
        </div>

        <div id="lesson3" class="lesson" style="display:none;">
            <h3>Lesson 3 - Artistic Plating</h3>
            <p>
                Treat falafel like fine cuisine:<br />
                - Use swooshes of tahini or yogurt sauce on large plates.<br />
                - Add microgreens, edible flowers, or a balsamic glaze.<br />
                - Stack falafel creatively or use vertical presentation for drama.<br />
                Presentation is key to impress your guests and elevate the dish.
            </p>
            <img src="Images/BegginerFalafel3.jpg" width="30%" />
        </div>

        <div id="lesson4" class="lesson" style="display:none;">
            <h3>Lesson 4 - Fusion Cuisine</h3>
            <p>
                Merge falafel with other global foods:<br />
                - Indian: falafel curry over basmati rice with raita.<br />
                - Thai: falafel served with spicy coconut lemongrass sauce.<br />
                - Mexican: falafel tacos with pickled onions and avocado crema.<br />
                Fusion opens up new culinary possibilities and allows for exciting flavor combinations.
            </p>
            <img src="Images/FryingBegginer.jpg" width="30%" />
        </div>

        <div id="lesson5" class="lesson" style="display:none;">
            <h3>Lesson 5 - Luxury Ingredients</h3>
            <p>
                Incorporate gourmet additions for a touch of luxury:<br />
                - Truffle oil drizzle after frying for an earthy aroma.<br />
                - Pistachios or pine nuts in the mix for added richness.<br />
                - Preserved lemon, saffron, or even foie gras to take your falafel to new heights.<br />
                Elevating the ingredients makes all the difference in achieving a gourmet experience.
            </p>
            <img src="Images/advanced4.jpg" width="30%" />
        </div>

        <div id="lesson6" class="lesson" style="display:none;">
            <h3>Wrap-up</h3>
            <p>
                You’ve mastered:<br />
                - The perfect falafel texture<br />
                - Artistic presentation techniques<br />
                - Fusion cuisine<br />
                - Luxury ingredients<br />
                Congratulations on becoming a gourmet falafel expert!<br />
                Continue exploring or create your own signature gourmet falafel.<br />
                <a href="learn.aspx">Return to Course Hub</a>
            </p>
            <img src="Images/menachem.png" width="30%"/>
            Yours truly, Menachem.
        </div>


        <div class="selection">
            <input type="radio" id="button1" name="action" onclick="triggerAction(1)" checked>
            <label for="button1">1</label>

            <input type="radio" id="button2" name="action" onclick="triggerAction(2)">
            <label for="button2">2</label>

            <input type="radio" id="button3" name="action" onclick="triggerAction(3)">
            <label for="button3">3</label>

            <input type="radio" id="button4" name="action" onclick="triggerAction(4)">
            <label for="button4">4</label>

            <input type="radio" id="button5" name="action" onclick="triggerAction(5)">
            <label for="button5">5</label>

            <input type="radio" id="button6" name="action" onclick="triggerAction(6)">
            <label for="button6">6</label>
        </div>
        </div>
    <script>
        window.onload = function () {
            triggerAction(1);
        };
        function triggerAction(buttonNumber) {
            document.getElementById("lesson1").style.display = "none";
            document.getElementById("lesson2").style.display = "none";
            document.getElementById("lesson3").style.display = "none";
            document.getElementById("lesson4").style.display = "none";
            document.getElementById("lesson5").style.display = "none";
            document.getElementById("lesson6").style.display = "none";

            if (buttonNumber === 1) {
                document.getElementById("lesson1").style.display = "block";
            } else if (buttonNumber === 2) {
                document.getElementById("lesson2").style.display = "block";
            } else if (buttonNumber === 3) {
                document.getElementById("lesson3").style.display = "block";
            } else if (buttonNumber === 4) {
                document.getElementById("lesson4").style.display = "block";
            } else if (buttonNumber === 5) {
                document.getElementById("lesson5").style.display = "block";
            } else if (buttonNumber === 6) {
                document.getElementById("lesson6").style.display = "block";
            }
        }
    </script>
</asp:Content>


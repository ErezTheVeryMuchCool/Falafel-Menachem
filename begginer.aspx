<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="begginer.aspx.cs" Inherits="begginer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="begginer">
        <h1>Begginer course</h1>
        <div id="lesson1" class="lesson" style="display:none;">
            <h3>Lesson 1 - A winning Falafel</h3>
            <p>
                The key to a perfect falafel, which we here at Falafel Menachem have mastered over the years, is <b>Balance.</b> <br />
                In this course, we will teach you how to achieve the perfect falafel by focusing on three main elements:<br />
                the <b>ingredients</b>, the <b>technique</b>, and the <b>frying process</b>.
            </p>
            <img src="Images/begginerCourseImg.png" width ="30%" /><br />
        </div>
        <div id="lesson2" class="lesson" style="display:none;">
            <h3>Lesson 2 - Essential Ingredients</h3>
            <p>
                Quality ingredients are the foundation of exceptional falafel. The main components include:<br />
                - Dried chickpeas (never canned!)<br />
                - Fresh herbs (parsley, cilantro, and mint)<br />
                - Aromatics (onion and garlic)<br />
                - Spices (cumin, coriander, and our secret blend)
            </p>
            <img src="Images/Ingridiants.jpg" width ="30%" /><br />
        </div>
        <div id="lesson3" class="lesson" style="display:none;">
            <h3>Lesson 3 - Perfecting Your Technique</h3>
            <p>
                The proper technique makes all the difference between mediocre and exceptional falafel:<br />
                - Soaking chickpeas (24 hours minimum)<br />
                - Achieving the right texture in the food processor<br />
                - Forming the perfect patty shape<br />
                - Testing consistency before full production
            </p>
            <img src="Images/BegginerFalafel3.jpg" width ="10%" /><br />
        </div>
        <div id="lesson4" class="lesson" style="display:none;">
            <h3>Lesson 4 - The Art of Frying</h3>
            <p>
                Frying is where many falafel recipes fail. Our methods ensure perfectly crisp exteriors with moist interiors:<br />
                - Oil temperature management (350°F / 175°C is ideal)<br />
                - Proper frying duration (approximately 3-4 minutes)<br />
                - Batch size control (never overcrowd the fryer)<br />
                - Draining techniques to reduce excess oil
            </p>
            <img src="Images/FryingBegginer.jpg" width ="30%" /><br />
        </div>
        <div id="lesson5" class="lesson" style="display:none;">
            <h3>summarizing</h3>
            <p>
                In this course, we learned:<br />
                - what ingridiants are essensial for falafel<br />
                - a winning falafel making technique<br />
                - an amazing way of frying your falafel

            </p>
            <h4>But its not over yet... You can expand your falafel skills by learning our <a href="learn.aspx">EXPENDING</a> course. good luck!</h4>
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
            }
        }
    </script>
</asp:Content>


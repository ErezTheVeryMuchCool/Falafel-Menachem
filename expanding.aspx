<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="expanding.aspx.cs" Inherits="expanding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="expanding">
        <h1>Expanding Course</h1>
        
        <div id="lesson1" class="lesson" style="display:none;">
            <h3>Lesson 1 - Bigger. Better. Stronger</h3>
            <p>
                You are no longer a begginer.<br />
                You have mastered making basic falafel,<br />
                and now is the time to elavate.<br />
                are you ready? here we come.<br />
            </p>
            <img src="Images/expanding1.png" width="30%" />
        </div>

        <div id="lesson2" class="lesson" style="display:none;">
            <h3>Lesson 2 - Enhancing Flavors</h3>
            <p>
                Once you’ve mastered the basics, the next step is layering flavors:<br />
                - Add roasted garlic to deepen the flavor.<br />
                - Mix chili paste or harissa into the falafel mix for heat.<br />
                - Include lemon zest or sumac for brightness and acidity.<br />
                These small changes elevate your falafel and let you experiment with bold profiles.
            </p>
            <img src="Images/expanding2.jpeg" width="30%" />
        </div>

        <div id="lesson3" class="lesson" style="display:none;">
            <h3>Lesson 3 - Creative Fillings</h3>
            <p>
                Surprise fillings add excitement to every bite:<br />
                - Gently press crumbled feta into the center of each falafel before shaping.<br />
                - Try fillings like sun-dried tomatoes, pickled onions, or olives for bursts of flavor.<br />
                - Make sure fillings are dry and compact to avoid crumbling or leaking during frying.
            </p>
            <img src="Images/expanding3.jpeg" width="30%" />
        </div>

        <div id="lesson4" class="lesson" style="display:none;">
            <h3>Lesson 4 - Modern Presentations</h3>
            <p>
                Take your falafel from street food to modern dish:<br />
                - Serve over rice or quinoa bowls with fresh veggies and sauce drizzles.<br />
                - Wrap falafel in flatbread with hummus, lettuce, and pomegranate seeds.<br />
                - Use ramekins or rings to mold layered mezze plates that showcase colors and texture.
            </p>
            <img src="Images/expanding4.jpg" width="30%" />
        </div>

        <div id="lesson5" class="lesson" style="display:none;">
            <h3>Wrap-up</h3>
            <p>
                You’ve now learned to:<br />
                - Add intense, complex flavors<br />
                - Use creative stuffing techniques<br />
                - Present your falafel like a modern dish<br />
                Ready to level up? <a href="advanced.aspx">Start the Advanced Course now</a>.
            </p>
            <img src="Images/expanding5.png" width="30%" />
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


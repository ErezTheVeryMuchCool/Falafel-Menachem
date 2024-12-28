<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="costumers">
        <h1>Here are some of our customers' creations:</h1>
        <table>
              <tr>
                  <td>
                      <img src="Images/falafel1.jpg" width="400px"/>

                  </td>
                  <td>
                      <img src="Images/falafel2.jpg" width="400px"/>

                  </td>
                  <td>
                      <img src="Images/falafel3.jpg" width="400px"/>

                  </td>
              </tr>
              <tr>
                  <td>Swasthi's Beautiful Falafel.</td>
                  <td>Moshiko's Green Falafel</td>
                  <td>Steve's Falafel With Pita</td>
              </tr>
        </table>
    </div>
    <div class="stand">
        <h1>Some Of Our Stands:</h1>
        <br />
        <table>
                          <tr>
                  <td>
                      <img src="Images/MenachemStand.png" width="400px" />
                  </td>
                  <td>
                      <img src="Images/MenachemStand2.png" width="400px"/>
                  </td>
                  <td>
                      <img src="Images/MenachemStand3.png" width="400px"/>
                  </td>
              </tr>
              <tr>
                  <td>Our First Stand in Petah Tikva</td>
                  <td>Our Famous Falafel Stand in Ramleh</td>
                  <td>Falafel Pop-Up in Shoham Mall</td>
              </tr>

        </table>
    </div>

</asp:Content>


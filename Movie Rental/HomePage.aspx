<%@ Page Title="" Language="C#" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Movie_Rental.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="images/home-bg.png" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                  <h1>EXPLORE <span>GREAT</span> TRACKS</h1>
                  <p><b>Check Out the Options Below-</b></p>
               </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                  <a href="userlogin.aspx"><img width="150px" src="images/digital-data.png" /></a>
                  <h3>Cloud Music</h3>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
                </div>
                <div class="col-md-4">
                    <center>
                  <a href="viewalbums.aspx"><img width="150px" src="images/search-online.png" /></a>
                  <h3>Browse Tunes</h3>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
                </div>
                <div class="col-md-4">
                    <center>
                  <a href="contact.aspx"><img width="150px" src="images/defaulters-list.png" /></a>
                  <h3>Defaulter List</h3>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
                </div>
            </div>
        </div>
    </section>
    <section>
        <img src="images/inhomepage-banner.png" class="img-fluid" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                  <h1>OUR <span>PROCESS</span></h1>
                  <p><b>Join millions around the world</b></p>
               </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                  <a href="usersignup.aspx"><img width="150px" src="images/signup.png" /></a>
                  <h3>Sign Up</h3>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
                </div>
                <div class="col-md-4">
                    <center>
                  <a href="viewalbums.aspx"><img width="150px" src="images/search-online.png" /></a>
                  <h3>Search Music</h3>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
                </div>
                <div class="col-md-4">
                    <center>
                  <a href="https://www.apple.com/itunes/"><img width="150px" src="albums/musicinventory.png" /></a>
                  <h3>Visit Us</h3>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
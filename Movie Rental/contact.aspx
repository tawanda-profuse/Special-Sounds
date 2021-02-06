<%@ Page Title="" Language="C#" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Movie_Rental.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<meta charset="utf-8" />--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .contact {
            float: center;
            margin-left: auto;
            margin-right: auto;
            padding: 5px;
            min-width: 200px;
            min-height: 50px;
            border: 1px solid black;
            color: white;
            text-decoration: none;
            text-align: center;
        }

        a:link {
            text-decoration: none;
        }

        a:visited {
            text-decoration: none;
        }

        a:hover {
            text-decoration: none;
        }

        a:active {
            text-decoration: none;
        }
    </style>
    <%--<script src="fontawesome/js/kit.js"></script>--%>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>Contact Us</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="images/home-bg.png" class="img-fluid" />
    </section>

    <div>
        <div class="container">
            <div class="contact-parent">
                <div class="contact-child child1">
                    <p>
                        <i class="fas fa-map-marker-alt"></i>Address
                            <br />
                        <span>Near East University
                            <br />
                            Nicosia, Cyprus
                        </span>
                    </p>

                    <p>
                        <i class="fas fa-phone-alt"></i>Let's Talk
                        <br />
                        <span>1234567890</span>
                    </p>

                    <p>
                        <i class="far fa-envelope"></i>General Support
                        <br />
                        <span>xrthemc@gmail.com</span>
                    </p>
                </div>

                <div class="contact-child child2">
                    <div class="inside-contact">
                        <h2>Contact Us</h2>
                        <h3>
                            <asp:Label ID="confirm" runat="server" Text=""></asp:Label>
                        </h3>

                        <p>Name *</p>
                        <asp:TextBox ID="txt_name" runat="server" Required="required"></asp:TextBox>

                        <p>Email *</p>
                        <asp:TextBox ID="txt_email" runat="server" Required="required"></asp:TextBox>

                        <p>Phone Number *</p>
                        <asp:TextBox ID="txt_phone" runat="server" Required="required"></asp:TextBox>

                        <p>Subject *</p>
                        <asp:TextBox ID="txt_subject" runat="server" Required="required"></asp:TextBox>

                        <p>Message *</p>
                        <asp:TextBox ID="txt_message" runat="server" Required="required" TextMode="MultiLine" Rows="4"></asp:TextBox>

                        <asp:Button ID="btn_send" runat="server" Text="SEND" OnClick="btn_send_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section>
        <div class="contact" style="background-color: lightgrey;">
            <h1 style="color: black;">SOCIALS</h1>
        </div>

        <a href="https://www.facebook.com/tawanda.msengezi/">
            <div class="contact" style="background-color: #3b5999;">
                <h1>Facebook</h1>
            </div>
        </a>

        <a href="https://twitter.com/profuse_taw">
            <div class="contact" style="background-color: #0084b4;">
                <h1>Twitter</h1>
            </div>
        </a>

        <a href="https://www.google.com/">
            <div class="contact" style="background-color: #dd4b39;">
                <h1>Google Plus</h1>
            </div>
        </a>

        <a href="https://www.linkedin.com/in/tawanda-andrew-msengezi-091a31127/">
            <div class="contact" style="background-color: #007bb6;">
                <h1>LinkedIn</h1>
            </div>
        </a>

        <a href="https://www.youtube.com/">
            <div class="contact" style="background-color: #dd4b39;">
                <h1>Youtube</h1>
            </div>
        </a>

        <a href="https://www.instagram.com/tha_modern_caveman/">
            <div class="contact" style="background-color: #8a3ab9;">
                <h1>Instagram</h1>
            </div>
        </a>

        <a href="https://soundcloud.com/">
            <div class="contact" style="background-color: #ff7700;">
                <h1>Soundcloud</h1>
            </div>
        </a>
    </section>
</asp:Content>
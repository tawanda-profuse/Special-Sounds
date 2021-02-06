<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Movie_Rental.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <img width="150px" src="images/generaluser.png" />
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <h3>Sign in to your account...</h3>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter your username"></asp:TextBox>
                                </div>
                                <br />
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="row">
                                    <center>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="150px" />
                                        </div>
                                        <br />
                                        <div class="form-group">
                                            <%--<a href="usersignup.aspx">
                                                <input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>--%>
                                             <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Sign Up" Width="150px" OnClick="Button2_Click" />

                                        </div>
                                    </div>
                                        </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <strong><a href="homepage.aspx" media="screen" style="color: #000000"><< Back to Home</a><br></strong>
                <br>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
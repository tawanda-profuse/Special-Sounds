<%@ Page Title="" Language="C#" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Movie_Rental.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <br />
    <div class="container">   
            <div class="row">
                <div class="col-md-8 mx-auto">
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
                           <h3>Register Your Account</h3>
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
                                    <label>Full Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <label>Date-of-Birth</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date-of-Birth" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <label>Phone Number</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Phone Number" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <label>Email</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col">
                                    <label>Country</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Angola" Value="Angola"></asp:ListItem>
                                            <asp:ListItem Text="Argentina" Value="Argentina"></asp:ListItem>
                                            <asp:ListItem Text="Brazil" Value="Brazil"></asp:ListItem>
                                            <asp:ListItem Text="Canada" Value="Canada"></asp:ListItem>
                                            <asp:ListItem Text="Denmark" Value="Denmark"></asp:ListItem>
                                            <asp:ListItem Text="France" Value="France"></asp:ListItem>
                                            <asp:ListItem Text="India" Value="India"></asp:ListItem>
                                            <asp:ListItem Text="United Kingdom" Value="United Kingdom"></asp:ListItem>
                                            <asp:ListItem Text="United States" Value="United States"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <label>City</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <label>User Pin</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col">
                                    <label>Home Address</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Home Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <center>
                            <div class="col">
                              <span class="badge bg-info text-dark">Login Details</span>
                            </div>
                                </center>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>User Name</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="User ID"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <center>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">   
                                        
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server"  Text="Sign Up" OnClick="Button1_Click" Width="300px" />
                                
                                    </div>
                                </div>
                            </div>
                        </center>
                        </div>
                    </div>
                    <strong><a href="homepage.aspx" style="color: #000000"><< Back to Home</a><br>
                    </strong>
                    <br>
                </div>
            </div>        
    </div>
        </section>
</asp:Content>
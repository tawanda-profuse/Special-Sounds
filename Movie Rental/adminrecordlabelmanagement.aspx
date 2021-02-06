<%@ Page Title="" Language="C#" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="adminrecordlabelmanagement.aspx.cs" Inherits="Movie_Rental.adminrecordlabelmanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <br />
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Record Label Details</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="images/record-label.png" />
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Record Label ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click1" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Record Label</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name of Record Label"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <center>
                        <div class="row">

                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" Width="150px" OnClick="Button2_Click1" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" Width="150px" OnClick="Button3_Click1" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" Width="150px" OnClick="Button4_Click1" />
                            </div>
                        </div>
                        </center>
                    </div>
                </div>
            <strong><a href="homepage.aspx"><< Back to Home</a><br></strong>
            <br>
        </div>
        <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                        <h4>Record Label List</h4>
                                    </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Special SoundsConnectionString2 %>" SelectCommand="SELECT * FROM [recordlabelTB]"></asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Label_ID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="Label_ID" HeaderText="Label reference #" ReadOnly="True" SortExpression="Label_ID" />
                                    <asp:BoundField DataField="Record_Label" HeaderText="Record_Label" SortExpression="Record_Label" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
        <br />
        </section>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="viewalbums.aspx.cs" Inherits="Movie_Rental.viewalbums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <br />
                    <center>
                        <h1>
                        Album List</h1>
                    </center>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="card">
                            <div class="card-body">

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Special SoundsConnectionString7 %>" SelectCommand="SELECT * FROM [albumTB]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="album_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="album_id" HeaderText="REF #" ReadOnly="True" SortExpression="album_id">
                                                    <ControlStyle Font-Bold="True" />
                                                    <ItemStyle Font-Bold="True" />
                                                </asp:BoundField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-10">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("album_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <span>Artist: </span>
                                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("artist_name") %>'></asp:Label>
                                                                            &nbsp;| <span><span>&nbsp;</span>Genre: </span>
                                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                            &nbsp;|
                                                                            <span>&nbsp;
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Record Label:
                                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("label_name") %>'></asp:Label>
                                                                            &nbsp;| Release Date:
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("release_date") %>'></asp:Label>
                                                                            &nbsp;| Tracks:
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_tracks") %>'></asp:Label>
                                                                            &nbsp;| Edition:
                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Cost:
                                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("album_cost") %>'></asp:Label>
                                                                            &nbsp;| Actual Stock:
                                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                            &nbsp;| Available Stock:
                                                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Description:
                                                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("description") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("album_img_link") %>' />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <center>
                    <strong><a href="HomePage.aspx" style="color: #000000">
                        << Back to Home</a><span class="clearfix"></span></strong>
                            <br />
                            <center>
            </div>
        </div>
    </section>
</asp:Content>
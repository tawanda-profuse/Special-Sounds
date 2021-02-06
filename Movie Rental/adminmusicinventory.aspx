<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="adminmusicinventory.aspx.cs" Inherits="Movie_Rental.adminmusicinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <br />
        <%--<center>--%>
        <div class="container-fluid">
            <div class="row">
                <center>
            <div class="col-md-10">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                        <center>
                           <h1>Album Info</h1>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="100px" src="albums/musicinventory.png" />
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7">
                                <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label aria-orientation="horizontal">Album Reference No.</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Album ID"></asp:TextBox>
                                        <asp:Button class="form-control btn btn-primary" ID="Button4" runat="server" Text="Ok" OnClick="Button4_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Album Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Album Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Record Label</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem>L1</asp:ListItem>
                                        <asp:ListItem>L2</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Artist</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="A1" Value="a1" />
                                        <asp:ListItem Text="a2" Value="a2" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                            <label>Release Date</label>
                                <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Release Date" TextMode="Date"></asp:TextBox>
                            </div>
                                    </div>

                                                    <div class="col-md-4">
                            <label>Genre</label>
                            <div class="form-group">
                                <%--<asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="1">
                                </asp:ListBox>--%>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Jazz" Value="Jazz" />
                                        <asp:ListItem Text="Rock" Value="Rock" />
                                        <asp:ListItem Text="Heavy Metal" Value="Heavy Metal" />
                                        <asp:ListItem Text="Hip-Hop" Value="Hip-Hop" />
                                        <asp:ListItem Text="Reggae" Value="Reggae" />
                                        <asp:ListItem Text="R&B" Value="R&B" />
                                        <asp:ListItem Text="Soul" Value="Soul" />
                                        <asp:ListItem Text="Rap" Value="Rap" />
                                        <asp:ListItem Text="Pop" Value="Pop" />
                                        <asp:ListItem Text="Gospel" Value="Gospel" />
                                        <asp:ListItem Text="Dubstep" Value="Dubstep" />
                                        <asp:ListItem Text="Electro" Value="Electro" />
                                        <asp:ListItem Text="Pop Rock" Value="Pop Rock" />
                                        <asp:ListItem Text="Ambient Music" Value="Ambient Music" />
                                        <asp:ListItem Text="Dance Music" Value="Dance Music" />
                                        <asp:ListItem Text="Country" Value="Country" />
                                        <asp:ListItem Text="Blues" Value="Blues" />
                                        <asp:ListItem Text="Classical" Value="Classical" />
                                        <asp:ListItem Text="Disco" Value="Disco" />
                                        <asp:ListItem Text="Opera" Value="Opera" />
                                        <asp:ListItem Text="New Wave" Value="New Wave" />
                                        <asp:ListItem Text="Hardcore" Value="Hardcore" />
                                        <asp:ListItem Text="Alternative Rock" Value="Alternative Rock" />
                                        <asp:ListItem Text="Musical Theatre" Value="Musical Theatre" />
                                        <asp:ListItem Text="Funk" Value="Funk" />
                                        <asp:ListItem Text="House Music" Value="House Music" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Standard Edition" Value="Standard Edition" />
                                        <asp:ListItem Text="Limited Edition" Value="Limited Edition" />
                                        <asp:ListItem Text="Collectors Edition" Value="Collectors Edition" />
                                        <asp:ListItem Text="Deluxe Edition" Value="Deluxe Edition" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>$ Cost(per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Album Cost" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Tracks</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="# of Songs" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Total Albums</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="All Albums" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Albums Available</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Available Albums" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Lended Albums</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <label>Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Album Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">

                            <div class="col-md-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" Width="150px" OnClick="Button1_Click" />
                            </div>

                            <%--</div>
                    <br />--%>
                            <%--<div class="row">--%>

                            <div class="col-md-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-primary" runat="server" Text="Update" Width="150px" OnClick="Button3_Click" />
                            </div>

                            <%--</div>--%>
                            <%--<br />--%>
                            <%--<div class="row">--%>

                            <div class="col-md-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" Width="150px" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <%--<a href="homepage.aspx"><< Back to Home</a>--%><br>
                <br>
            </div>
            </center>
                <br />
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                           <h1>Album List</h1>
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Special SoundsConnectionString4 %>" SelectCommand="SELECT * FROM [albumTB]"></asp:SqlDataSource>
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
            <div>
                <strong><a href="homepage.aspx" style="color: #000000"><< Back to Home</a></strong>
            </div>
        </div>
        <%--</center>--%>
        <br />
    </section>
</asp:Content>
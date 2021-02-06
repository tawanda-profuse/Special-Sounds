<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loading.aspx.cs" Inherits="Movie_Rental.Loading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        window.onload = function () {
            window.location.replace("playlist.aspx");
        }
    </script>
    <style>
        img{
            width: 150px;
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; margin-top:300px;">
            <img src="images/loading.gif"/>
            <h3>LOADING...</h3>
        </div>
    </form>
</body>
</html>

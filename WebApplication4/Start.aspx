<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="WebApplication4.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#b6ffff;text-align:center">
    <form id="form1" runat="server">
        <div>
            <h1 style="color:#0053ff;font-size:4em;">
                The Bayview Hotel</h1>
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile1.xml"></asp:XmlDataSource>
               </div>
        <div>
        <p style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Book Now!!" Height="42px" Width="210px" BorderColor="WhiteSmoke" OnClick="Button1_Click" />
        </p>
        </div>
    </form>
</body>
</html>

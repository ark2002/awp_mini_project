<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookpage.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 433px;
            margin-right: 25%;
        }
        .auto-style3 {
            margin-right: 0px;
        }
        .auto-style4 {
            width: 207px;
        }
        .auto-style5 {
            width: 236px;
        }
    </style>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
        <div>
            <h1 style="color:#0053ff;font-size:4em;">Booking Details</h1>
        </div>
        <asp:Image ID="Image1" runat="server" src="book.png" Height="348px" Width="655px" />
            <div style=" margin-left:25%; " class="auto-style2">
            <table style="width:100%; ">
                <tr>
                    <td> <asp:Label ID="Label1" runat="server" style="width:100%" > First Name : </asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server"  style="width:100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name" ForeColor="Red" ValidationExpression="^[a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td><asp:Label ID="Label2" runat="server" style="width:100%" > Last Name : </asp:Label></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server"  style="width:100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your Last Name" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name" ForeColor="Red" ValidationExpression="^[a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" style="width:100%" > E-mail : </asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"  style="width:100%"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid Email" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                    <td><asp:Label ID="Label4" runat="server" style="width:100%" > Contact number : </asp:Label></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server"  style="width:100%"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid Contact number" ForeColor="Red" ValidationExpression="^9\d{9}$"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox4" ErrorMessage="Enter valid Contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" style="width:100%" > Room Type : </asp:Label></td>
                    <td class="auto-style4">
                        <select id="Select1" name="D1" style="width:100%;">
                            <option>Standard</option>
                            <option>Deluxe</option>
                            <option>Elite</option>
                        </select></td>
                    <td><asp:Label ID="Label6" runat="server" style="width:100%" > No. of Rooms : </asp:Label></td>
                    <td class="auto-style5">
                        <select id="Select2" name="D2" style="width:100%;">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" style="width:100%" > Adults : </asp:Label></td>
                    <td class="auto-style4">
                        <select id="Select3" name="D3" style="width:100%;">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select></td>
                    <td><asp:Label ID="Label8" runat="server" style="width:100%" > Children : </asp:Label></td>
                    <td class="auto-style5">
                        <select id="Select4" name="D4" style="width:100%;">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label9" runat="server" style="width:100%" > Date of Arrival : </asp:Label></td>
                    <td class="auto-style4">
                        <asp:Calendar ID="Calendar2" runat="server" Width="100%" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" >
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td><asp:Label ID="Label10" runat="server" style="width:100%" > Date of Depature : </asp:Label></td>
                    <td class="auto-style4">
                        <asp:Calendar ID="Calendar1" runat="server" Width="100%" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" CssClass="auto-style3" OnDayRender="Calendar1_DayRender">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />

                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                <td>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
                    </td>
                <td></td>
                <td class="auto-style4">
                    <input id="Reset1" type="reset" value="reset" /></td>
                </tr>
            </table>
                <asp:Label ID="Label11" runat="server" name="result" ForeColor="Red" Font-Size="Larger" Width="111%" ></asp:Label>
                </div>
    </form>
</body>
</html>

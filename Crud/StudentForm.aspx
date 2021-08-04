<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="Crud.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 201px;
        }
        .auto-style2 {
            width: 109px;
        }
        .auto-style3 {
            width: 131px;
        }
        .auto-style4 {
            margin-left: 44px;
        }
        .style5auto- {
            margin-left: 33px;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            margin-left: 44px;
            margin-top: 0px;
        }
        .auto-style7 {
            width: 109px;
            height: 28px;
        }
        .auto-style8 {
            width: 131px;
            height: 28px;
        }
        .auto-style9 {
            height: 28px;
        }
        .auto-style10 {
            width: 109px;
            height: 20px;
        }
        .auto-style11 {
            width: 131px;
            height: 20px;
        }
        .auto-style12 {
            height: 20px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div style="font-size:x-large" position="center">Student Information

        </div>
            <br />

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">Student Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td class="auto-style12">
                    <asp:TextBox ID="studentId" runat="server" Font-Size="Medium" Width="288px" CssClass="auto-style5"></asp:TextBox>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Size="Medium" Height="27px" Text="Get" Width="70px" BackColor="Aqua" OnClick="getData" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Student Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="studentName" runat="server" Font-Size="Medium" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">Student Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td class="auto-style9">
                    <asp:TextBox ID="studentAge" runat="server" Font-Size="Medium" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Student City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:DropDownList ID="studentCity" runat="server" Width="300px">
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Student Contact&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="studentContact" runat="server" Font-Size="Medium" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="34px" OnClick="insertData" Text="Insert" Width="81px" />
                    <asp:Button ID="Button2" runat="server" CssClass="style5auto-" Font-Bold="True" Font-Size="Medium" Height="34px" Text="Update" Width="80px" BackColor="#33CC33" OnClick="updateData" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Size="Medium" Height="34px" OnClick="deleteData" Text="Delete" Width="87px" style="margin-left: 46px" BackColor="Red" />
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Size="Medium" Height="34px" Text="Search" Width="90px" BackColor="Aqua" OnClick="searchData" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="message" runat="server" Font-Size="Medium" ForeColor="#00CC00" Text="Label" Visible="False" Width="585px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2">
                    <asp:GridView ID="StudentData" runat="server" Width="586px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELearning.Login.Loginaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1182px;
        }
        .auto-style4 {
            height: 360px;
            width: 169px;
            margin-top: 0px;
        }
        .auto-style7 {
            font-weight: bold;
        }
        .auto-style9 {
            width: 167px;
            text-align: left;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            text-align: left;
            width: 165px;
        }
        .auto-style12 {
            text-align: left;
            width: 162px;
        }
    </style>
</head>
<body>
    
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Image ID="Image1" runat="server" Height="665px" ImageUrl="~/DesignImages/login.jpg" Width="1206px" />
                </td>
                <td>
                    <form id="form2" runat="server">
                        &nbsp;&nbsp;
                    <fieldset class="auto-style4">
                        <legend><strong>LOGIN</strong></legend>
                        <br />
                        <br />
                        <div class="auto-style9">
                            <strong>                            
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            </strong>&nbsp;</div>
                        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
                        <br />
                        <div class="auto-style9">
                            <strong>
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            </strong>
                        </div>
                        <div class="auto-style11">
                            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;</div>
                            <strong>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0033CC" NavigateUrl="~/Login/Forgot_Password.aspx">Forgot Password</asp:HyperLink>
                            </strong>
                        <br />
                        <div class="auto-style10">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <div class="auto-style12">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                            <asp:Button ID="BtnLogin" runat="server" CssClass="auto-style7" OnClick="BtnLogin_Click" Text="Login" />
                            </strong>
                        </div>
                    </fieldset></form>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    
</body>
</html>

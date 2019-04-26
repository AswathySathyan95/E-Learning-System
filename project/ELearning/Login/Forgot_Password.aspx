<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="ELearning.Login.Forgot_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 304px;
            width: 492px;
            margin-left: 420px;
        }
        .auto-style4 {
            height: 175px;
            width: 432px;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            width: 89px;
        }
        .auto-style7 {
            font-size: x-large;
            color: #000099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
       
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td rowspan="3">
                    <fieldset class="auto-style3">
                        <legend class="auto-style7"><strong><em>Forgot Password</em></strong></legend>
                        <br />
                        <div class="auto-style4">

                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td><strong>
                                        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Enter Your Email Address"></asp:Label>
                                        </strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TxtEmail" runat="server" Width="233px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td><strong>
                                        <asp:Button ID="BtnSubmit" runat="server" CssClass="auto-style5" OnClick="BtnSubmit_Click" Text="Submit" />
                                        </strong>
                                        <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td><strong>
                                        <asp:Label ID="LblPswd" runat="server" Text="Please Check Your Registered Email" Visible="False"></asp:Label>
                                        </strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>

                        </div>
                    </fieldset>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
       
    </form>
</body>
</html>

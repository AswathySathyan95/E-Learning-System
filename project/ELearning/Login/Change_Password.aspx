<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="ELearning.Login.Change_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            font-size: x-large;
            color: #000099;
            width: 236px;
        }
        .auto-style4 {
            width: 238px;
        }
        .auto-style5 {
            width: 677px;
        }
        .auto-style6 {
            width: 739px;
        }
        .auto-style7 {
            height: 26px;
            text-align: center;
        }
        .auto-style9 {
            width: 43px;
        }
        .auto-style10 {
            height: 26px;
            width: 43px;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            width: 430px;
        }
        .auto-style13 {
            height: 26px;
            width: 430px;
        }
        .auto-style14 {
            width: 102%;
        }
        .auto-style15 {
            width: 12px;
        }
        .auto-style16 {
            height: 26px;
            width: 12px;
        }
        .auto-style18 {
            width: 143px;
        }
        .auto-style19 {
            width: 222px;
        }
        .auto-style20 {
            height: 326px;
        }
        .auto-style21 {
            background-color: #9933FF;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="3" rowspan="16">
                        <fieldset class="auto-style5">
                            <legend class="auto-style3" style="border: thick"><strong><em> <span class="auto-style21">Change Password </span></em></strong></legend>
                            <div class="auto-style20">
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19"><strong>
                                            <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
                                            </strong></td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TxtCPswd" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19"><strong>
                                            <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                                            </strong></td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TxtNPswd" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19"><strong>
                                            <asp:Label ID="Label3" runat="server" Text="Re-type New Password"></asp:Label>
                                            </strong></td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TxtCNPswd" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12" rowspan="2"><strong>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNPswd" ControlToValidate="TxtCNPswd" ErrorMessage="Password confirmation doesn't match the password" ForeColor="Red"></asp:CompareValidator>
                                            </strong></td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10"></td>
                                        <td class="auto-style7" colspan="2"><strong>
                                            <asp:Button ID="BtnSave" runat="server" CssClass="auto-style11" OnClick="BtnSave_Click" Text="Save Changes" Width="150px" />
                                            </strong></td>
                                        <td class="auto-style13"></td>
                                        <td class="auto-style16"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style15">&nbsp;</td>
                                    </tr>
                                </table>
                            <br />


                            </div>
                            <br />


                        </fieldset>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

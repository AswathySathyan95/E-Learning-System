<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="ELearning.Login.Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="text-center" colspan="5" style="color: #000099; font-size: x-large"><em><strong>Change Password</strong></em></td>
    </tr>
    <tr>
        <td style="height: 24px"></td>
        <td style="height: 24px"><strong>
            <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
            </strong></td>
        <td style="height: 24px">
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
        <td style="height: 24px"></td>
        <td style="height: 24px"></td>
    </tr>
    <tr>
        <td style="height: 23px"></td>
        <td style="height: 23px"><strong>
            <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
            </strong></td>
        <td style="height: 23px">
            <asp:TextBox ID="txtNewPswd" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
        </td>
        <td style="height: 23px">&nbsp;</td>
        <td style="height: 23px"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Label ID="Label3" runat="server" Text="Confirm New Password"></asp:Label>
            </strong></td>
        <td>
            <asp:TextBox ID="txtCNew_Pswd" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtCNew_Pswd" ControlToValidate="txtNewPswd" ErrorMessage="Password confirmation doesn't match the password" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="text-center" colspan="2">
            <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Change Password" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

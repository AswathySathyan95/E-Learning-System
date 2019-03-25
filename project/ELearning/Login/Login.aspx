<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELearning.Login.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 311px">&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td style="width: 299px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="292px" Width="923px" ImageUrl="~/DesignImage/login.jpg" />
            </td>
            <td colspan="2">
                <table class="nav-justified">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 22px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" style="text-align: left; font-weight: 700" Text="User name"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Password"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0033CC">Forgot Password?</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
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
        </tr>
        </table>
</asp:Content>

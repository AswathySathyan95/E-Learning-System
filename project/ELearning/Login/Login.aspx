<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELearning.Login.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <table class="nav-justified" style="width: 89%">
        <tr>
            <td style="width: 311px">&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td class="auto-style4" style="width: 36px">&nbsp;</td>
            <td class="auto-style1" style="width: 17px">&nbsp;</td>
            <td class="auto-style1" style="width: 8px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="292px" Width="674px" ImageUrl="~/DesignImage/login.jpg" style="margin-top: 0px" />
            </td>
           
            </td>
            <td class="auto-style3" style="width: 8px">
                <table class="nav-justified" style="width: 2038%; height: 245px">
                    <tr>
                        <td>
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Username"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td> <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Password"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <br />
                            <strong>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/Login/Forgot_Password.aspx">Forgot Password?</asp:HyperLink>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                                    <input id="check" checked class="check" type="checkbox" /><label for="check"><span class="icon"></span><span style="color: #000000">Keep me Signed in</span></label></td>
                    </tr>
                    <tr>
                        <td class="text-center">
                                    <asp:Button ID="btnlogin" runat="server" Text="login" OnClick="btnlogin_Click1" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

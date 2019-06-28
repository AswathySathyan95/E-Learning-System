<%@ Page Title="" Language="C#" MasterPageFile="~/mail/MailMaster.Master" AutoEventWireup="true" CodeBehind="ReadSent.aspx.cs" Inherits="ELearning.mail.ReadSent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 509px;
            width: 1379px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            height: 430px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            width: 100%;
            height: 378px;
        }
        .auto-style5 {
            width: 147px;
        }
        .auto-style6 {
            height: 32px;
            width: 147px;
        }
        .auto-style7 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="mainn" class="auto-style1">
        <div class="text-left">

            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Compose Mail</span></div>
        <div class="auto-style2">

            <table class="auto-style4">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <strong>
                        <asp:Label ID="Label4" runat="server" Text="From" CssClass="auto-style7" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtFrom" runat="server" Width="500px" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="To" CssClass="auto-style7" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtToId" runat="server" Width="500px" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Subject" CssClass="auto-style7" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style3" colspan="2">
                        <asp:TextBox ID="TxtSubject" runat="server" Width="500px" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Message" CssClass="auto-style7" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" Width="596px" Height="196px" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>

        </div>
    </div>
</asp:Content>

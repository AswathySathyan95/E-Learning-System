<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="Reply_Query.aspx.cs" Inherits="ELearning.Faculty.Reply_Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 452px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style5 {
            width: 207px;
            height: 53px;
        }
        .auto-style6 {
            height: 53px;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style9 {
            width: 207px;
            height: 25px;
        }
        .auto-style10 {
            height: 25px;
        }
        .auto-style11 {
            width: 181px;
            height: 25px;
        }
        .auto-style12 {
            width: 181px;
            height: 53px;
        }
        .auto-style13 {
            width: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-left">

            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Send Query Reply</span></div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" ForeColor="Black" Text="Query"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:Label ID="LblQuery" runat="server" CssClass="auto-style7" ForeColor="Black" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style7" ForeColor="Black" Text="Answer"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtAnswer" runat="server" Height="106px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="509px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnSave" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" OnClick="BtnSave_Click" Text="Save Answer" BorderStyle="Inset" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

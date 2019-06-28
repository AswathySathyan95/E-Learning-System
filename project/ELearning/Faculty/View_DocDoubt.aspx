<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="View_DocDoubt.aspx.cs" Inherits="ELearning.Faculty.View_DocDoubt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style3 {
            height: 32px;
            width: 151px;
        }
        .auto-style4 {
            width: 211px;
        }
        .auto-style5 {
            height: 32px;
            width: 211px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style8 {
            width: 631px;
        }
        .auto-style9 {
            height: 32px;
            width: 631px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        <div class="text-left">

            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Send Answer</span></div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Posted By" CssClass="auto-style6"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TxtBy" runat="server" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Query" CssClass="auto-style6"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TxtQuery" runat="server" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Answer" CssClass="auto-style6"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TxtAnswer" runat="server" Height="90px" TextMode="MultiLine" Width="519px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Button ID="Button1" runat="server" Text="Save Answer" CssClass="auto-style7" OnClick="Button1_Click" BorderStyle="Inset" Font-Size="Large" Height="51px" style="font-weight: bold" Width="200px" />
                        </strong>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

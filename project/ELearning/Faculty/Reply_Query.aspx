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
        .auto-style2 {
            width: 253px;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style4 {
            width: 253px;
            height: 53px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-left">

            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Send Query Reply</span></div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" ForeColor="Black" Text="Query"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:Label ID="LblQuery" runat="server" CssClass="auto-style7" ForeColor="Black" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style7" ForeColor="Black" Text="Answer"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtAnswer" runat="server" Height="106px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="252px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnSave" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" OnClick="BtnSave_Click" Text="Save Answer" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

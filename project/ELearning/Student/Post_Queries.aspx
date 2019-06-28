<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Post_Queries.aspx.cs" Inherits="ELearning.Student.Post_Queries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .b-image
        {
            height: 455px;
            background-image: url('.../DesignImages/doubt.png');
        }
        .auto-style5 {
            height: 449px;
        }
        .newStyle2 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style6 {
            width: 99px;
        }
        .auto-style7 {
            width: 256px;
        }
        .auto-style8 {
            width: 99px;
            height: 61px;
        }
        .auto-style9 {
            width: 256px;
            height: 61px;
        }
        .auto-style10 {
            height: 61px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="queries" class="auto-style5">

        <table class="w-100">
            <tr>
                <td colspan="4" class="text-left"><span class="newStyle2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ask Doubts</span></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Subject"></asp:Label>
                    </strong></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DdlSubject" runat="server" Width="410px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7"><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Question"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TxtQuestion" runat="server" Height="121px" TextMode="MultiLine" Width="410px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnQuery" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" OnClick="BtnQuery_Click" Text="Post Query" BorderStyle="Inset" Height="57px" Width="198px" />
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Post_Queries.aspx.cs" Inherits="ELearning.Student.Post_Queries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            height: 32px;
        }
        .auto-style3 {
            color: #000000;
            font-size: medium;
        }
        .b-image
        {
            height: 455px;
            background-image: url('.../DesignImages/doubt.png');
        }
        .auto-style4 {
            height: 79px;
        }
        .auto-style5 {
            height: 449px;
        }
        .auto-style9 {
            width: 332px;
        }
        .auto-style10 {
            height: 79px;
            width: 332px;
        }
        .auto-style11 {
            height: 32px;
            width: 332px;
        }
        .auto-style12 {
            width: 203px;
        }
        .auto-style13 {
            height: 79px;
            width: 203px;
        }
        .auto-style14 {
            height: 32px;
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="queries" class="auto-style5">

        <table class="w-100">
            <tr>
                <td class="text-left" colspan="4"><span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ask Doubts<br />
                    </span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Subject"></asp:Label>
                    </strong></td>
                <td>
                    <asp:DropDownList ID="DdlSubject" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Question"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TxtQuestion" runat="server" Height="97px" TextMode="MultiLine" Width="740px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4">
                    <br />
                    <asp:Button ID="BtnQuery" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" OnClick="BtnQuery_Click" Text="Post Query" />
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style11"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            </table>

    </div>
</asp:Content>

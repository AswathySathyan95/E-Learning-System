<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Ask_Doubts.aspx.cs" Inherits="ELearning.Student.Ask_Doubts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 448px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            text-align: left;
            height: 340px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            width: 111px;
        }
        .auto-style5 {
            height: 32px;
            width: 111px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 308px;
        }
        .auto-style8 {
            height: 32px;
            width: 308px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="maincnt" class="auto-style1">
        <div class="text-left">
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ask Your Doubts</span>
        </div>
        <div class="auto-style2">

            <table class="w-100">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Document Id"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtDocId" runat="server" BorderStyle="None" ReadOnly="True" Width="350px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Subject"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtSubject" runat="server" BorderStyle="None" ReadOnly="True" Width="350px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Question"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtQstn" runat="server" Height="126px" TextMode="MultiLine" Width="422px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="BtnSave" runat="server" CssClass="auto-style9" OnClick="BtnSave_Click" Text="Save Question" BorderStyle="Inset" Height="60px" style="font-weight: bold; font-size: large" Width="254px" />
                        </strong>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

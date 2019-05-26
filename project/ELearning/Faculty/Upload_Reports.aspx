<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Upload_Reports.aspx.cs" Inherits="ELearning.Faculty.Upload_Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style2" colspan="2"><span class="newStyle1">Upload Reports<br />
                </span></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"><strong>
                <asp:Label ID="Label5" runat="server" Text="Course"></asp:Label>
                </strong></td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"><strong>
                <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
                </strong></td>
            <td class="auto-style15">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddlSubject" runat="server">
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlDepartment" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"><strong>
                <asp:Label ID="Label2" runat="server" Text="Topic"></asp:Label>
                </strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="txtTopic" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" Height="59px" TextMode="MultiLine" Width="173px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20"><strong>
                <asp:Label ID="Label4" runat="server" Text="Upload File"></asp:Label>
                </strong></td>
            <td class="auto-style21">
                <asp:FileUpload ID="fuReport" runat="server" />
            </td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="btnReport" runat="server" OnClick="btnReport_Click" Text="Upload Report" Height="33px" style="font-weight: bold" Width="162px" />
                </strong>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style5"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            width: 1239px;
        }
        .auto-style2 {
            height: 22px;
            text-align: center;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            width: 390px;
        }
        .auto-style5 {
            height: 20px;
            width: 390px;
        }
        .auto-style6 {
            height: 22px;
            width: 243px;
        }
        .auto-style7 {
            width: 243px;
        }
        .auto-style9 {
            height: 20px;
            width: 243px;
        }
        .auto-style10 {
            width: 243px;
            height: 40px;
        }
        .auto-style11 {
            width: 390px;
            height: 40px;
        }
        .auto-style12 {
            height: 40px;
        }
        .auto-style13 {
            width: 243px;
            height: 44px;
        }
        .auto-style14 {
            width: 390px;
            height: 44px;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style16 {
            width: 243px;
            height: 48px;
        }
        .auto-style17 {
            width: 390px;
            height: 48px;
        }
        .auto-style18 {
            height: 48px;
        }
        .auto-style19 {
            width: 243px;
            height: 49px;
        }
        .auto-style20 {
            width: 390px;
            height: 49px;
        }
        .auto-style21 {
            height: 49px;
        }
    </style>
</asp:Content>


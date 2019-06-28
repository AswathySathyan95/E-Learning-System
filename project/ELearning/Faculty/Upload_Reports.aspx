<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Upload_Reports.aspx.cs" Inherits="ELearning.Faculty.Upload_Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6" colspan="5">
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Reports</span></td>
        </tr>
        <tr>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">
                
            </td>
            <td class="auto-style11"><strong>
                <asp:Label ID="Label5" runat="server" Text="Course"></asp:Label>
                </strong></td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged" Width="350px">
                </asp:DropDownList>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style14"><strong>
                <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
                </strong></td>
            <td class="auto-style15">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddlSubject" runat="server" Width="350px">
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
            <td class="auto-style30"></td>
            <td class="auto-style23"><strong>
                <asp:Label ID="Label2" runat="server" Text="Topic"></asp:Label>
                </strong></td>
            <td class="auto-style24">
                <asp:TextBox ID="txtTopic" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style26"><strong>
                <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                </strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="txtDescription" runat="server" Height="59px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
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
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong>
                <asp:Button ID="btnReport" runat="server" OnClick="btnReport_Click" Text="Upload Report" Height="48px" style="font-weight: bold" Width="199px" BorderStyle="Inset" CssClass="auto-style35" />
                </strong>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style5"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
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
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            width: 260px;
        }
        .auto-style5 {
            height: 20px;
            width: 260px;
        }
        .auto-style6 {
            height: 22px;
            text-align: left;
        }
        .auto-style11 {
            width: 260px;
            height: 40px;
        }
        .auto-style12 {
            height: 40px;
        }
        .auto-style14 {
            width: 260px;
            height: 44px;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style20 {
            width: 260px;
            height: 49px;
        }
        .auto-style21 {
            height: 49px;
        }
        .auto-style23 {
            width: 260px;
            height: 50px;
        }
        .auto-style24 {
            height: 50px;
        }
        .auto-style26 {
            width: 260px;
            height: 73px;
        }
        .auto-style27 {
            height: 73px;
        }
        .auto-style28 {
            width: 114px;
            height: 40px;
        }
        .auto-style29 {
            width: 114px;
            height: 44px;
        }
        .auto-style30 {
            width: 114px;
            height: 50px;
        }
        .auto-style31 {
            width: 114px;
            height: 73px;
        }
        .auto-style32 {
            width: 114px;
            height: 49px;
        }
        .auto-style33 {
            width: 114px;
        }
        .auto-style34 {
            height: 20px;
            width: 114px;
        }
        .auto-style35 {
            font-size: large;
        }
    </style>
</asp:Content>


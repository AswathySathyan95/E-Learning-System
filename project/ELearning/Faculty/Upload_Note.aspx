<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Upload_Note.aspx.cs" Inherits="ELearning.Faculty.Upload_Note" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11" colspan="5">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Notes</span></td>
        </tr>
        <tr>
            <td class="auto-style3">
                
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                
            </td>
            <td class="auto-style4"><strong>
                <asp:Label ID="Label5" runat="server" Text="Course" Font-Size="Large" CssClass="auto-style10" Font-Bold="True" ForeColor="Black"></asp:Label>
                </strong></td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlDepartment" runat="server" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged" AutoPostBack="True" Width="350px">
                </asp:DropDownList>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"><strong>
                <asp:Label ID="Label1" runat="server" Text="Subject" Font-Size="Large" CssClass="auto-style9" Font-Bold="True" ForeColor="Black"></asp:Label>
                </strong></td>
            <td class="auto-style6">
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
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"><strong>
                <asp:Label ID="Label2" runat="server" Text="Topic" Font-Size="Large" CssClass="auto-style9" Font-Bold="True" ForeColor="Black"></asp:Label>
                </strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTopic" runat="server" Width="350px"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"><strong>
                <asp:Label ID="Label3" runat="server" Text="Upload Note" Font-Size="Large" CssClass="auto-style9" Font-Bold="True" ForeColor="Black"></asp:Label>
                </strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="fuNotes" runat="server" />
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNoteUpload" runat="server" OnClick="btnNoteUpload_Click" Text="Upload Note" Font-Size="Large" Font-Bold="True" ForeColor="Black" BorderStyle="Inset" Height="57px" Width="246px" />
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            width: 1266px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            width: 93px;
            height: 48px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            width: 93px;
            height: 51px;
        }
        .auto-style6 {
            height: 51px;
        }
        .auto-style7 {
            width: 93px;
            height: 43px;
        }
        .auto-style8 {
            height: 43px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            height: 22px;
            text-align: left;
        }
        .auto-style13 {
            width: 93px;
        }
        .auto-style14 {
            width: 93px;
            height: 53px;
        }
        .auto-style15 {
            height: 53px;
        }
    </style>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMasterPage.master" AutoEventWireup="true" CodeBehind="Upload_Notes.aspx.cs" Inherits="ELearning.Faculty.Upload_Notes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 22px; width: 212px;"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 212px;"></td>
            <td style="height: 22px"><strong>
                <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
                </strong></td>
            <td style="height: 22px">
                <asp:DropDownList ID="ddlDepartment" runat="server" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td><strong>
                <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
                </strong></td>
            <td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td><strong>
                <asp:Label ID="Label2" runat="server" Text="Topic"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtTopic" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td><strong>
                <asp:Label ID="Label3" runat="server" Text="Upload Note"></asp:Label>
                </strong></td>
            <td>
                <asp:FileUpload ID="fuNotes" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 212px;"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnNoteUpload" runat="server" OnClick="btnNoteUpload_Click" Text="Upload Note" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

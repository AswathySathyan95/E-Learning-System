<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Upload_Video.aspx.cs" Inherits="ELearning.Faculty.Upload_Video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">

        <table class="auto-style3">
            <tr>
                <td class="text-center" colspan="4"><span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Video Tutorials</span></td>
            </tr>
            <tr>
                <td class="auto-style8">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                </td>
                <td class="auto-style6">
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" Text="Course" ForeColor="Black" CssClass="auto-style18"></asp:Label>
                                    </strong></td>
                <td>
                                    <asp:DropDownList ID="DdlDepartment" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlDepartment_SelectedIndexChanged" Width="350px">
                                    </asp:DropDownList>
                                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6">
                                    <strong>
                                    <asp:Label ID="Label2" runat="server" Text="Subject" ForeColor="Black" CssClass="auto-style18"></asp:Label>
                                    </strong>
                                </td>
                <td>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="DdlSubject" runat="server" Width="350px">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="DdlDepartment" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6">
                                    <strong>
                                    <asp:Label ID="Label3" runat="server" Text="Topic" ForeColor="Black" CssClass="auto-style18"></asp:Label>
                                    </strong>
                                </td>
                <td>
                                    <asp:TextBox ID="TxtTopic" runat="server" Width="350px"></asp:TextBox>
                                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6">
                                    <strong>
                                    <asp:Label ID="Label4" runat="server" Text="Description" ForeColor="Black" CssClass="auto-style18"></asp:Label>
                                    </strong>
                                </td>
                <td>
                                    <asp:TextBox ID="TxtDescptn" runat="server" TextMode="MultiLine" Width="350px"></asp:TextBox>
                                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style7">
                                    <strong>
                                    <asp:Label ID="Label5" runat="server" Text="Upload Video" ForeColor="Black" CssClass="auto-style18"></asp:Label>
                                    <br />
                                    </strong>
                                </td>
                <td class="auto-style2">
                                    <asp:FileUpload ID="FuVideo" runat="server" />
                                <br />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <br />
                    <strong>
                                    <asp:Button ID="BtnSave" runat="server" CssClass="auto-style14" OnClick="BtnSave_Click" style="height: 42px" Text="Upload Video" Width="204px" Font-Bold="True" Font-Size="Large" ForeColor="Black" />
                                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">

        .auto-style1 {
            height: 446px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            height: 38px;
        }
        .auto-style3 {
            width: 100%;
            height: 438px;
        }
        .auto-style6 {
            width: 289px;
        }
        .auto-style7 {
            height: 38px;
            width: 289px;
        }
        .auto-style8 {
            width: 211px;
        }
        .auto-style9 {
            height: 38px;
            width: 211px;
        }

    </style>
</asp:Content>


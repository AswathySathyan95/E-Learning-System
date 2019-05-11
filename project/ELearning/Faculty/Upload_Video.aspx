<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Upload_Video.aspx.cs" Inherits="ELearning.Faculty.Upload_Video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="mainn" class="auto-style1">

        <table class="auto-style2">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style4">
                    <div id="heading" class="text-center">
                        <span class="newStyle1">Upload Video Tutorials<br />
                        </span></div>
                    <div id="contnt">

                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style5">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                </td>
                                <td class="auto-style9">
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" Text="Department" ForeColor="Black"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DdlDepartment" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlDepartment_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <strong>
                                    <asp:Label ID="Label2" runat="server" Text="Subject" ForeColor="Black"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="DdlSubject" runat="server">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="DdlDepartment" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6"></td>
                                <td class="auto-style10">
                                    <strong>
                                    <asp:Label ID="Label3" runat="server" Text="Topic" ForeColor="Black"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="TxtTopic" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">
                                    <strong>
                                    <asp:Label ID="Label4" runat="server" Text="Description" ForeColor="Black"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="TxtDescptn" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style15"></td>
                                <td class="auto-style16">
                                    <strong>
                                    <asp:Label ID="Label5" runat="server" Text="Upload Video" ForeColor="Black"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style17">
                                    <asp:FileUpload ID="FuVideo" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style9">&nbsp;</td>
                                <td><strong>
                                    <br />
                                    <asp:Button ID="BtnSave" runat="server" CssClass="auto-style14" OnClick="BtnSave_Click" style="height: 42px" Text="Upload Video" Width="204px" />
                                    <br />
                                    </strong></td>
                            </tr>
                        </table>

                    </div>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            height: 453px;
        }
        .auto-style2 {
            width: 100%;
            height: 446px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            width: 90%
        }
        .auto-style4 {
            width: 1374px;
        }
        .auto-style5 {
            width: 277px;
        }
        .auto-style6 {
            width: 277px;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            width: 362px;
        }
        .auto-style9 {
            width: 189px;
        }
        .auto-style10 {
            height: 32px;
            width: 189px;
        }
        .auto-style14 {
            font-weight: bold;
        }
        .auto-style15 {
            width: 277px;
            height: 17px;
        }
        .auto-style16 {
            height: 17px;
            width: 189px;
        }
        .auto-style17 {
            height: 17px;
        }
    </style>
</asp:Content>


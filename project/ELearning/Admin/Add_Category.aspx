<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="Add_Category.aspx.cs" Inherits="ELearning.Admin.Add_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="maincontent" style="height: 566px">
        <div id="heading" class="text-left" style="font-family: 'Tw Cen MT'">
            <br />
            <span class="newStyle3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUIZ CATEGORY </span>
        </div>
        <div id="categorycnt" style="height: 507px">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style6">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style7">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        &nbsp;<table class="nav-justified">
                            <tr>
                                <td style="height: 22px">
                        <asp:TextBox ID="TxtCtgry" runat="server" AutoPostBack="True" OnTextChanged="TxtCtgry_TextChanged"></asp:TextBox>
                                </td>
                                <td style="height: 22px">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <strong>
                                            <asp:Label ID="LblCtgry" runat="server" ForeColor="Red" Text="Already existing category!!!Add another one" Visible="False"></asp:Label>
                                            </strong>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="TxtCtgry" EventName="TextChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                    <td colspan="2" rowspan="5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style7">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Category Image"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:FileUpload ID="FuCtgry" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style6"></td>
                    <td style="height: 20px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Button ID="BtnSaveCategory" runat="server" OnClick="BtnSaveCategory_Click" style="font-weight: bold" Text="Save Details" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Button ID="BtnSubctgry" runat="server" Height="39px" OnClick="BtnSubctgry_Click" style="font-weight: bold" Text="Click To Add SubCategory" />
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    
                    <td colspan="3" style="height: 253px">
                        <asp:Panel ID="PanelSubctgry" runat="server" Height="240px" Visible="False" Width="1233px">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style13" style="color: #003399; font-size: xx-large; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; ">&nbsp;</td>
                                    <td class="text-left" colspan="3" style="color: #003399; font-size: xx-large; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; height: 64px;"><span class="newStyle4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sub Category</span></td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style10"><strong>
                                        <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                                        </strong></td>
                                    <td>
                                        <asp:DropDownList ID="DdlCategory" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="text-right" rowspan="4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style10"><strong>
                                        <asp:Label ID="Label4" runat="server" Text="SubCategory"></asp:Label>
                                        </strong></td>
                                    <td>
                                        <table class="nav-justified">
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="TxtSubctgry" runat="server" OnTextChanged="TxtSubctgry_TextChanged"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                            <strong>
                                                            <asp:Label ID="LblSubCtgry" runat="server" ForeColor="Red" Text="Already existing Sub category!!!Add another one" Visible="False"></asp:Label>
                                                            </strong>
                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <asp:AsyncPostBackTrigger ControlID="TxtSubctgry" EventName="TextChanged" />
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style10"><strong>
                                        <asp:Label ID="Label5" runat="server" Text="Sub Category Image"></asp:Label>
                                        </strong></td>
                                    <td>
                                        <asp:FileUpload ID="FuSubctgry" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">&nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">&nbsp;</td>
                                    <td class="auto-style9"></td>
                                    <td style="height: 26px"><strong>
                                        <asp:Button ID="BtnSubSave" runat="server" OnClick="BtnSubSave_Click" style="font-weight: bold" Text="Save Details" />
                                        </strong></td>
                                    <td style="height: 26px"></td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td style="height: 253px"></td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            height: 595px;
            width: 1477px;
        }
        .auto-style2 {
            height: 278px;
            width: 1201px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: larger;
            font-weight: bolder;
            font-style: normal;
        }
        .newStyle2 {
            font-family: "Colonna MT";
        }
        .newStyle3 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .newStyle4 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style6 {
            height: 20px;
            width: 298px;
        }
        .auto-style7 {
            width: 298px;
        }
        .auto-style9 {
            height: 26px;
            width: 470px;
        }
        .auto-style10 {
            width: 470px;
        }
    .auto-style11 {
        height: 20px;
        width: 197px;
    }
    .auto-style12 {
        width: 197px;
    }
    .auto-style13 {
        text-align: center;
        height: 64px;
        width: 199px;
    }
    .auto-style15 {
        height: 26px;
        width: 199px;
    }
    .auto-style16 {
        width: 199px;
    }
    </style>
</asp:Content>


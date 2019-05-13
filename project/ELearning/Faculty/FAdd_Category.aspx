<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="FAdd_Category.aspx.cs" Inherits="ELearning.Faculty.FAdd_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
       <div id="maincontent" style="height: 566px">
        <div id="heading" class="text-center" style="font-family: 'Tw Cen MT'">
            <br />
            <strong><em><span style="font-size: xx-large; color: #003399; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Quiz Category</span></em></strong>
        </div>
        <div id="categorycnt" style="height: 507px">

            <table class="auto-style1">
                <tr>
                    <td style="height: 20px"></td>
                    <td style="height: 20px; width: 218px;">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 218px">
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
                    <td>&nbsp;</td>
                    <td style="width: 218px">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Category Image"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:FileUpload ID="FuCtgry" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px"></td>
                    <td style="height: 20px; width: 218px;"></td>
                    <td style="height: 20px">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 218px">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Button ID="BtnSaveCategory" runat="server" OnClick="BtnSaveCategory_Click" style="font-weight: bold" Text="Save Details" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 218px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 218px">&nbsp;</td>
                    <td>
                        <strong>
                        <asp:Button ID="BtnSubctgry" runat="server" Height="39px" OnClick="BtnSubctgry_Click" style="font-weight: bold" Text="Click To Add SubCategory" />
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 218px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 253px"></td>
                    <td colspan="3" style="height: 253px">
                        <asp:Panel ID="PanelSubctgry" runat="server" Height="240px" Visible="False">
                            <table class="nav-justified" style="height: 229px">
                                <tr>
                                    <td class="text-center" colspan="3" style="color: #003399; font-size: xx-large; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; height: 64px;"><strong><em>Sub Category</em></strong></td>
                                </tr>
                                <tr>
                                    <td style="width: 254px"><strong>
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
                                    <td style="width: 254px"><strong>
                                        <asp:Label ID="Label4" runat="server" Text="SubCategory"></asp:Label>
                                        </strong></td>
                                    <td>
                                        <table class="nav-justified">
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="TxtSubctgry" runat="server" OnTextChanged="TxtSubctgry_TextChanged" AutoPostBack="True"></asp:TextBox>
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
                                    <td style="width: 254px"><strong>
                                        <asp:Label ID="Label5" runat="server" Text="Sub Category Image"></asp:Label>
                                        </strong></td>
                                    <td>
                                        <asp:FileUpload ID="FuSubctgry" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 254px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="height: 26px; width: 254px"></td>
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
            height: 473px;
            width: 1408px;
        }
    </style>
</asp:Content>


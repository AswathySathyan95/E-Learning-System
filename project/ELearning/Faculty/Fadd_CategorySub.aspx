<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="Fadd_CategorySub.aspx.cs" Inherits="ELearning.Faculty.Fadd_CategorySub" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
         .auto-style2 {
            height: 1019px;
            width: 1418px;
        }
        .auto-style30 {
            position: relative;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            left: 0px;
            top: 0px;
        }
        .auto-style38 {
            width: 138px;
            font-size: large;
            font-weight: bold;
        }
    .auto-style39 {
        width: 224px;
    }
    .auto-style40 {
        width: 226px;
    }
    .auto-style41 {
        width: 426px;
    }
    .auto-style42 {
        height: 48px;
    }
    .auto-style43 {
        width: 224px;
        height: 48px;
    }
    .auto-style44 {
        height: 46px;
    }
    .auto-style45 {
        width: 224px;
        height: 46px;
    }
    .auto-style47 {
        width: 226px;
        height: 46px;
    }
    .auto-style48 {
        width: 426px;
        height: 46px;
    }
    .auto-style50 {
        width: 226px;
        height: 53px;
    }
    .auto-style51 {
        width: 426px;
        height: 53px;
    }
    .auto-style52 {
        height: 53px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="accordion" class="auto-style2">
        <div class="auto-style30">
            <div class="card-header" id="headingOne">
                <h5>
                    <strong>
                        <asp:Label ID="LblCategory" runat="server" Font-Bold="True" Font-Size="Large" CssClass="auto-style38" ForeColor="Black" Text="Add Category Details" Width="1031px"></asp:Label>
                    </strong>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </h5>
            </div>
            <div id="collapseOne">
                <div class="card-body">
                    <asp:Panel ID="PanelCategory" runat="server" SuppressPostBack="true" Width="1183px">
                        <table class="w-100">
                            <tr>
                                <td class="auto-style42"></td>
                                <td class="auto-style43"><strong>
                                    <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                                    </strong></td>
                                <td class="auto-style42"><strong>
                                    <asp:TextBox ID="TxtCtgry" runat="server" AutoPostBack="True" OnTextChanged="TxtCtgry_TextChanged" Width="350px"></asp:TextBox>
                                    </strong></td>
                                <td class="auto-style42">
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
                            <tr>
                                <td class="auto-style44"></td>
                                <td class="auto-style45"><strong>
                                    <asp:Label ID="Label2" runat="server" Text="Category Image"></asp:Label>
                                    </strong></td>
                                <td class="auto-style44"><strong>
                                    <asp:FileUpload ID="FuCtgry" runat="server" />
                                    </strong></td>
                                <td class="auto-style44"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td><strong>
                                    <asp:Button ID="BtnSaveCategory" runat="server" OnClick="BtnSaveCategory_Click" style="font-weight: bold" Text="Save Details" />
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        
                    </asp:Panel>
                </div>
            </div>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="LblCategory" ExpandControlID="LblCategory" TargetControlID="PanelCategory" />
        </div>
        <div class="auto-style30">
            <div class="card-header" id="headingTwo">
                <h5>
                    <strong>
                        <asp:Label ID="LblSubCatgy" runat="server" Font-Bold="True" Font-Size="Large" CssClass="auto-style38" ForeColor="Black" Text="Add SubCategory Details" Width="1031px"></asp:Label>
                    </strong>
                </h5>
            </div>
            <div id="collapseTwo">
                <div class="card-body">
                    <asp:Panel ID="PanelSubCtgry" runat="server" SuppressPostBack="true" Width="1184px">
                        <table class="w-100">
                            <tr>
                                <td class="auto-style47"><strong>
                                    <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                                    </strong></td>
                                <td class="auto-style48">
                                    <asp:DropDownList ID="DdlCategory" runat="server" Height="28px" Width="350px">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style44">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style50"><strong>
                                    <asp:Label ID="Label7" runat="server" Text="SubCategory"></asp:Label>
                                    </strong></td>
                                <td class="auto-style51">
                                    <asp:TextBox ID="TxtSubctgry" runat="server" AutoPostBack="True" OnTextChanged="TxtSubctgry_TextChanged" Width="350px"></asp:TextBox>
                                </td>
                                <td class="auto-style52">
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
                            <tr>
                                <td class="auto-style40"><strong>
                                    <asp:Label ID="Label8" runat="server" Text="Sub Category Image"></asp:Label>
                                    </strong></td>
                                <td class="auto-style41">
                                    <asp:FileUpload ID="FuSubctgry" runat="server" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style40">&nbsp;</td>
                                <td class="auto-style41">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style40">&nbsp;</td>
                                <td class="auto-style41"><strong>
                                    <asp:Button ID="BtnSubSave" runat="server" OnClick="BtnSubSave_Click" style="font-weight: bold" Text="Save Details" />
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </div>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" CollapseControlID="LblSubCatgy" ExpandControlID="LblSubCatgy" TargetControlID="PanelSubCtgry" Collapsed="True" />
        </div>
    </div>
</asp:Content>

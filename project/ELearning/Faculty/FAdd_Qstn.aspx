<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="FAdd_Qstn.aspx.cs" Inherits="ELearning.Faculty.FAdd_Qstn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td style="width: 677px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td class="auto-style22" colspan="3"><span class="newStyle1">Quiz Questions</span></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td style="width: 677px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px"><strong>
                <asp:Label ID="Label1" runat="server" Text="Question Id"></asp:Label>
                </strong></td>
            <td style="width: 677px">
                <asp:TextBox ID="TxtQ_Id" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 42px"></td>
            <td style="width: 311px; height: 42px"><strong>
                <asp:Label ID="Label7" runat="server" Text="Category"></asp:Label>
                </strong></td>
            <td style="height: 42px; width: 677px;">
                <asp:DropDownList ID="DdlCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged" Height="25px" Width="222px">
                </asp:DropDownList>
            </td>
            <td style="height: 42px"></td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td style="height: 30px"></td>
            <td style="width: 311px; height: 30px;"><strong>
                <asp:Label ID="Label8" runat="server" Text="Sub Category"></asp:Label>
                </strong></td>
            <td style="width: 677px; height: 30px;">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DdlSubcategory" runat="server" Height="25px" Width="224px">
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DdlCategory" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td style="height: 30px"></td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px"><strong>
                <asp:Label ID="Label2" runat="server" Text="Question"></asp:Label>
                </strong></td>
            <td style="width: 677px">
                <asp:TextBox ID="TxtQuestion" runat="server" Height="76px" TextMode="MultiLine" Width="628px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"><strong>
                <asp:Label ID="Label11" runat="server" Text="Options"></asp:Label>
                </strong></td>
            <td class="auto-style4">
                    <table class="nav-justified" style="height: 85px" __designer:mapid="1b">
                        <tr __designer:mapid="1c">
                            <td class="modal-sm" style="width: 345px; height: 20px;" __designer:mapid="1d"><strong __designer:mapid="1e">
                                <asp:Label ID="Label3" runat="server" Text="Option A"></asp:Label>
                                </strong></td>
                            <td __designer:mapid="20" style="height: 20px"><strong __designer:mapid="21">
                                <asp:Label ID="Label4" runat="server" Text="Option B"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr __designer:mapid="23">
                            <td class="modal-sm" style="width: 345px; height: 31px;" __designer:mapid="24">
                                <asp:TextBox ID="TxtOptn1" runat="server" style="margin-bottom: 10" Height="25px" Width="135px"></asp:TextBox>
                            </td>
                            <td __designer:mapid="26" style="height: 31px">
                                <asp:TextBox ID="TxtOptn2" runat="server" Height="25px" Width="135px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr __designer:mapid="28">
                            <td class="modal-sm" style="width: 345px; height: 20px;" __designer:mapid="29"><strong __designer:mapid="2a">
                                <asp:Label ID="Label5" runat="server" Text="Option C"></asp:Label>
                                </strong></td>
                            <td __designer:mapid="2c" style="height: 20px"><strong __designer:mapid="2d">
                                <asp:Label ID="Label6" runat="server" Text="Option D"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr __designer:mapid="2f">
                            <td class="modal-sm" style="width: 345px" __designer:mapid="30">
                                <asp:TextBox ID="TxtOptn3" runat="server" Height="25px" Width="135px"></asp:TextBox>
                            </td>
                            <td __designer:mapid="32">
                                <asp:TextBox ID="TxtOptn4" runat="server" AutoPostBack="True" OnTextChanged="TxtOptn4_TextChanged" Height="25px" Width="135px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style6">
                <br />
                <strong>
                <asp:Label ID="LblAns" runat="server" Text="Correct Answer"></asp:Label>
                </strong>
                <br />
            </td>
            <td class="auto-style7">
                <br />
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                       
                        <table class="nav-justified" style="width: 95%; height: 77px">
                            <tr>
                                <td style="height: 25px">
                                    <asp:RadioButton ID="RbOptnA" runat="server" GroupName="ca" Text="A" />
                                </td>
                                <td style="height: 25px">
                                    <asp:RadioButton ID="RbOptnB" runat="server" GroupName="ca" Text="B" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 20px">
                                    <asp:RadioButton ID="RbOptnC" runat="server" GroupName="ca" Text="C" />
                                </td>
                                <td style="height: 20px">
                                    <asp:RadioButton ID="RbOptnD" runat="server" Text="D" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="TxtOptn4" EventName="TextChanged" />
                    </Triggers>
                </asp:UpdatePanel>

                <br />
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <strong>
                <asp:Label ID="Label10" runat="server" Text="Description"></asp:Label>
                </strong>
                </td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtDescription" runat="server" Height="82px" TextMode="MultiLine" Width="622px"></asp:TextBox>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style13">
                <br />
                <br />
            </td>
            <td class="auto-style20">
                <strong>
                <asp:Button ID="BtnSave" runat="server" style="font-weight: bold" Text="Save Question" OnClick="BtnSave_Click" />
                </strong>
                <br />
            </td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            width: 1397px;
        }
        .auto-style2 {
            height: 121px;
        }
        .auto-style3 {
            width: 311px;
            height: 121px;
        }
        .auto-style4 {
            width: 677px;
            height: 121px;
        }
        .auto-style6 {
            width: 311px;
            height: 100px;
        }
        .auto-style7 {
            width: 677px;
            height: 100px;
        }
        .auto-style8 {
            height: 100px;
        }
        .auto-style9 {
            height: 10px;
        }
        .auto-style10 {
            width: 311px;
            height: 10px;
        }
        .auto-style11 {
            width: 677px;
            height: 10px;
        }
        .auto-style13 {
            text-align: right;
            width: 311px;
            height: 82px;
        }
        .auto-style20 {
            width: 677px;
            height: 82px;
        }
        .auto-style21 {
            height: 82px;
        }
        .auto-style22 {
            height: 20px;
            text-align: center;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
    </style>
</asp:Content>


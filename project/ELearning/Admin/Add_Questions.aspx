<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="Add_Questions.aspx.cs" Inherits="ELearning.Admin.Add_Questions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style2" colspan="3">
                <span class="newStyle2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                QUIZ QUESTIONS</span></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19"><strong>
                <asp:Label ID="Label1" runat="server" Text="Question Id"></asp:Label>
                </strong></td>
            <td class="auto-style20">
                <asp:TextBox ID="TxtQ_Id" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td style="height: 36px"></td>
            <td style="width: 311px; height: 36px"><strong>
                <asp:Label ID="Label7" runat="server" Text="Category"></asp:Label>
                </strong></td>
            <td class="auto-style13">
                <asp:DropDownList ID="DdlCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged" Height="25px" Width="222px">
                </asp:DropDownList>
            </td>
            <td style="height: 36px"></td>
            <td style="height: 36px"></td>
        </tr>
        <tr>
            <td style="height: 37px"></td>
            <td style="width: 311px; height: 37px;"><strong>
                <asp:Label ID="Label8" runat="server" Text="Sub Category"></asp:Label>
                </strong></td>
            <td class="auto-style14">
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
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style26"><strong>
                <asp:Label ID="Label2" runat="server" Text="Question"></asp:Label>
                </strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TxtQuestion" runat="server" Height="111px" TextMode="MultiLine" Width="628px" CausesValidation="True"></asp:TextBox>
            </td>
            <td colspan="2" class="auto-style25"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtQuestion" ErrorMessage="Please Enter Question" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style32"><strong>
                <asp:Label ID="Label11" runat="server" Text="Options"></asp:Label>
                </strong></td>
            <td class="auto-style33">
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
                            <td class="modal-sm" style="width: 345px" __designer:mapid="24">
                                <asp:TextBox ID="TxtOptn1" runat="server" style="margin-bottom: 10" Height="25px" Width="135px"></asp:TextBox>
                            </td>
                            <td __designer:mapid="26">
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
            <td class="auto-style31" colspan="2"><strong>
                <asp:Label ID="LblError" runat="server" ForeColor="Red" Text="Please Enter all Options" Visible="False"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style28">
                <br />
                <strong>
                <asp:Label ID="LblAns" runat="server" Text="Correct Answer"></asp:Label>
                </strong>
                <br />
            </td>
            <td class="auto-style29">
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

            </td>
            <td class="auto-style17" colspan="2"><strong>
                <asp:Label ID="LblErrorAns" runat="server" ForeColor="Red" Text="Please Select Answer" Visible="False"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 311px; height: 20px;">
                <strong>
                <asp:Label ID="Label10" runat="server" Text="Description"></asp:Label>
                </strong>
                </td>
            <td class="auto-style16">
                <asp:TextBox ID="TxtDescription" runat="server" Height="97px" TextMode="MultiLine" Width="622px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style10">
                <br />
                <br />
            </td>
            <td class="auto-style12">
                <br />
                <strong>
                <asp:Button ID="BtnSave" runat="server" style="font-weight: bold" Text="Save Question" OnClick="BtnSave_Click" />
                </strong>
                <br />
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            width: 1203px;
            height: 979px;
        }
        .auto-style2 {
            height: 97px;
            text-align: center;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-weight: bold;
            font-size: xx-large;
            color: #003399;
        }
        .auto-style10 {
            text-align: right;
            width: 311px;
            height: 42px;
        }
        .auto-style11 {
            height: 42px;
        }
        .auto-style12 {
            width: 647px;
            height: 42px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
        }
        .newStyle2 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style13 {
            height: 36px;
            width: 647px;
        }
        .auto-style14 {
            height: 37px;
            width: 647px;
        }
        .auto-style16 {
            height: 20px;
            width: 647px;
        }
        .auto-style17 {
        height: 27px;
    }
        .auto-style18 {
            height: 45px;
        }
        .auto-style19 {
            width: 311px;
            height: 45px;
        }
        .auto-style20 {
            width: 647px;
            height: 45px;
        }
    .auto-style25 {
            height: 127px;
        }
    .auto-style26 {
        width: 311px;
        height: 127px;
    }
    .auto-style27 {
        width: 647px;
        height: 127px;
    }
    .auto-style28 {
        width: 311px;
        height: 27px;
    }
    .auto-style29 {
        height: 27px;
        width: 647px;
    }
        .auto-style30 {
            height: 97px;
        }
        .auto-style31 {
            height: 124px;
        }
        .auto-style32 {
            width: 311px;
            height: 124px;
        }
        .auto-style33 {
            width: 647px;
            height: 124px;
        }
    </style>
</asp:Content>


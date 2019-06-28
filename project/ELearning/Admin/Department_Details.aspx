<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Department_Details.aspx.cs" Inherits="ELearning.Admin.Department_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 452px;
            width: 1420px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 317px;
        }
        .auto-style3 {
            width: 266px;
        }
        .auto-style5 {
            color: #000000;
            font-size: large;
        }
        .auto-style6 {
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style7 {
            width: 317px;
            height: 32px;
        }
        .auto-style8 {
            width: 266px;
            height: 32px;
        }
        .auto-style9 {
            text-align: left;
            height: 32px;
        }
        .auto-style10 {
            height: 32px;
        }
        .auto-style11 {
        width: 317px;
        height: 41px;
    }
    .auto-style12 {
        text-align: left;
        width: 266px;
        height: 41px;
    }
    .auto-style13 {
        text-align: left;
        height: 41px;
    }
    .auto-style14 {
        height: 41px;
    }
        .auto-style15 {
            width: 276px;
        }
        .auto-style17 {
            text-align: center;
            height: 120px;
            width: 1397px;
        }
        .auto-style18 {
            width: 98%;
            height: 163px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="main" class="auto-style1">
        <div id="heading" class="auto-style17">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="text-left">
            <strong class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Department Registration</strong>
            </div>
        </div>
        <div>
            <table class="auto-style18">
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Department" CssClass="auto-style5"></asp:Label>
                        </strong></td>
                    <td class="auto-style13">
                        <table class="w-100">
                            <tr>
                                <td class="auto-style15">
                                    <asp:TextBox ID="TxtDept" runat="server" OnTextChanged="TxtDept_TextChanged" AutoPostBack="True" CausesValidation="True"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <strong>
                                            <asp:Label ID="LblDept" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                            </strong>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="TxtDept" EventName="TextChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"><strong>
                        <asp:Label ID="LblMsg" runat="server" ForeColor="Red" Text="Please Enter Department Name" Visible="False"></asp:Label>
                        </strong></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"><strong>
                        <asp:Button ID="BtnClear" runat="server" CssClass="auto-style6" OnClick="BtnClear_Click" Text="Clear" Width="150px" />
                        </strong></td>
                    <td class="text-left"><strong>
                        <asp:Button ID="BtnSave" runat="server" CssClass="auto-style6" OnClick="BtnSave_Click" Text="Save" Width="150px" />
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

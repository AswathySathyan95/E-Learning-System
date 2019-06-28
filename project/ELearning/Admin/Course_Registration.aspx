<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Course_Registration.aspx.cs" Inherits="ELearning.Admin.Course_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 455px;
        }
    .newStyle1 {
        font-family: "colonna MT";
        font-size: 50px;
        font-weight: bolder;
        color: #000080;
    }
    .auto-style3 {
            width: 175px;
        }
        .auto-style7 {
            height: 30px;
            width: 175px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style9 {
            height: 53px;
            width: 175px;
        }
        .auto-style10 {
            height: 53px;
        }
        .auto-style11 {
            height: 30px;
            width: 305px;
        }
        .auto-style12 {
            height: 53px;
            width: 305px;
        }
        .auto-style13 {
            width: 305px;
        }
        .auto-style14 {
            height: 30px;
            width: 352px;
        }
        .auto-style15 {
            height: 53px;
            width: 352px;
        }
        .auto-style16 {
            width: 352px;
        }
        .auto-style17 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Course Registration</span>
        </div>
        <div>
            <table class="w-100">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Program" Width="300px"></asp:Label>
                </td>
                <td class="auto-style14">
                <asp:DropDownList ID="ddlProgram" runat="server" style="margin-bottom: 0" Width="300px">
                </asp:DropDownList>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Department" Width="300px"></asp:Label>
                </td>
                <td class="auto-style15">
                <asp:DropDownList ID="ddlDept" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDept_SelectedIndexChanged" Width="300px">
                </asp:DropDownList>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Course" Width="300px"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TxtCourse" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <strong>
                            <asp:Label ID="LblMsg" runat="server" CssClass="auto-style17" ForeColor="Red" Text="Please Enter Course Name" Visible="False"></asp:Label>
                            </strong>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddlDept" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="BtnClear" runat="server" CssClass="auto-style6" OnClick="BtnClear_Click" Text="Clear" Width="150px" BorderStyle="Inset" style="font-weight: bold" />
                        </strong>&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="BtnSave" runat="server" CssClass="auto-style6" OnClick="BtnSave_Click" Text="Save" Width="150px" BorderStyle="Inset" style="font-weight: bold" />
                        </strong>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        
    </div>
</asp:Content>

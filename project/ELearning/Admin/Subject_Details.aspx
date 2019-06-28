<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Subject_Details.aspx.cs" Inherits="ELearning.Admin.Subject_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 456px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 179px;
        }
        .auto-style3 {
            width: 273px;
        }
        .auto-style4 {
            width: 179px;
            height: 50px;
        }
        .auto-style5 {
            width: 273px;
            height: 50px;
        }
        .auto-style7 {
            height: 50px;
        }
        .auto-style8 {
            width: 406px;
        }
        .auto-style9 {
            height: 50px;
            width: 406px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subject Registration</span>
        </div>
        <div>
            <table class="w-100">
            <tr>
                <td class="auto-style2">
                    
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Course" Width="200px"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DdlCourse" runat="server" OnSelectedIndexChanged="DdlCourse_SelectedIndexChanged" Width="350px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Subject" Width="200px"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TxtSubject" runat="server" AutoPostBack="True" OnTextChanged="TxtSubject_TextChanged" Width="350px"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:Label ID="LblError" runat="server" ForeColor="Red" Text="Please Enter Subject Details" Visible="False"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <strong>
                            <asp:Label ID="LblMsg" runat="server" ForeColor="Red" Text="Subject Already Exists" Visible="False"></asp:Label>
                            </strong>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="TxtSubject" EventName ="TextChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="BtnClear" runat="server" CssClass="auto-style6" OnClick="BtnClear_Click" Text="Clear" Width="150px" BorderStyle="Inset" />
                        </strong>&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="BtnSave" runat="server" CssClass="auto-style6" OnClick="BtnSave_Click" Text="Save" Width="150px" BorderStyle="Inset" />
                        </strong>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>            
        </table>
        </div>
    </div>
</asp:Content>

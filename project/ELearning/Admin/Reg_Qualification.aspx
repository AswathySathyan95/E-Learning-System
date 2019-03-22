<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeBehind="Reg_Qualification.aspx.cs" Inherits="ELearning.Admin.Reg_Qualification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>
                <asp:Label ID="Label41" runat="server" ForeColor="Black" style="font-weight: 700" Text="Qualification Details" Font-Size="Medium"></asp:Label>
                            <asp:Label ID="Label52" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>
            <asp:Button ID="btnAddQual" runat="server" OnClick="btnAddQual_Click" Text="Add Qualification" />
            <asp:Label ID="lbltest" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td colspan="3">
            <asp:Panel ID="PanelQual" runat="server" Visible="False">
                <table class="nav-justified">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label42" runat="server" style="font-weight: 700" Text="Qualification"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label57" runat="server" style="font-weight: 700" Text="Specialization"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label43" runat="server" style="font-weight: 700" Text="College / School"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label44" runat="server" style="font-weight: 700" Text="University / Board"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label45" runat="server" style="font-weight: 700" Text="CGPA"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label46" runat="server" style="font-weight: 700" Text="Percentage(%)"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtQual" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSep" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCollege" runat="server" OnTextChanged="txtC_pg_TextChanged"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUniversity" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCgpa" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPercent" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="4" style="text-align: center">
                            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Width="96px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px; height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td style="height: 22px; width: 12px;"></td>
        <td class="text-left" colspan="3" rowspan="7">
            <asp:Panel ID="PanelExperience" runat="server" Visible="False">
                <table class="nav-justified">
                    <tr>
                        <td colspan="4" style="height: 22px"><strong>
                            <asp:Label ID="Label58" runat="server" Text="Experience" Font-Size="Medium"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="height: 22px">&nbsp;</td>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnAddExperience" runat="server" OnClick="btnAddQual_Click" Text="Add Qualification" />
                            <asp:Label ID="lblExperience" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td class="text-center">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 12px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

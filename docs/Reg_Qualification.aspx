<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeBehind="Reg_Qualification.aspx.cs" Inherits="ELearning.Admin.Reg_Qualification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                <asp:Label ID="Label41" runat="server" ForeColor="Black" style="font-weight: 700" Text="Qualification Details"></asp:Label>
                            <asp:Label ID="Label52" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px"></td>
        <td colspan="3" rowspan="8">
            <table class="nav-justified">
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
                            <asp:Label ID="Label53" runat="server" Text="Post Graduation"></asp:Label>
                        </td>
                    <td>
                            <asp:TextBox ID="txtSep_pg" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtC_pg" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtU_pg" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtCgpa_pg" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtPer_pg" runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="Label54" runat="server" Text="Graduation"></asp:Label>
                        </td>
                    <td>
                            <asp:TextBox ID="txtSep_ug" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtC_ug" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtU_ug" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtCgpa_ug" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtPer_ug" runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="Label55" runat="server" Text="12th"></asp:Label>
                        </td>
                    <td>
                            <asp:TextBox ID="txtSep_hse" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtC_hse" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtU_hse" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtCgpa_hse" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtPer_hse" runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="Label56" runat="server" Text="10th"></asp:Label>
                        </td>
                    <td>
                            <asp:TextBox ID="txtSep_sslc" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtC_sslc" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtU_sslc" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtCgpa_sslc" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtPer_sslc" runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="Label51" runat="server" Text="Others"></asp:Label>
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                            <asp:TextBox ID="txtQual_O1" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtSep_O1" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtC_O1" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtU_O1" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtCgpa_O1" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtPer_O1" runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                            <asp:TextBox ID="txtQual_O2" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtSep_O2" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtC_O2" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtU_O2" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtCgpa_O2" runat="server"></asp:TextBox>
                        </td>
                    <td>
                            <asp:TextBox ID="txtPer_O2" runat="server"></asp:TextBox>
                        </td>
                </tr>
            </table>
        </td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 22px"></td>
        <td class="text-left" colspan="3" rowspan="7">
            <asp:Panel ID="PanelExperience" runat="server" Visible="False">
                <table class="nav-justified">
                    <tr>
                        <td colspan="4"><strong>
                            <asp:Label ID="Label58" runat="server" Text="Experience"></asp:Label>
                            </strong></td>
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
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="text-center">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
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
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

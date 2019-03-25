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
            <asp:Panel ID="PanelQual" runat="server">
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
                            <asp:TextBox ID="txtQual" runat="server" Visible="False" Width="128px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSep" runat="server" Visible="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCollege" runat="server" OnTextChanged="txtC_pg_TextChanged" Visible="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUniversity" runat="server" Visible="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCgpa" runat="server" Visible="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPercent" runat="server" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:GridView ID="gvQual" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Visible="False" Width="328px">
                                <AlternatingRowStyle BackColor="#F7F7F7" />
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                <SortedDescendingHeaderStyle BackColor="#3E3277" />
                            </asp:GridView>
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
                            <asp:Button ID="btnExper" runat="server" Font-Size="Medium" OnClick="btnExper_Click" Text="Add Experience" />
                            <asp:Label ID="lblExperience" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table class="nav-justified">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label59" runat="server" style="font-weight: 700" Text="Organization Worked"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label60" runat="server" style="font-weight: 700" Text="Designation"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label61" runat="server" style="font-weight: 700" Text="From"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label62" runat="server" style="font-weight: 700" Text="To"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label63" runat="server" style="font-weight: 700" Text="Duration"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtOrg" runat="server" Visible="False"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtDesg" runat="server" Visible="False"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtFrom" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTo" runat="server" AutoPostBack="True" OnTextChanged="txtTo_TextChanged" TextMode="Date" Visible="False"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:TextBox ID="txtDuration" runat="server" Visible="False"></asp:TextBox>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="txtDuration" EventName="TextChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <asp:GridView ID="gvExper" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Visible="False">
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td colspan="3" style="text-align: center">
                                        <asp:Button ID="btnExpSave" runat="server" OnClick="Button2_Click" Text="Save Details" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
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
            <asp:Button ID="btnSubmitall" runat="server" Text="Submit" OnClick="Button1_Click" />
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

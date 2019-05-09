<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="Reg_Qualification.aspx.cs" Inherits="ELearning.Admin.Reg_Qualification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table style="width: 109%">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="3">
                <asp:Label ID="Label41" runat="server" Font-Size="Medium" ForeColor="Black" style="font-weight: 700" Text="Qualification Details"></asp:Label>
                <asp:Label ID="Label52" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td style="height: 20px" colspan="3"><strong>
                <asp:Button ID="BtnAddQual" runat="server" style="font-weight: bold" Text="Add Qualification" OnClick="BtnAddQual_Click" />
                <asp:Label ID="LblQual" runat="server" ForeColor="Red" Visible="False">Click Here To Add More Qualification Details</asp:Label>
                </strong></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="3">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 451px">
                            <asp:Panel ID="PanelQualification" runat="server" Height="221px" Visible="False">
                                <table style="width: 98%; height: 220px;">
                                    <tr>
                                        <td style="height: 29px">
                                            <asp:Label ID="Label42" runat="server" style="font-weight: 700" Text="Qualification"></asp:Label>
                                        </td>
                                        <td style="height: 29px; width: 172px">
                                            <asp:TextBox ID="TxtQual" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label57" runat="server" style="font-weight: 700" Text="Specialization"></asp:Label>
                                        </td>
                                        <td style="width: 172px">
                                            <asp:TextBox ID="TxtSpecialization" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label43" runat="server" style="font-weight: 700" Text="College / School"></asp:Label>
                                        </td>
                                        <td style="width: 172px">
                                            <asp:TextBox ID="TxtCollege" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 22px">
                                            <asp:Label ID="Label44" runat="server" style="font-weight: 700" Text="University / Board"></asp:Label>
                                        </td>
                                        <td style="height: 22px; width: 172px">
                                            <asp:TextBox ID="TxtUniversity" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label45" runat="server" style="font-weight: 700" Text="CGPA"></asp:Label>
                                        </td>
                                        <td style="width: 172px">
                                            <asp:TextBox ID="TxtCgpa" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label46" runat="server" style="font-weight: 700" Text="Percentage(%)"></asp:Label>
                                        </td>
                                        <td style="width: 172px">
                                            <asp:TextBox ID="TxtPercent" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td style="width: 172px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center" colspan="2" style="height: 26px"><strong>
                                            <asp:Button ID="BtnSaveQual" runat="server" style="font-weight: bold" Text="Save" Width="99px" OnClick="BtnSaveQual_Click" />
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px"></td>
                                        <td style="width: 172px; height: 20px"></td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:GridView ID="GvQual" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="178px" Width="812px" Visible="False">
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
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="text-center" style="height: 20px">&nbsp;</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="text-center"><strong __designer:mapid="15f">
                <asp:Button ID="BtnSubmit" runat="server" Font-Size="Large" Height="42px" style="font-weight: bold" Text="Submit " Width="151px" OnClick="BtnSubmit_Click" Visible="False" />
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td colspan="3" style="height: 427px">
                <asp:Panel ID="PanelExperience" runat="server" Visible="False" Height="427px">
                    <table style="width: 100%; height: 241px;">
                        <tr>
                            <td colspan="2"><strong>
                                <asp:Label ID="Label58" runat="server" Font-Size="Medium" Text="Experience"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td style="width: 451px"><strong>
                                <asp:Button ID="BtnAddExperience" runat="server" style="font-weight: bold" Text="Add Experience" OnClick="Button1_Click" />
                                </strong>
                                <asp:Label ID="LblExperience" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">Click Here To Add More Details.</asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">
                                <asp:Panel ID="PanelAddExperience" runat="server" Visible="False" Width="447px">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label59" runat="server" style="font-weight: 700" Text="Organization Worked"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtOrganization" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label60" runat="server" style="font-weight: 700" Text="Designation"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtDesg" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label61" runat="server" style="font-weight: 700" Text="From"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtFrom_date" runat="server" TextMode="Date"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label62" runat="server" style="font-weight: 700" Text="To"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtTo_date" runat="server" OnTextChanged="TxtTo_date_TextChanged" AutoPostBack="True" TextMode="Date"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label63" runat="server" style="font-weight: 700" Text="Duration"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <asp:TextBox ID="TxtDuration" runat="server"></asp:TextBox>
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:AsyncPostBackTrigger ControlID="TxtTo_date" EventName="TextChanged" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px"></td>
                                            <td style="height: 20px"></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center" colspan="2"><strong>
                                                <asp:Button ID="BtnSaveExp" runat="server" style="font-weight: bold" Text="Save Details" OnClick="BtnSaveExp_Click" />
                                                </strong></td>
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
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:GridView ID="GvExperience" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="215px" Visible="False" Width="812px">
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
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2"><strong>
                                <asp:Button ID="BtnSubmitAll" runat="server" Font-Size="Large" Height="42px" style="font-weight: bold" Text="Submit " Width="151px" OnClick="BtnSubmitAll_Click" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td style="height: 427px"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            width: 76px;
        }
        .auto-style2 {
            height: 20px;
            width: 76px;
        }
        .auto-style3 {
            height: 427px;
            width: 76px;
        }
    </style>
</asp:Content>


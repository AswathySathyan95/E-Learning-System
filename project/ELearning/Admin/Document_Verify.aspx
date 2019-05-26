<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Document_Verify.aspx.cs" Inherits="ELearning.Admin.Document_Verify" %>
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
    .auto-style2 {
        width: 234px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="maincnt" class="auto-style1">

        <table class="w-100">
            <tr>
                <td class="text-center" colspan="4"><span class="newStyle1">Document Verification</span></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Document Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DdlDocType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlDocType_SelectedIndexChanged">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>VideoTutorials</asp:ListItem>
                        <asp:ListItem>Notes</asp:ListItem>
                        <asp:ListItem>Reports</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2" rowspan="2">
                    <asp:GridView ID="GvDocument" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="GvDocument_RowCommand" AllowPaging="True" PageSize="5" OnPageIndexChanging="GvDocument_PageIndexChanging" Width="1079px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Doc_Id" HeaderText="Doc_Id" Visible="False" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" />
                            <asp:BoundField DataField="Topic" HeaderText="Topic" />
                            <asp:BoundField DataField="Description" HeaderText="Document Description" />
                            <asp:TemplateField HeaderText="View Document">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btn_Download" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Document_File") %>' CommandName="downloadDoc"  >
                                    <i class="fa fa-angle-right" aria-hidden="true"></i> View
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Verification">
                                <ItemTemplate>
                                    <asp:HiddenField ID="hdnApp" runat="server" Value='<%# Eval("Status") %>' />
                                    <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandArgument='<%# Eval("APR_STATUS") %>' CommandName="ShowStatus" OnClick="btnApprove_Click" Text='<%# Eval("APR_STATUS") %>' />
                                 
                                </ItemTemplate>
                                <ControlStyle ForeColor="Red" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

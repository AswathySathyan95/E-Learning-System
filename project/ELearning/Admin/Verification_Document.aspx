<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Verification_Document.aspx.cs" Inherits="ELearning.Admin.Verification_Document" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style1 {
            width: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>

        <table class="w-100">
            <tr>
                <td></td>
                <td class="text-center" colspan="3">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <span class="newStyle1">Document Verification</span></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Document Type"></asp:Label>
                                </td>
                <td>
                                    <asp:DropDownList ID="DdlDocument" runat="server" AutoPostBack="True" Width="201px" OnSelectedIndexChanged="DdlDocument_SelectedIndexChanged">
                                        <asp:ListItem>---Select---</asp:ListItem>
                                        <asp:ListItem>VideoTutorials</asp:ListItem>
                                        <asp:ListItem>Notes</asp:ListItem>
                                        <asp:ListItem>Reports</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td colspan="2" rowspan="5">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GvDocument" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" ForeColor="Black" GridLines="None" OnPageIndexChanging="GvDocument_PageIndexChanging" PageSize="5">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="Doc_Id" HeaderText="Document ID" />
                                        <asp:BoundField DataField="Subject" HeaderText="Subject" NullDisplayText="All Documents Are Verified" />
                                        <asp:BoundField DataField="Topic" HeaderText="Topic" />
                                        <asp:BoundField DataField="Description" HeaderText="Document Description" />
                                        <asp:TemplateField HeaderText="Download">
                                            <ItemTemplate>
                                               <asp:LinkButton ID="btn_Download" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Document_File") %>' CommandName="downloadDoc" OnClick="btnDownload_Click">
                                            <i class="fa fa-download" aria-hidden="true"></i> Download
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
                                    <EmptyDataTemplate>
                                        No Records Found
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" CssClass="card-footer" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="DdlDocument" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

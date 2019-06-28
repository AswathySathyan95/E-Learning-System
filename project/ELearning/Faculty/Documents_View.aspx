<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="Documents_View.aspx.cs" Inherits="ELearning.Faculty.Documents_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style1 {
            height: 553px;
        }
        .auto-style4 {
            width: 217px;
        }
        .auto-style5 {
            width: 392px;
        }
        .auto-style6 {
            text-align: left;
            width: 922px;
        }
        .auto-style7 {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-center">

            <table class="w-100">
                <tr>
                    <td class="auto-style5">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td class="auto-style6">

            <span class="newStyle1">View Documents</span></td>
                    <td class="text-right">
                        <asp:LinkButton ID="btn_Doubts" runat="server" BackColor="#343A40" BorderStyle="None"  CssClass="btn" ForeColor="White" OnClick="btn_Doubts_Click">
                           <i class="fa fa-question" aria-hidden="true"></i> View Doubts
                         </asp:LinkButton>
                        </td>
                </tr>
            </table>
        </div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="text-right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Document Type"></asp:Label>
                                </td>
                    <td>
                                    <asp:DropDownList ID="DdlDocument" runat="server" AutoPostBack="True" Width="350px" OnSelectedIndexChanged="DdlDocument_SelectedIndexChanged" CssClass="form-check-label">
                                        <asp:ListItem>---Select---</asp:ListItem>
                                        <asp:ListItem>VideoTutorials</asp:ListItem>
                                        <asp:ListItem>Notes</asp:ListItem>
                                        <asp:ListItem>Reports</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>

            <table class="w-100">
                <tr>
                    <td>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="GvDocument" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" ForeColor="Black" GridLines="None" OnPageIndexChanging="GvDocument_PageIndexChanging" PageSize="5" style="margin-left: 0px" Width="1111px" OnRowCommand="GvDocument_RowCommand">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="Doc_Id" HeaderText="Document ID" Visible="False" />
                                                <asp:BoundField DataField="Subject" HeaderText="Subject" NullDisplayText="All Documents Are Verified" />
                                                <asp:BoundField DataField="Topic" HeaderText="Topic" />
                                                <asp:BoundField DataField="Description" HeaderText="Document Description" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField HeaderText="Download">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btn_Download" runat="server" BackColor="#343A40" BorderStyle="None" CommandArgument='<%# Eval("Document_File") %>' CommandName="downloadDoc" CssClass="btn" ForeColor="White">
                                                <i class="fa fa-download" aria-hidden="true"></i> Download
                                                </asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Delete Document">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btn_Delete" runat="server" BackColor="#343A40" BorderStyle="None" CommandArgument='<%# Eval("Doc_Id") %>' CommandName="DeleteDoc" CssClass="btn" ForeColor="White">
                                                <i class="fa fa-trash" aria-hidden="true"></i> Delete
                                                </asp:LinkButton>
                                                    </ItemTemplate>
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
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

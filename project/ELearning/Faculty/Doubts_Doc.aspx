<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="Doubts_Doc.aspx.cs" Inherits="ELearning.Faculty.Doubts_Doc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            width: 149px;
        }
        .auto-style3 {
            width: 117px;
        }
        .auto-style4 {
            margin-left: 11px;
        }
        .auto-style5 {
            width: 72px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        <div class="text-center">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="text-left">
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View Doubts</span>
            </div>
        </div>
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Subject" Width="200px"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:DropDownList ID="ddlSubject" runat="server" Width="350px" AutoPostBack="True" OnSelectedIndexChanged="ddlSubject_SelectedIndexChanged" CssClass="offset-sm-0">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:GridView ID="GvDocuments" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" PageSize="5" OnRowCommand="GvDocuments_Rowcommand" Width="806px" ShowHeaderWhenEmpty="True">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="Doc_Id" HeaderText="Doc_Id" Visible="False" />
                                                    <asp:BoundField DataField="Name" HeaderText="Posted By " />
                                                    <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Posted On" />
                                                    <asp:BoundField DataField="Query" HeaderText="Query" />
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btn_Download" runat="server" BackColor="#343A40" BorderStyle="None" CommandArgument='<%# Eval("Document_File") %>' CommandName="downloadDoc" CssClass="btn" ForeColor="White" OnClick="btnDownload_Click">
                                                            <i class="fa fa-download" aria-hidden="true"></i> Download
                                                            </asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btn_View" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Query_Id") %>' CommandName="viewquery" OnClick="btnView_Click">
                                                            <i class="fa fa-angle-right" aria-hidden="true"></i> Read & Reply
                                                            </asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    No Record Found
                                                </EmptyDataTemplate>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ddlSubject" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

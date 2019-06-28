<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="ViewQuery.aspx.cs" Inherits="ELearning.Faculty.ViewQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 454px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            width: 227px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            width: 255px;
        }
        .auto-style6 {
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-left">

            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Queries</span></div>
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">
                                    &nbsp;</td>
                    <td>
                                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td class="auto-style5">
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" Text="Subject" CssClass="auto-style4" Width="250px"></asp:Label>
                                    </strong>
                    </td>
                    <td>
                                    <asp:DropDownList ID="DdlQuerySub" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlQuerySub_SelectedIndexChanged" CssClass="offset-sm-0" Width="300px">
                                    </asp:DropDownList>
                                </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">
                                    &nbsp;</td>
                    <td>
                                    &nbsp;</td>
                </tr>
                </table>

        </div>
        <div>
            
            <table class="w-100">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GvQuery" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" OnPageIndexChanging="GvQuery_PageIndexChanging" Width="796px" PageSize="5" OnRowCommand="GvQuery_RowCommand" ShowHeaderWhenEmpty="True"> 
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="QUser_Id" HeaderText="Posted by" Visible="False" />
                                        <asp:BoundField DataField="Date" HeaderText="Posted On" DataFormatString="{0:d}" />
                                        <asp:BoundField DataField="Query" HeaderText="Query" />
                                        <asp:TemplateField HeaderText="Reply">
                                            <ItemTemplate>
                                             <asp:LinkButton ID="btn_Download" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Query_Id") %>' CommandName="viewquery" >
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
                                <asp:AsyncPostBackTrigger ControlID="DdlQuerySub" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
    </div>
</asp:Content>

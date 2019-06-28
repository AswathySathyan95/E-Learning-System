<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="View_Replies.aspx.cs" Inherits="ELearning.Admin.View_Replies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 453px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 46px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-left">

            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View Replies</span></div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GvReply" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" OnPageIndexChanging="GvReply_PageIndexChanging" Width="882px" PageSize="5" OnRowCommand="GvReply_RowCommand" CssClass="auto-style3"> 
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="RUser_Id" HeaderText="RUser_Id" Visible="False" />
                                        <asp:BoundField DataField="RUser_Id" HeaderText="Posted by" Visible="False" />
                                        <asp:BoundField DataField="Date" HeaderText="Posted On" />
                                        <asp:BoundField DataField="Reply" HeaderText="Reply" />
                                        <asp:TemplateField HeaderText="Delete Reply">
                                            <ItemTemplate>                                            
                                           <asp:LinkButton ID="btn_Delete" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Reply_id") %>' CommandName="Deletereply" >
                                            <i class="fa fa-trash" aria-hidden="true"></i> Delete
                                            </asp:LinkButton>
                                        </ItemTemplate>
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
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>

        </div>
    </div>
</asp:Content>

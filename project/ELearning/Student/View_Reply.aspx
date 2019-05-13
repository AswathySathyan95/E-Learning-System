<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="View_Reply.aspx.cs" Inherits="ELearning.Student.View_Reply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 85px;
            text-align: center;
        }
        .auto-style2 {
            height: 449px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            margin-left: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style2">
        <div class="auto-style1">
            <span class="newStyle1">View Reply</span></div>
        <div>

            <table class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GvReply" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style3" ForeColor="Black" GridLines="Vertical" Width="889px" AllowPaging="true" OnPageIndexChanging="GvReply_PageIndexChanging" PageSize="5">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Reply_id" HeaderText="Reply Id" />
                                <asp:BoundField DataField="Query_Id" HeaderText="Query_Id" Visible="False" />
                                <asp:BoundField DataField="RUser_Id" HeaderText="RUser_Id" Visible="False" />
                                <asp:BoundField DataField="Date" DataFormatString="{0:D}" HeaderText="Posted On" />
                                <asp:BoundField DataField="Reply" HeaderText="Reply" />
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
            </table>

        </div>
    </div>
</asp:Content>

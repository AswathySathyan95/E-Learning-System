<%@ Page Title="" Language="C#" MasterPageFile="~/mail/MailMaster.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="ELearning.mail.Inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 452px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-center">

            <span class="newStyle1">Mail Inbox</span><br />

        </div>
        <div class="text-center">

            <table class="w-100">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;</td>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="819px">
                            <AlternatingItemStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundColumn DataField="mid" HeaderText="Mid" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="from_id" HeaderText="From Mail"></asp:BoundColumn>
                                <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="subject" HeaderText="Subject"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="Select" HeaderText="Read &amp; Reply" Text="Click Here"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="Delete" HeaderText="Delete" Text="Delete Message"></asp:ButtonColumn>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:DataGrid>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

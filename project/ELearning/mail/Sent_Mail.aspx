<%@ Page Title="" Language="C#" MasterPageFile="~/mail/MailMaster.Master" AutoEventWireup="true" CodeBehind="Sent_Mail.aspx.cs" Inherits="ELearning.mail.Sent_Mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 100px;
            text-align: center;
        }
        .auto-style2 {
            height: 454px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style3 {
            margin-left: 333px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style2">
        <div class="auto-style1">
            <span class="newStyle1">Sent Mail<br />
            </span>
        </div>
        <div>

            <table class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GvSent" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style3" ForeColor="Black" GridLines="Vertical" Width="785px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="to_id" HeaderText="To Mail Id" />
                                <asp:BoundField DataField="date" HeaderText="Date" />
                                <asp:BoundField DataField="subject" HeaderText="Subject" />
                                <asp:BoundField DataField="message" HeaderText="Message" />
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

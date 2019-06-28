<%@ Page Title="" Language="C#" MasterPageFile="~/mail/MailMaster.Master" AutoEventWireup="true" CodeBehind="Sent_Mail.aspx.cs" Inherits="ELearning.mail.Sent_Mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 100px;
            text-align: left;
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
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style2">
        <div class="auto-style1">
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sent Mail<br />
            </span>
        </div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GVSentMail" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="941px" OnRowCommand="GVSentMail_RowCommand">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="Date" NullDisplayText="No Message Found" />
                                <asp:BoundField DataField="to_id" HeaderText="To Id" NullDisplayText="No Message Found" />
                                <asp:BoundField DataField="subject" HeaderText="Subject" NullDisplayText="No Message Found" />
                                <asp:TemplateField HeaderText="Read Mail">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btn_Download" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("mid") %>' CommandName="ReadMessage" >
                                        <i class="fa fa-angle-right" aria-hidden="true"></i> Read Message
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete Mail">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btn_Download0" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("mid") %>' CommandName="DeleteMsg" >
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
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

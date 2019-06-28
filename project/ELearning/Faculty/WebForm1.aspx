<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ELearning.Faculty.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <asp:GridView ID="GvDocuments" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Doc_Id" HeaderText="Doc_Id" Visible="False" />
            <asp:BoundField DataField="Name" HeaderText="Posted By " />
            <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Posted On" />
            <asp:BoundField DataField="Query" HeaderText="Query" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btn_Download" runat="server" BackColor="#343A40" BorderStyle="None" CommandArgument='<%# Eval("Document_File") %>' CommandName="downloadDoc" CssClass="btn" ForeColor="White">
                                                            <i class="fa fa-download" aria-hidden="true"></i> Download
                                                            </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btn_Download0" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Doc_Id") %>' CommandName="viewquery" >
                                                            <i class="fa fa-angle-right" aria-hidden="true"></i> Read & Reply
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
</asp:Content>

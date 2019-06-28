<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="View_Video.aspx.cs" Inherits="ELearning.Student.View_Video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
         .auto-style5 {
             color: #000000;
         }
        .auto-style6 {
            width: 190px;
        }
        .auto-style7 {
            width: 137px;
        }
        .auto-style8 {
            width: 137px;
            height: 41px;
        }
        .auto-style9 {
            width: 190px;
            height: 41px;
        }
        .auto-style10 {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
     <div>
         <div>
             <asp:ScriptManager ID="ScriptManager1" runat="server">
             </asp:ScriptManager>
             <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View Video Tutorials</span>
         </div>
         <div>
             <table class="w-100">
             <tr>
                 <td class="auto-style8"></td>
                 <td class="auto-style9">
                     <strong>
                         <asp:Label ID="Label1" runat="server" Text="Subject" CssClass="auto-style5"></asp:Label>
                     </strong>
                 </td>
                 <td class="auto-style10">
                     <asp:DropDownList ID="DdlSubject" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlSubject_SelectedIndexChanged" Width="350px">
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style10"></td>
             </tr>
             <tr>
                 <td class="auto-style7">&nbsp;</td>
                 <td class="auto-style6">
                     <strong>
                         <asp:Label ID="Label2" runat="server" Text="Topic" CssClass="auto-style5"></asp:Label>
                     </strong>
                 </td>
                 <td>
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <ContentTemplate>
                             <asp:DropDownList ID="DdlTopic" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlTopic_SelectedIndexChanged" Width="350px">
                             </asp:DropDownList>
                         </ContentTemplate>
                         <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="DdlSubject" EventName="SelectedIndexChanged" />
                         </Triggers>
                     </asp:UpdatePanel>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style7">&nbsp;</td>
                 <td class="auto-style6">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
         </div>
         <div>

             <table class="w-100">
                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                         <ContentTemplate>
                             <asp:GridView ID="GvNotes" runat="server" AutoGenerateColumns="False" AllowPaging="true" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="GvNotes_RowCommand" OnPageIndexChanging="GvNotes_PageIndexChanging" PageSize="5" Width="1018px" ShowHeaderWhenEmpty="True">
                                 <AlternatingRowStyle BackColor="#CCCCCC" />
                                 <Columns>
                                     <asp:BoundField DataField="Doc_Id" HeaderText="Document Id" />
                                     <asp:BoundField DataField="Description" HeaderText="Description" />
                                     <asp:TemplateField HeaderText="Document">
                                         <ItemTemplate>
                                             <asp:LinkButton ID="btn_Download" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Document_File") %>' CommandName="downloadDoc">
                                            <i class="fa fa-download" aria-hidden="true"></i> Download
                                             </asp:LinkButton>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Document">
                                         <ItemTemplate>
                                             <asp:LinkButton ID="btn_Doubt" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Doc_Id") %>' CommandName="AskDoubt">
                                            <i class="fa fa-question-circle" aria-hidden="true"></i> Ask Doubt
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
                             <asp:AsyncPostBackTrigger ControlID="DdlTopic" EventName="SelectedIndexChanged" />
                         </Triggers>
                     </asp:UpdatePanel>
                         &nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
         </div>
    </div>
</asp:Content>

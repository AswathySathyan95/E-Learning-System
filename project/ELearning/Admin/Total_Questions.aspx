<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Total_Questions.aspx.cs" Inherits="ELearning.Admin.Total_Questions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            height: 471px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            width: 28px;
            height: 32px;
        }
        .auto-style8 {
            height: 36px;
        }
        .auto-style9 {
            width: 28px;
            height: 36px;
        }
        .auto-style10 {
            height: 36px;
            width: 222px;
        }
        .auto-style11 {
            height: 32px;
            width: 222px;
        }
        .auto-style12 {
            margin-left: 2px;
        }
        .auto-style13 {
            height: 36px;
            width: 234px;
        }
        .auto-style14 {
            height: 32px;
            width: 234px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div>
            <div class="text-left">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <span class="newStyle1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quiz Questions</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Category" Width="200px" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DdlCtgry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCtgry_SelectedIndexChanged" Width="250px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style5"></td>
                </tr>
                
            </table>
        </div>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GvQuestions" runat="server" AllowPaging="true" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="236px" OnPageIndexChanging="GvQuestions_PageIndexChanging" OnRowCommand="GvQuestions_RowCommand" OnSelectedIndexChanged="GvQuestions_SelectedIndexChanged" PageSize="5" Width="1187px" ShowHeaderWhenEmpty="True">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Q_Id" HeaderText="Question Id" />
                            <asp:BoundField DataField="Question" HeaderText="Question" />
                            <asp:BoundField DataField="Option_A" HeaderText="Option A" />
                            <asp:BoundField DataField="Option_B" HeaderText="Option B" />
                            <asp:BoundField DataField="Option_C" HeaderText="Option C" />
                            <asp:BoundField DataField="Option_D" HeaderText="Option D" />
                            <asp:BoundField DataField="Answer" HeaderText="Answer" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btn_deleteQstn" runat="server" BackColor="#343A40" BorderStyle="None" CommandArgument='<%# Eval("Q_Id") %>' CommandName="deleteQuestion" CssClass="btn" ForeColor="White">
                                            <i class="fa fa-trash" aria-hidden="true"></i> Delete
                                        </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>No Record Found</EmptyDataTemplate>
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
                    <asp:AsyncPostBackTrigger ControlID="DdlCtgry" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

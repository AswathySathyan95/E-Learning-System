<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="Total_Qstn.aspx.cs" Inherits="ELearning.Faculty.Total_Qstn" %>
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
            width: 122px;
        }
        .auto-style3 {
            width: 28px;
        }
        .auto-style4 {
            width: 122px;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            width: 28px;
            height: 32px;
        }
        .auto-style7 {
            width: 122px;
            height: 36px;
        }
        .auto-style8 {
            height: 36px;
        }
        .auto-style9 {
            width: 28px;
            height: 36px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">

        <table class="w-100">
            <tr>
                <td class="text-center" colspan="4">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <span class="newStyle1">Quiz Questions</span></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Category"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DdlCtgry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCtgry_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2" rowspan="6">
                            <asp:GridView ID="GvQuestions" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="236px" Width="986px" AllowPaging="true" OnPageIndexChanging="GvQuestions_PageIndexChanging" PageSize="5" >
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
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

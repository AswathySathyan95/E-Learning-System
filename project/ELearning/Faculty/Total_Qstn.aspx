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
        .newStyle2 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 100%;
            height: 39px;
        }
        .auto-style3 {
            height: 309px;
        }
        .auto-style6 {
            width: 203px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .newStyle3 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style11 {
            width: 203px;
            text-align: left;
        }
        .auto-style12 {
            width: 229px;
            text-align: left;
        }
        .auto-style13 {
            width: 229px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-center">
            <table class="auto-style2">
                <tr>
                    <td colspan="4">
                        <span class="newStyle3">Quiz Questions
                        &nbsp;</span></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Category" Width="128px" CssClass="auto-style7"></asp:Label>
                            </td>
                    <td class="text-left">
                    <asp:DropDownList ID="DdlCtgry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCtgry_SelectedIndexChanged">
                    </asp:DropDownList>
                            </td>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <table class="w-100">
                            <tr>
                                <td>&nbsp;</td>
                                <td>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="text-left">
                        <asp:GridView ID="GvQuestions" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style7" ForeColor="Black" GridLines="Vertical" Height="236px" OnPageIndexChanging="GvQuestions_PageIndexChanging" PageSize="5" Width="1130px">
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
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DdlCtgry" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            
        </div>
        <div id="cntnt" class="auto-style3">
            
        </div>
    </div>
</asp:Content>

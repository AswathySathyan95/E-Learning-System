<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Stud_Details.aspx.cs" Inherits="ELearning.Faculty.Stud_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">  
    <div id="maincnt" class="auto-style1">
        <div class="text-center">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="text-left">
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Details</span>
            </div>
        </div>
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style4">
                        
                    </td>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Branch" Width="150px"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DdlBranch" runat="server" OnSelectedIndexChanged="DdlBranch_SelectedIndexChanged" Width="350px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8"><strong>
                        <asp:Label ID="Label2" runat="server" Text="Semester" Width="150px"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:DropDownList ID="DdlSemster" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlSemster_SelectedIndexChanged" Width="350px">
                            <asp:ListItem>---Select---</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        </div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GvDetails" runat="server" AllowPaging="true" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="GvDetailsPageIndexChanging" OnRowCommand="GvDetails_RowCommand" PageSize="10" Width="931px" ShowHeaderWhenEmpty="True">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="User_Id" HeaderText="Student Id" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:TemplateField HeaderText="View Details">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_Download" runat="server" BackColor="#343A40" BorderStyle="None" CommandArgument='<%# Eval("User_Id") %>' CommandName="viewdetails" CssClass="btn" ForeColor="White">
                                            <i class="fa fa-angle-right" aria-hidden="true"></i> &nbsp;View Details
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
                                <asp:AsyncPostBackTrigger ControlID="DdlSemster" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">

    <style type="text/css">
        .auto-style1 {
            height: 631px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 213px;
        }
        .auto-style4 {
            width: 213px;
            height: 63px;
        }
        .auto-style6 {
            height: 63px;
        }
        .auto-style7 {
            width: 189px;
            height: 63px;
        }
        .auto-style8 {
            width: 189px;
        }
        .auto-style9 {
            width: 63px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        </style>

</asp:Content>


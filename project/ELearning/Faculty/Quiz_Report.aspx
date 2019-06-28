﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Quiz_Report.aspx.cs" Inherits="ELearning.Faculty.Quiz_Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="mainn" class="auto-style1">
        <div class="text-left">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quiz Reports</span></div>
            <div>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style7"></td>
                        <td>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style6"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Branch" Width="150px"></asp:Label>
                        </strong></td>
                        <td class="auto-style5">
                        <asp:DropDownList ID="DdlBranch" runat="server" Width="350px">
                        </asp:DropDownList>
                        </td>
                        <td class="auto-style5"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style7"><strong>
                        <asp:Label ID="Label2" runat="server" Text="Semester" Width="150px"></asp:Label>
                        </strong></td>
                        <td>
                        <asp:DropDownList ID="DdlSemster" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlSemster_SelectedIndexChanged" Width="350px" Height="30px">
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
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    </table>
            </div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="GvQuizReport" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="GvQuizReport_PageIndexChanging" OnRowCommand="GvQuizReport_RowCommand" PageSize="5" Width="1146px" ShowHeaderWhenEmpty="True">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="Quiz_Id" HeaderText="Quiz_Id" />
                                            <asp:BoundField DataField="Name" HeaderText="Student Name" />
                                            <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" />
                                            <asp:BoundField DataField="SubCategory" HeaderText="Quiz Category" />
                                            <asp:BoundField DataField="Start_Time" HeaderText="Start Time" />
                                            <asp:BoundField DataField="End_Time" HeaderText="End Time" />
                                            <asp:BoundField DataField="Correct_Answer" HeaderText="No Of Correct Answer" />
                                            <asp:BoundField DataField="Incorrect_Answer" HeaderText="No Of Incorrect Answer" />
                                            <asp:BoundField DataField="Attended_Qusers" HeaderText="No of Questions Attended" />
                                            <asp:BoundField DataField="Total_Score" HeaderText="Quiz Score" />
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
            height: 455px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 100%;
            height: 113px;
        }
        .auto-style3 {
            width: 261px;
        }
        .auto-style4 {
            width: 261px;
            height: 46px;
        }
        .auto-style5 {
            height: 46px;
        }
        .auto-style6 {
            height: 46px;
            width: 170px;
        }
        .auto-style7 {
            width: 170px;
        }
        .auto-style8 {
            width: 52px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    </style>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="AllQuiz.aspx.cs" Inherits="ELearning.Student.AllQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 531px;
        }
         .newStyle8 {
            font-family: "calisto MT";
            font-size: large;
            font-weight: bold;
            color: #000000;
            font-style: italic;
        }

        .auto-style11 {
            color: #000000;
            margin-right: 0px;
        }
        .auto-style12 {
            width: 199px;
        }
        .newStyle9 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }

        .auto-style13 {
            text-align: left;
            width: 180px;
        }

        .auto-style14 {
            width: 71px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-center">

            <div class="text-left">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <span class="newStyle9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quiz Details</span></div>
            <table class="w-100">
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style11" Text="Category" Width="170px"></asp:Label>
                        <br />
                        </strong>
                        <br /></td>
                    <td class="text-left">
                        <asp:DropDownList ID="DdlCategory" runat="server" AutoPostBack="True" Width="355px" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        <br /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="text-left">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div class="text-center">
            <table class="w-100">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GvDetails" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="261px" Width="1104px" ShowHeaderWhenEmpty="True">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" />
                                        <asp:BoundField DataField="Start_Time" DataFormatString="{0:t}" HeaderText="Start Time" />
                                        <asp:BoundField DataField="End_Time" DataFormatString="{0:t}" HeaderText="End Time" />
                                        <asp:BoundField DataField="Attended_Qusers" HeaderText="No. Of Questions Attended" />
                                        <asp:BoundField DataField="Correct_Answer" HeaderText="Correct Answers" />
                                        <asp:BoundField DataField="Incorrect_Answer" HeaderText="No. of Wrong Answers" />
                                        <asp:BoundField DataField="Total_Score" HeaderText="Total Score" />
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
                                <asp:AsyncPostBackTrigger ControlID="DdlCategory" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

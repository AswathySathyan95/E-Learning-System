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
            width: 260px;
        }
        .newStyle9 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }

        .auto-style13 {
            text-align: left;
            width: 172px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">
        <div class="text-center">

            <span class="newStyle9">&nbsp; Quiz Details</span><table class="w-100">
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
            </table>
        </div>
        <div class="text-center">
            <asp:GridView ID="GvDetails" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="261px" Width="1104px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Start_Time" HeaderText="Start Time" DataFormatString="{0:t}" />
                    <asp:BoundField DataField="End_Time" HeaderText="End Time" DataFormatString="{0:t}" />
                    <asp:BoundField DataField="Attended_Qusers" HeaderText="No. Of Questions Attended" />
                    <asp:BoundField DataField="Correct_Answer" HeaderText="Correct Answers" />
                    <asp:BoundField DataField="Incorrect_Answer" HeaderText="No. of Wrong Answers" />
                    <asp:BoundField DataField="Total_Score" HeaderText="Total Score" />
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
    </div>
</asp:Content>

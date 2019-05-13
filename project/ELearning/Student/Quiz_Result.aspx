<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Quiz_Result.aspx.cs" Inherits="ELearning.Student.Quiz_Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 451px;
        }
        .auto-style2 {
            width: 100%;
            height: 447px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .newStyle2 {
            font-family: "Colonna MT";
            font-size: 52px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style6 {
            width: 94%
        }
        .auto-style7 {
            width: 1354px;
        }
        .newStyle3 {
            font-family: Algerian;
            font-style: italic;
            font-size: large;
            font-weight: bolder;
            color: #000000;
        }
        .newStyle4 {
            font-family: Algerian;
            font-size: large;
            font-weight: bold;
            color: #000000;
            text-transform: none;
            font-variant: normal;
        }
        .auto-style10 {
            background-color: #CCCCCC;
            height: 50px;
        }
        .auto-style11 {
            background-color: #999999;
            height: 50px;
        }
        .newStyle5 {
        }
        .newStyle6 {
            font-family: "calisto MT";
            font-style: italic;
            font-weight: bold;
            font-size: large;
        }
        .newStyle7 {
            font-family: "calisto MT";
        }
        .newStyle8 {
            font-family: "calisto MT";
            font-size: large;
            font-weight: bold;
            color: #000000;
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="auto-style1">

        <table class="auto-style2">
            <tr>
                <td class="auto-style7">
                    <div id="report">
                       <div class="text-center">
                           <strong class="newStyle2">Quiz Result</strong>
                           <br />
                           <br />
                       </div>
                        <div>

                            <table class="auto-style6" align="center">
                                <tr>
                                    <td class="auto-style10">
                                        <strong><em>
                                        <asp:Label ID="Label1" runat="server" Text="Total No. of Question" CssClass="newStyle8" Font-Bold="True"></asp:Label>
                                        </em></strong>
                                    </td>
                                    <td class="auto-style10">
                                        <strong>
                                        <asp:Label ID="LblQstnNo" runat="server" Text="25" CssClass="newStyle8"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">
                                        <strong><em>
                                        <asp:Label ID="Label2" runat="server" Text="Time Taken" CssClass="newStyle8" Font-Bold="True"></asp:Label>
                                        </em></strong>
                                    </td>
                                    <td class="auto-style11">
                                        <strong>
                                        <asp:Label ID="LblTime" runat="server" Text="Label" CssClass="newStyle8"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <strong><em>
                                        <asp:Label ID="Label3" runat="server" Text="Number of question Attempted" CssClass="newStyle8" Font-Bold="True"></asp:Label>
                                        </em></strong>
                                    </td>
                                    <td class="auto-style10">
                                        <strong>
                                        <asp:Label ID="LblAttempted" runat="server" Text="Label" CssClass="newStyle8"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">
                                        <strong><em>
                                        <asp:Label ID="Label4" runat="server" Text="Number of Correct Answers" CssClass="newStyle8" Font-Bold="True"></asp:Label>
                                        </em></strong>
                                    </td>
                                    <td class="auto-style11">
                                        <strong>
                                        <asp:Label ID="LblCorrect" runat="server" Text="Label" CssClass="newStyle8"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <strong><em>
                                        <asp:Label ID="Label5" runat="server" Text="Number of Wrong Answers" CssClass="newStyle8" Font-Bold="True"></asp:Label>
                                        </em></strong>
                                    </td>
                                    <td class="auto-style10">
                                        <strong>
                                        <asp:Label ID="LblWrong" runat="server" Text="Label" CssClass="newStyle8"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">
                                        <strong><em>
                                        <asp:Label ID="Label6" runat="server" Text="Quiz Score" CssClass="newStyle8" Font-Bold="True"></asp:Label>
                                        </em></strong>
                                    </td>
                                    <td class="auto-style11">
                                        <strong>
                                        <asp:Label ID="LblScore" runat="server" Text="Label" CssClass="newStyle8"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <strong><em>
                                        <asp:Label ID="Label7" runat="server" Text="Quiz Score(in %)" CssClass="newStyle8" Font-Bold="True"></asp:Label>
                                        </em></strong>
                                    </td>
                                    <td class="auto-style10">
                                        <strong>
                                        <asp:Label ID="LblPercentage" runat="server" Text="Label" CssClass="newStyle8"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>
                    &nbsp;</td>
                
            </tr>
        </table>

    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="Stud_Details.aspx.cs" Inherits="ELearning.Faculty.Stud_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">  
    <div id="maincnt" class="auto-style1">
        <div class="text-center">

            <span class="newStyle1">Student Details</span></div>
        <div>

            <table class="w-100">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><strong>
                        <asp:Label ID="Label1" runat="server" Text="Branch"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:DropDownList ID="DdlBranch" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><strong>
                        <asp:Label ID="Label2" runat="server" Text="Semester"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:DropDownList ID="DdlSemster" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">

    <style type="text/css">
        .auto-style1 {
            height: 454px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            width: 332px;
        }
    </style>

</asp:Content>


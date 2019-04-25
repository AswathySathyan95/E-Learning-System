<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="Reg_Home.aspx.cs" Inherits="ELearning.Admin.Reg_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td class="text-center" style="width: 114px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 114px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 114px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 114px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 114px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 114px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="height: 75px; width: 114px;">
                &nbsp;</td>
            <td class="text-left" style="height: 75px">
                <asp:ImageButton ID="imgbtnFaculty" runat="server" Height="90px" ImageUrl="~/DesignImages/facultyReg.jpg" OnClick="imgbtnFaculty_Click" Width="301px" />
            </td>
        </tr>
        <tr>
            <td style="width: 114px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 114px">
                &nbsp;</td>
            <td class="text-left">
                <asp:ImageButton ID="imgbtnStudent" runat="server" Height="90px" ImageUrl="~/DesignImages/student-reg.jpg" OnClick="imgbtnStudent_Click" Width="301px" />
            </td>
        </tr>
        <tr>
            <td style="width: 114px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="height: 23px; width: 114px;">
                &nbsp;</td>
            <td class="text-left" style="height: 23px">
                <asp:ImageButton ID="imgbtnAdmin" runat="server" Height="90px" ImageUrl="~/DesignImages/adminreg.png" OnClick="imgbtnAdmin_Click" Width="301px" />
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 114px">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

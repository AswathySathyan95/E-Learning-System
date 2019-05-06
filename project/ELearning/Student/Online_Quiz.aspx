<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.master" AutoEventWireup="true" CodeBehind="Online_Quiz.aspx.cs" Inherits="ELearning.Student.Online_Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="maincontent">

        <table class="nav-justified" style="height: 425px">
            <tr>
                <td style="width: 95px">&nbsp;</td>
                <td style="width: 88px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="text-right">
                    <asp:TextBox ID="TxtTimeDis" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ReadOnly="True" Width="123px">00:00:00</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td rowspan="8" style="width: 95px">
                    <div id="qstnboard" style="height: 312px; width: 315px">
                     
                    </div>
                    &nbsp;</td>
                <td rowspan="8" style="width: 88px">
                    &nbsp;</td>
                <td colspan="2" rowspan="8">
                    <div id="qstn" style="width: 737px; height: 320px">

                        <table class="nav-justified" style="height: 306px">
                            <tr>
                                <td>&nbsp;</td>
                                <td class="modal-sm" style="width: 336px">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-center" colspan="4"><strong>
                                    <asp:Label ID="LblQustn" runat="server" Font-Size="Medium"></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td style="height: 33px"></td>
                                <td class="modal-sm" style="width: 336px; height: 33px"></td>
                                <td style="height: 33px"></td>
                                <td style="height: 33px"></td>
                            </tr>
                            <tr>
                                <td style="height: 20px"></td>
                                <td class="text-center" style="height: 20px; width: 336px">
                                    <asp:RadioButton ID="RbAOptn" runat="server" GroupName="optn" />
                                </td>
                                <td class="text-center" style="height: 20px">
                                    <asp:RadioButton ID="RbBOptn" runat="server" GroupName="optn" />
                                </td>
                                <td style="height: 20px"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="modal-sm" style="width: 336px">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="text-center" style="width: 336px">
                                    <asp:RadioButton ID="RbCOptn" runat="server" GroupName="optn" />
                                </td>
                                <td class="text-center">
                                    <asp:RadioButton ID="RbDOptn" runat="server" GroupName="optn" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="modal-sm" style="width: 336px">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="modal-sm" style="width: 336px">&nbsp;</td>
                                <td class="text-right"><strong>
                                    <asp:Button ID="Button1" runat="server" Font-Size="Large" style="font-weight: bold" Text="Next Question &gt;&gt;" Width="215px" />
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                    </div>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 95px">&nbsp;</td>
                <td style="width: 88px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeBehind="Stud_Profile.aspx.cs" Inherits="ELearning.Student.Stud_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Black" style="font-weight: 700" Text="Personal Details" Font-Size="Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 105px"><strong>
                            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                            </strong></td>
                        <td style="width: 233px">
                            <asp:Label ID="lblName" runat="server"></asp:Label>
                        </td>
                        <td style="width: 102px"><strong>
                            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblGender" runat="server"></asp:Label>
                        </td>
                        <td rowspan="3">
                            <asp:Image ID="imgProfile" runat="server" Height="87px" style="margin-left: 0px" Width="79px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 105px"><strong>
                            <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
                            </strong></td>
                        <td style="width: 233px">
                            <asp:Label ID="lblDob" runat="server"></asp:Label>
                        </td>
                        <td style="width: 102px"><strong>
                            <asp:Label ID="Label6" runat="server" Text="Mobile No"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblMobNo" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 19px; width: 105px"><strong>
                            <asp:Label ID="Label7" runat="server" Text="Email ID"></asp:Label>
                            </strong></td>
                        <td style="height: 19px; width: 233px">
                            <asp:Label ID="lblEmail" runat="server"></asp:Label>
                        </td>
                        <td style="height: 19px; width: 102px"><strong>
                            <asp:Label ID="Label10" runat="server" Text="Nationality"></asp:Label>
                            </strong></td>
                        <td style="height: 19px">
                            <asp:Label ID="lblNationality" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 105px"><strong>
                            <asp:Label ID="Label8" runat="server" Text="Religion"></asp:Label>
                            </strong></td>
                        <td style="height: 22px; width: 233px">
                            <asp:Label ID="lblReligion" runat="server"></asp:Label>
                        </td>
                        <td style="height: 22px; width: 102px"><strong>
                            <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>
                            </strong></td>
                        <td style="height: 22px">
                            <asp:Label ID="lblCategory" runat="server"></asp:Label>
                        </td>
                        <td style="height: 22px"></td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 105px"><strong>
                            <asp:Label ID="Label12" runat="server" Text="Address"></asp:Label>
                            </strong></td>
                        <td style="height: 22px; width: 233px">
                            <asp:Label ID="lblAddress" runat="server" Width="100px"></asp:Label>
                        </td>
                        <td style="height: 22px; width: 102px"><strong>
                            <asp:Label ID="Label11" runat="server" Text="Blood Group"></asp:Label>
                            </strong></td>
                        <td style="height: 22px">
                            <asp:Label ID="lblBloodgroup" runat="server"></asp:Label>
                        </td>
                        <td style="height: 22px"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="Label13" runat="server" ForeColor="Black" style="font-weight: 700" Text="Parent Information" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 93px"><strong>
                            <asp:Label ID="Label14" runat="server" Text="Father Name"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblFname" runat="server"></asp:Label>
                        </td>
                        <td style="width: 99px"><strong>
                            <asp:Label ID="Label18" runat="server" Text="Occupation"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblOccupation" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 93px"><strong>
                            <asp:Label ID="Label16" runat="server" Text="Mobile No"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblFMob" runat="server"></asp:Label>
                        </td>
                        <td style="width: 99px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="Label19" runat="server" ForeColor="Black" style="font-weight: 700" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

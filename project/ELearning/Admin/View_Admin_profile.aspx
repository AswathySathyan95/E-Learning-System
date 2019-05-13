<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="View_Admin_profile.aspx.cs" Inherits="ELearning.Admin.View_Admin_profile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 453px;
            margin-right: 42px;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }

        .auto-style2 {
            background-color: #CCCCCC;
            border-style: solid;
            width : auto;
            
        }

        .auto-style3 {
            height: 32px;
            width: 210px;
        }
        .auto-style4 {
            height: 32px;
            width: 395px;
        }
        .auto-style5 {
            width: 395px;
        }
        .auto-style6 {
            height: 32px;
            width: 317px;
        }
        .auto-style8 {
            height: 32px;
            width: 299px;
        }
        .auto-style11 {
            width: 299px;
        }
        .auto-style12 {
            width: 317px;
        }
        .auto-style13 {
            width: 210px;
        }

        .auto-style15 {
            font-size: large;
            color: #000000;
        }

        .auto-style16 {
            height: 16px;
        }

        .auto-style17 {
            width: 99%
        }

        .auto-style18 {
            height: 32px;
        }
        .auto-style20 {
            height: 83px;
        }

        .auto-style21 {
            font-family: "colonna MT";
            font-weight: bold;
            font-size: 50px;
            color: #000080;
        }

    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="mainn" class="auto-style1">
        <div class="text-center">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <span class="auto-style21">Staff Details</span></div>    
        <div id="Personal" class="auto-style2">
            <asp:Label ID="Lblpersonal" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Personal Details" CollapseControlID="Lblpersonal"></asp:Label>
        </div>
        <div id="personalDetails">

            <asp:Panel ID="PanelPersonal" runat="server" BorderStyle="Solid" SuppressPostBack="true">
                <table class="auto-style17">
                    <tr>
                        <td class="auto-style6">
                            <strong>
                            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Name"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style8">
                            <asp:Label ID="LblName" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <strong>
                            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Gender"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="LblGender" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td rowspan="4">
                            <asp:Image ID="Image1" runat="server" Height="140px" Width="120px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Date Of Birth"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="LblDob" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <strong>
                            <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Mobile No"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="LblMob" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                            <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Email Id"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="LblEmail" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <strong>
                            <asp:Label ID="Label19" runat="server" ForeColor="Black" Text="Nationality"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="LblNationality" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                            <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Religion"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="LblReligion" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <strong>
                            <asp:Label ID="Label16" runat="server" ForeColor="Black" Text="Category"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="LblCategory" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <strong>
                            <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Blood Group"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="LblBlood" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" Collapsed="False" CollapseControlID="Lblpersonal" ExpandControlID="Lblpersonal" TargetControlID="PanelPersonal" />
        </div>
        <div id="address" class="auto-style2">
            <strong>
            <asp:Label ID="LblAdd" runat="server" Text="Address & Guardian Details" CssClass="auto-style15">
            </asp:Label>
            </strong>
        </div>
        <div id="Viewaddress" >
            <asp:Panel ID="PanelAddress" runat="server" BorderStyle="Solid" SuppressPostBack="true">
                <table class="w-100">
                    <tr>
                        <td class="auto-style20">
                            <strong>
                            <asp:Label ID="Label20" runat="server" ForeColor="Black" Text="Address"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style20">
                            <asp:Label ID="LblAddress" runat="server" ForeColor="Black" Height="30px" Width="300px"></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <strong>
                            <asp:Label ID="Label24" runat="server" ForeColor="Black" Text="District"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style20">
                            <asp:Label ID="LblDistrict" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">
                            <strong>
                            <asp:Label ID="Label22" runat="server" ForeColor="Black" Text="State"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style16">
                            <asp:Label ID="LblState" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <strong>
                            <asp:Label ID="Label26" runat="server" ForeColor="Black" Text="Pincode"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style16">
                            <asp:Label ID="LblPincode" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                            <asp:Label ID="Label27" runat="server" ForeColor="Black" Text="Father Name"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:Label ID="LblFname" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <strong>
                            <asp:Label ID="Label29" runat="server" ForeColor="Black" Text="Occupation"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:Label ID="LblOccupation" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                            <asp:Label ID="Label31" runat="server" Text="Mobile Number"></asp:Label>
                            </strong>
                        </td>
                        <td>
                            <asp:Label ID="LblFMob" runat="server" Text=""></asp:Label>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" CollapseControlID="LblAdd" Collapsed="True" ExpandControlID="LblAdd" TargetControlID="PanelAddress" />
        </div>
         <div id="Admission" class="auto-style2">
            <asp:Label ID="LblAddmission" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Admission Details"></asp:Label>
        </div>
        <div id="viewadmission">
            <asp:Panel ID="PanelAdmission" runat="server" BorderStyle="Solid" SuppressPostBack="true" Height="122px">
                <table class="w-100">
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label34" runat="server" ForeColor="Black" Text="Date Of Admission"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="Lbldoa" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label45" runat="server" ForeColor="Black" Text="Department"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lbldept" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label33" runat="server" ForeColor="Black" Text="Admitted Program"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblprogram" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label44" runat="server" ForeColor="Black" Text="Admitted Branch"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblbranch" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label32" runat="server" ForeColor="Black" Text="Admission No"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lbladmsnno" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label43" runat="server" ForeColor="Black" Text="Semester"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="lblsem" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                </table>

            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" CollapseControlID="LblAddmission" Collapsed="True" ExpandControlID="LblAddmission" TargetControlID="PanelAdmission" />
        </div>
         <div id="Qual" class="auto-style2">
            <strong>
            <asp:Label ID="LblQual" runat="server" Text="Qualification Details" CssClass="auto-style15">
            </asp:Label>
            </strong>
        </div>
        <div id="ViewQual">
            <asp:Panel ID="PanelQual" runat="server" BorderStyle="Solid" SuppressPostBack="true">
                <asp:GridView ID="GvQual" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style18" ForeColor="Black" GridLines="Vertical" style="margin-left: 34px" Width="1254px">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:BoundField DataField="Qual_Id" HeaderText="Qual_Id" Visible="False" />
                                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" Visible="False" />
                                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
                                    <asp:BoundField DataField="Specialization" HeaderText="Specialization" />
                                    <asp:BoundField DataField="College" HeaderText="College" />
                                    <asp:BoundField DataField="University" HeaderText="University" />
                                    <asp:BoundField DataField="CGPA" HeaderText="CGPA" />
                                    <asp:BoundField DataField="Percentage" HeaderText="Percentage" />
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
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" Collapsed="True" CollapseControlID="LblQual" ExpandControlID="LblQual" TargetControlID="PanelQual" />
        </div>
        <div id="Experience" class="auto-style2">
            <strong>
            <asp:Label ID="LblExp" runat="server" Text="Experience Details" CssClass="auto-style15">
            </asp:Label>
            </strong>
        </div>
        <div id="ViewExp">
            <asp:Panel ID="PanelExperience" runat="server" BorderStyle="Solid" SuppressPostBack="true">
                <asp:GridView ID="GvExperience" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style18" ForeColor="Black" GridLines="Vertical" style="margin-left: 34px" Width="1254px">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:BoundField DataField="Exp_Id" HeaderText="Exp_Id" Visible="False" />
                                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" Visible="False" />
                                    <asp:BoundField DataField="Organization_Worked" HeaderText="Organization Worked      " />
                                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                    <asp:BoundField DataField="From_Date" HeaderText="Wroked From" />
                                    <asp:BoundField DataField="To_Date" HeaderText="Worked Till" />
                                    <asp:BoundField DataField="Duration" HeaderText="Duration" />
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
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="server" Collapsed="True" CollapseControlID="LblExp" ExpandControlID="LblExp" TargetControlID="PanelExperience" />
        </div>
    </div>
</asp:Content>

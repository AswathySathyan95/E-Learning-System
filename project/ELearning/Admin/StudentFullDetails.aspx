﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentFullDetails.aspx.cs" Inherits="ELearning.Admin.StudentFullDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style2 {
            height: 1096px;
            width: 1418px;
        }
        .auto-style13 {
            font-size: small;
        }
        .auto-style16 {
            width: 122px;
        }
        .auto-style17 {
            width: 1037px;
        }
        .auto-style30 {
            position: relative;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            left: 0px;
            top: 0px;
        }
        .auto-style32 {
            width: 196px;
        }
        .auto-style38 {
            width: 138px;
            font-size: large;
            font-weight: bold;
        }
        .auto-style40 {
            width: 691px;
        }
        .auto-style41 {
            width: 384px;
        }
        .auto-style42 {
            width: 900px;
        }
        .auto-style43 {
            font-size: small;
            width: 316px;
        }
        .auto-style44 {
            width: 316px;
        }
        .auto-style45 {
            width: 173px;
        }
        .auto-style46 {
            width: 145px;
        }
        .auto-style47 {
            width: 200px;
        }
        .auto-style48 {
            width: 320px;
        }
        .auto-style49 {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="accordion" class="auto-style2">
        <div class="card">
            <div class="text-center">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <span class="newStyle1">Student Detail</span>
            </div>
            <div class="card-header" id="headingOne">
                <h5>
                    <strong>
                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" CssClass="auto-style38" ForeColor="Black" Text="Personal Details" Width="1031px"></asp:Label>
                    </strong>
                </h5>
            </div>
            <div id="collapseOne">
                <div class="card-body">
                    <asp:Panel ID="PanelPersonal" runat="server" SuppressPostBack="true" Width="1042px">
                        <table class="auto-style30">
                            <tr>
                                <td class="auto-style41">
                                    <strong>
                                        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Name" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style42">
                                    <asp:Label ID="LblName" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style44">
                                    <strong>
                                        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Gender" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style40">
                                    <asp:Label ID="LblGender" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="140px" Width="133px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <strong>
                                        <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Date Of Birth" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style42">
                                    <asp:Label ID="LblDob" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style43">
                                    <strong>
                                        <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Mobile No" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style40">
                                    <asp:Label ID="LblMob" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <strong>
                                        <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Email Id" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style42">
                                    <asp:Label ID="LblEmail" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style43">
                                    <strong>
                                        <asp:Label ID="Label19" runat="server" ForeColor="Black" Text="Nationality" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style40">
                                    <asp:Label ID="LblNationality" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <strong>
                                        <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Religion" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style42">
                                    <asp:Label ID="LblReligion" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style43">
                                    <strong>
                                        <asp:Label ID="Label16" runat="server" ForeColor="Black" Text="Category" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style40">
                                    <asp:Label ID="LblCategory" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <strong>
                                        <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Blood Group" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style42">
                                    <asp:Label ID="LblBlood" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style43">&nbsp;</td>
                                <td class="auto-style40">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </div>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="Label20" ExpandControlID="Label20" TargetControlID="PanelPersonal" />
        </div>
        <div class="card">
            <div class="card-header" id="headingTwo">
                <h5>
                    <strong>
                        <asp:Label ID="LblAdd" runat="server" Text="Address & Guardian Details" CssClass="auto-style38" Width="1040px"></asp:Label>
                    </strong>
                </h5>
            </div>
            <div id="collapseTwo">
                <div class="card-body">
                    <asp:Panel ID="PanelAddress" runat="server" SuppressPostBack="true" Width="1043px">
                        <table class="auto-style17">
                            <tr>
                                <td class="auto-style45">
                                    <strong>
                                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Address" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <asp:Label ID="LblAddress" runat="server" ForeColor="Black" Height="30px" Width="300px" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style46">
                                    <strong>
                                        <asp:Label ID="Label24" runat="server" ForeColor="Black" Text="District" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="LblDistrict" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style20">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style45">
                                    <strong>
                                        <asp:Label ID="Label22" runat="server" ForeColor="Black" Text="State" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <asp:Label ID="LblState" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style46">
                                    <strong>
                                        <asp:Label ID="Label26" runat="server" ForeColor="Black" Text="Pincode" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="LblPincode" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style16">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style45">
                                    <strong>
                                        <asp:Label ID="Label27" runat="server" ForeColor="Black" Text="Father Name" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <asp:Label ID="LblFname" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style46">
                                    <strong>
                                        <asp:Label ID="Label29" runat="server" ForeColor="Black" Text="Occupation" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td class="auto-style32">
                                    <asp:Label ID="LblOccupation" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style45">
                                    <strong>
                                        <asp:Label ID="Label31" runat="server" Text="Mobile Number" CssClass="auto-style13" Width="150px"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <asp:Label ID="LblFMob" runat="server" Text="" CssClass="auto-style13"></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style46">&nbsp;</td>
                                <td class="auto-style32">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </div>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" CollapseControlID="LblAdd" Collapsed="True" ExpandControlID="LblAdd" TargetControlID="PanelAddress" />
        </div>
        <div class="card">
            <div class="card-header" id="headingThree">
                <h5>
                    <strong>
                        <asp:Label ID="LblAddmission" runat="server" Font-Bold="True" Font-Size="Large" CssClass="auto-style38" ForeColor="Black" Text="Admission Details" Width="1031px"></asp:Label>
                    </strong>
                </h5>
            </div>
            <div id="collapseThree">
                <div class="card-body">
                    <asp:Panel ID="PanelAdmission" runat="server" SuppressPostBack="true" Height="122px" Width="1045px">
                        <table class="auto-style17">
                            <tr>
                                <td class="auto-style47"><strong>
                                    <asp:Label ID="Label34" runat="server" ForeColor="Black" Text="Date Of Admission" CssClass="auto-style13"></asp:Label>
                                </strong></td>
                                <td class="auto-style48">
                                    <asp:Label ID="Lbldoa" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style49"><strong>
                                    <asp:Label ID="Label45" runat="server" ForeColor="Black" Text="Department" CssClass="auto-style13"></asp:Label>
                                </strong></td>
                                <td>
                                    <asp:Label ID="lbldept" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style47"><strong>
                                    <asp:Label ID="Label33" runat="server" ForeColor="Black" Text="Admitted Program" CssClass="auto-style13"></asp:Label>
                                </strong></td>
                                <td class="auto-style48">
                                    <asp:Label ID="lblprogram" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style49"><strong>
                                    <asp:Label ID="Label44" runat="server" ForeColor="Black" Text="Admitted Branch" CssClass="auto-style13"></asp:Label>
                                </strong></td>
                                <td>
                                    <asp:Label ID="lblbranch" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style47"><strong>
                                    <asp:Label ID="Label32" runat="server" ForeColor="Black" Text="Admission No" CssClass="auto-style13"></asp:Label>
                                </strong></td>
                                <td class="auto-style48">
                                    <asp:Label ID="lbladmsnno" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                                <td class="auto-style49"><strong>
                                    <asp:Label ID="Label43" runat="server" ForeColor="Black" Text="Semester" CssClass="auto-style13"></asp:Label>
                                </strong></td>
                                <td>
                                    <asp:Label ID="lblsem" runat="server" ForeColor="Black" CssClass="auto-style13"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </div>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" CollapseControlID="LblAddmission" Collapsed="True" ExpandControlID="LblAddmission" TargetControlID="PanelAdmission" />
        </div>
        <div class="card">
            <div class="card-header" id="headingFour">
                <h5>
                    <strong>
                        <asp:Label ID="LblQual" runat="server" Text="Qualification Details" CssClass="auto-style38" Width="1012px"></asp:Label>
                    </strong>
                </h5>
            </div>
            <div id="collapseFour">
                <div class="card-body">
                    <asp:Panel ID="PanelQual" runat="server" SuppressPostBack="true" Width="1051px">
                        <asp:GridView ID="GvQual" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style32" ForeColor="Black" GridLines="Vertical" Width="1037px">
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
                </div>
            </div>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" Collapsed="True" CollapseControlID="LblQual" ExpandControlID="LblQual" TargetControlID="PanelQual" />
        </div>
    </div>
</asp:Content>

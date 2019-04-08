﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ELearning.Admin.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="nav-justified">
        <tr>
            <td style="width: 1%; height: 15px;"></td>
            <td style="height: 15px; color: #FF0000;" colspan="4"><strong>All Fields marked with * are Mandatory</strong></td>
            <td colspan="2" rowspan="4">&nbsp;</td>
            <td style="width: 1%; height: 15px;"></td>
        </tr>
        <tr>
            <td style="width: 1%; height: 15px;">&nbsp;</td>
            <td style="width: 20%; height: 15px;">&nbsp;</td>
            <td style="width: 28%; height: 15px;">&nbsp;</td>
            <td style="width: 16%; height: 15px;">&nbsp;</td>
            <td style="width: 30%; height: 15px;">&nbsp;</td>
            <td style="width: 1%; height: 15px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%; height: 15px;">&nbsp;</td>
            <td style="width: 20%; height: 15px;">&nbsp;</td>
            <td style="width: 28%; height: 15px;">&nbsp;</td>
            <td style="width: 16%; height: 15px;">&nbsp;</td>
            <td style="width: 30%; height: 15px;">&nbsp;</td>
            <td style="width: 1%; height: 15px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" style="font-weight: 700" Text="Personal Details"></asp:Label>
            </td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td colspan="6">
                <table class="nav-justified">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                            <asp:Label ID="Label32" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label31" runat="server" Text="Middle Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label30" runat="server" Text="Last Name"></asp:Label>
                            <asp:Label ID="Label33" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                <asp:Label ID="Label37" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="width: 28%">
&nbsp;
                <asp:RadioButton ID="rdmale" runat="server" GroupName="g" Text="Male" />
                <asp:RadioButton ID="rdfemale" runat="server" GroupName="g" Text="Female" />
            </td>
            <td style="width: 16%">
                <asp:Label ID="Label5" runat="server" Text="Mobile No"></asp:Label>
                <asp:Label ID="Label34" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="width: 30%">
                <asp:TextBox ID="txtMobNo" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1%;"></td>
            <td style="height: 22px; width: 20%;">
                <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                <asp:Label ID="Label36" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="height: 22px; width: 28%;">
                <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 16%;">
                <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                <asp:Label ID="Label35" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="height: 22px; width: 30%;">
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 10px"></td>
            <td style="height: 22px; width: 6%;"></td>
            <td style="height: 22px; width: 1%;"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1%;"></td>
            <td style="height: 22px; width: 20%;">
                <asp:Label ID="Label8" runat="server" Text="Religion"></asp:Label>
            </td>
            <td style="height: 22px; width: 28%;">
                <asp:DropDownList ID="ddlReligion" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Muslim</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 22px; width: 16%;">
                <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>
            </td>
            <td style="height: 22px; width: 30%;">
                <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
            </td>
            <td colspan="2" rowspan="3">
                &nbsp;</td>
            <td style="height: 22px; width: 1%;"></td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label7" runat="server" Text="Nationality"></asp:Label>
            </td>
            <td style="width: 28%">
                <asp:DropDownList ID="ddlNationality" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 16%">
                <asp:Label ID="Label11" runat="server" Text="Blood Group"></asp:Label>
            </td>
            <td style="width: 30%">
                <asp:DropDownList ID="ddlBloodgroup" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label12" runat="server" Text="Upload Photo"></asp:Label>
                <asp:Label ID="Label38" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="width: 28%">
                &nbsp;<table class="nav-justified">
                    <tr>
                        <td>
                <asp:FileUpload ID="fuPhoto" runat="server" Width="187px" />
                        </td>
                        <td>
                            <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="Upload Image" Width="110px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td colspan="2" rowspan="2">
                <asp:Image ID="imgPhoto" runat="server" Height="100px" Width="100px" Visible="False" />
            </td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td colspan="6">
                <asp:Label ID="Label14" runat="server" ForeColor="Black" style="font-weight: 700" Text="Address"></asp:Label>
                <asp:Label ID="Label39" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1%;"></td>
            <td style="height: 22px; width: 20%;">
                <asp:Label ID="Label15" runat="server" Text="House No. /House Name"></asp:Label>
            </td>
            <td style="height: 22px; width: 28%;">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 16%;">
                <asp:Label ID="Label16" runat="server" Text="Street"></asp:Label>
            </td>
            <td style="height: 22px; width: 30%;">
                <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 10px"></td>
            <td style="height: 22px; width: 6%;"></td>
            <td style="height: 22px; width: 1%;"></td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label17" runat="server" Text="City"></asp:Label>
            </td>
            <td style="width: 28%">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td style="width: 16%">
                <asp:Label ID="Label18" runat="server" Text="District"></asp:Label>
            </td>
            <td style="width: 30%">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddlDistrict" runat="server">
                            <asp:ListItem>---Select---</asp:ListItem>
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlState" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label19" runat="server" Text="State"></asp:Label>
            </td>
            <td style="width: 28%">
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem Value="1">Andhra Pradesh</asp:ListItem>
                    <asp:ListItem Value="2">Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem Value="3">Assam</asp:ListItem>
                    <asp:ListItem Value="4">Bihar</asp:ListItem>
                    <asp:ListItem Value="5">Chhattisgarh</asp:ListItem>
                    <asp:ListItem Value="6">Goa</asp:ListItem>
                    <asp:ListItem Value="7">Gujarat</asp:ListItem>
                    <asp:ListItem Value="8">Haryana</asp:ListItem>
                    <asp:ListItem Value="9">Himachal Pradesh</asp:ListItem>
                    <asp:ListItem Value="10">Jammu and Kashmir</asp:ListItem>
                    <asp:ListItem Value="11">Jharkhand</asp:ListItem>
                    <asp:ListItem Value="12">Karnataka</asp:ListItem>
                    <asp:ListItem Value="13">Kerala</asp:ListItem>
                    <asp:ListItem Value="14">Madya Pradesh</asp:ListItem>
                    <asp:ListItem Value="15">Maharashtra</asp:ListItem>
                    <asp:ListItem Value="16">Manipur</asp:ListItem>
                    <asp:ListItem Value="17">Meghalaya</asp:ListItem>
                    <asp:ListItem Value="18">Mizoram</asp:ListItem>
                    <asp:ListItem Value="19">Nagaland</asp:ListItem>
                    <asp:ListItem Value="20">Orissa</asp:ListItem>
                    <asp:ListItem Value="21">Punjab</asp:ListItem>
                    <asp:ListItem Value="22">Rajasthan</asp:ListItem>
                    <asp:ListItem Value="23">Sikkim</asp:ListItem>
                    <asp:ListItem Value="24">Tamil Nadu</asp:ListItem>
                    <asp:ListItem Value="25">Telagana</asp:ListItem>
                    <asp:ListItem Value="26">Tripura</asp:ListItem>
                    <asp:ListItem Value="27">Uttaranchal</asp:ListItem>
                    <asp:ListItem Value="28">Uttar Pradesh</asp:ListItem>
                    <asp:ListItem Value="29">West Bengal</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 16%">
                <asp:Label ID="Label20" runat="server" Text="Pin Code"></asp:Label>
            </td>
            <td style="width: 30%">
                <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 1%;"></td>
            <td colspan="6" style="height: 21px">
                <asp:Label ID="Label21" runat="server" ForeColor="Black" style="font-weight: 700" Text="Admission Details"></asp:Label>
                <asp:Label ID="Label40" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="height: 21px; width: 1%;"></td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label22" runat="server" Text="Date Of Admission"></asp:Label>
            </td>
            <td style="width: 28%">
                <asp:TextBox ID="txtDoa" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td style="width: 16%">
                <asp:Label ID="Label23" runat="server" Text="Admitted Program"></asp:Label>
            </td>
            <td style="width: 30%">
                <asp:DropDownList ID="ddlProgram" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProgram_SelectedIndexChanged">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem Value="1">Btech</asp:ListItem>
                    <asp:ListItem Value="2">Mtech</asp:ListItem>
                    <asp:ListItem Value="3">MCA</asp:ListItem>
                    <asp:ListItem Value="4">MBA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label24" runat="server" Text="Admitted Branch"></asp:Label>
            </td>
            <td style="width: 28%">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddlBranch" runat="server">
                            <asp:ListItem>---Select---</asp:ListItem>
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlProgram" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td style="width: 16%">
                <asp:Label ID="Label25" runat="server" Text="Admission no"></asp:Label>
            </td>
            <td style="width: 30%">
                <asp:TextBox ID="txtAdmsnNo" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1%;"></td>
            <td style="height: 22px; width: 20%;">
                <asp:Label ID="Label58" runat="server" Text="Department"></asp:Label>
            </td>
            <td style="height: 22px; width: 28%;">
                <asp:DropDownList ID="ddlDept" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Civil Engineering</asp:ListItem>
                    <asp:ListItem>Computer Science &amp; Engineering</asp:ListItem>
                    <asp:ListItem>Electronics &amp; Communication Engineering</asp:ListItem>
                    <asp:ListItem>ELectronics &amp; Instrumentation Engineering</asp:ListItem>
                    <asp:ListItem>Electrical &amp; Electronics Engineering</asp:ListItem>
                    <asp:ListItem>Mechanical Engineering</asp:ListItem>
                    <asp:ListItem>Master of Computer Application</asp:ListItem>
                    <asp:ListItem>Master of Business Administration</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 22px; width: 16%;"></td>
            <td style="height: 22px; width: 30%;"></td>
            <td style="width: 10px; height: 22px"></td>
            <td style="height: 22px; width: 6%;"></td>
            <td style="height: 22px; width: 1%;"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1%;">&nbsp;</td>
            <td style="height: 22px; width: 20%;">
                &nbsp;</td>
            <td style="height: 22px; width: 28%;">
                &nbsp;</td>
            <td style="height: 22px; width: 16%;">&nbsp;</td>
            <td style="height: 22px; width: 30%;">&nbsp;</td>
            <td style="width: 10px; height: 22px">&nbsp;</td>
            <td style="height: 22px; width: 6%;">&nbsp;</td>
            <td style="height: 22px; width: 1%;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td colspan="6">
                <asp:Label ID="Label26" runat="server" ForeColor="Black" style="font-weight: 700" Text="Guardian Details"></asp:Label>
            </td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1%;"></td>
            <td style="height: 22px; width: 20%;">
                <asp:Label ID="Label27" runat="server" Text="Father Name"></asp:Label>
            </td>
            <td style="height: 22px; width: 28%;">
                <asp:TextBox ID="txtFathername" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 16%;">
                <asp:Label ID="Label29" runat="server" Text="Occupation"></asp:Label>
            </td>
            <td style="height: 22px; width: 30%;">
                <asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox>
            </td>
            <td style="width: 10px; height: 22px"></td>
            <td style="height: 22px; width: 6%;"></td>
            <td style="height: 22px; width: 1%;"></td>
        </tr>
        <tr>
            <td style="width: 1%; height: 24px;"></td>
            <td style="width: 20%; height: 24px;">
                <asp:Label ID="Label28" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td style="width: 28%; height: 24px;">
                <asp:TextBox ID="txtFMob" runat="server"></asp:TextBox>
            </td>
            <td style="width: 16%; height: 24px;"></td>
            <td style="width: 30%; height: 24px;"></td>
            <td style="width: 10px; height: 24px;"></td>
            <td style="width: 6%; height: 24px;"></td>
            <td style="width: 1%; height: 24px;"></td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1%"></td>
            <td style="height: 22px; width: 20%"></td>
            <td style="height: 22px; width: 28%" class="text-center">
                <asp:Button ID="btnRegister" runat="server" Text="Save and Continue" Width="141px" OnClick="btnRegister_Click" />
            </td>
            <td style="height: 22px; width: 16%" class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" />
            </td>
            <td style="height: 22px; width: 30%"></td>
            <td style="width: 10px; height: 22px;"></td>
            <td style="height: 22px; width: 6%"></td>
            <td style="height: 22px; width: 1%"></td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="text-align: center; width: 28%">
                &nbsp;</td>
            <td style="text-align: center; width: 16%">
                &nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 28%">&nbsp;</td>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 6%">&nbsp;</td>
            <td style="width: 1%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

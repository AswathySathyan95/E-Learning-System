<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ELearning.Admin.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table class="auto-style1">
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle1">&nbsp;Staff Registration&nbsp;</span></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #FF0000; width: 33px">&nbsp;</td>
            <td colspan="6" style="color: #FF0000"><strong>&nbsp; All Fields marked with * are Mandatory</strong></td>
            <td style="color: #FF0000">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 33px">&nbsp;</td>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" style="font-weight: 700" Text="Personal Details"></asp:Label>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 33px">&nbsp;</td>
            <td colspan="6" style="height: 20px">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                            <asp:Label ID="Label34" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
                            <asp:Label ID="Label40" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 28px"></td>
            <td style="height: 28px">
                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                <asp:Label ID="Label39" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="height: 28px">
                <asp:RadioButton ID="rdmale" runat="server" GroupName="g" Text="Male" />
                <asp:RadioButton ID="rdfemale" runat="server" GroupName="g" Text="Female" />
            </td>
            <td style="height: 28px">
                <asp:Label ID="Label38" runat="server" Text="Mobile No"></asp:Label>
                <asp:Label ID="Label41" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="height: 28px">
                <asp:TextBox ID="txtMobNo" runat="server"></asp:TextBox>
            </td>
            <td style="height: 28px"></td>
            <td style="height: 28px"></td>
            <td style="height: 28px"></td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                <asp:Label ID="Label36" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label42" runat="server" Text="Email ID"></asp:Label>
                <asp:Label ID="Label35" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Religion"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlReligion" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Muslim</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Nationality"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlNationality" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Blood Group"></asp:Label>
            </td>
            <td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Upload Photo"></asp:Label>
                <asp:Label ID="Label43" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fuPhoto" runat="server" Width="187px" />
            </td>
            <td>
                <asp:Button ID="BtnUploadd" runat="server" OnClick="btnUploadd_Click" Text="Upload" Width="114px" />
            </td>
            <td rowspan="3">
                        <asp:Image ID="imgPhoto" runat="server" Height="146px" Visible="False" Width="130px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td colspan="7">
                <asp:Label ID="Label14" runat="server" ForeColor="Black" style="font-weight: 700" Text="Address"></asp:Label>
                <asp:Label ID="Label44" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label15" runat="server" Text="House No. /House Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Street"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 22px;"></td>
            <td style="height: 22px">
                <asp:Label ID="Label17" runat="server" Text="City"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:Label ID="Label18" runat="server" Text="District"></asp:Label>
            </td>
            <td style="height: 22px">
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
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 33px; height: 22px;"></td>
            <td style="height: 22px">
                <asp:Label ID="Label19" runat="server" Text="State"></asp:Label>
            </td>
            <td style="height: 22px">
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
            <td style="height: 22px">
                <asp:Label ID="Label20" runat="server" Text="Pin Code"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtPin" runat="server" OnTextChanged="txtPin_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 20px"></td>
            <td colspan="7" style="height: 20px">
                <asp:Label ID="Label21" runat="server" ForeColor="Black" style="font-weight: 700" Text="Admission Details"></asp:Label>
                <asp:Label ID="Label45" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 33px; height: 20px"></td>
            <td style="height: 20px">
                <asp:Label ID="Label22" runat="server" Text="Date Of Joining"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtDoa" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td style="height: 20px">
                <asp:Label ID="Label58" runat="server" Text="Department"></asp:Label>
            </td>
            <td style="height: 20px">
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
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label25" runat="server" Text="Admission no"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAdmsnNo" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td colspan="7">
                <asp:Label ID="Label26" runat="server" ForeColor="Black" style="font-weight: 700" Text="Guardian Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label27" runat="server" Text="Father Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFathername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label29" runat="server" Text="Occupation"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtOccupation" runat="server" style="margin-bottom: 4"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>
                <asp:Label ID="Label28" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFMob" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 20px"></td>
            <td style="height: 20px"></td>
            <td class="text-center" style="height: 20px"><strong>
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" style="font-weight: bold" Text="Save and Continue" Width="204px" />
                </strong></td>
            <td style="height: 20px"><strong>
                <asp:Button ID="btnClear" runat="server" OnClick="Button1_Click" style="font-weight: bold" Text="Clear" Width="99px" />
                </strong></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 1048px;
        }
    .newStyle1 {
        font-family: "colonna MT";
        font-size: 50px;
        font-weight: bolder;
        color: #000080;
    }
    </style>
</asp:Content>


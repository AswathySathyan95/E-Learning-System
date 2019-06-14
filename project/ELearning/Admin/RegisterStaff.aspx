<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RegisterStaff.aspx.cs" Inherits="ELearning.Admin.RegisterStaff" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
     .auto-style2 {
            height: 1096px;
            width: 1418px;
        }
        .auto-style38 {
            width: 138px;
            font-size: large;
            font-weight: bold;
        }
        .auto-style39 {
            width: 99%
        }
        .auto-style40 {
            margin-top: 1;
        }
        .auto-style41 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style42 {
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
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style43 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="accordion" class="auto-style2">
        <div>

            <table class="w-100">
                <tr>
                    <td class="text-center" colspan="2">&nbsp;<span class="newStyle1">&nbsp;Staff Registration</span></td>
                </tr>
                <tr>
                    <td class="auto-style43"><strong>All Fields marked with * are Mandatory</strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5>
          <strong>
           <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" CssClass="auto-style38" ForeColor="Black" Text="Personal Details" Width="1031px"></asp:Label>
          </strong>          
      </h5>
    </div>
    <div id="collapseOne">
      <div class="card-body">
        <asp:Panel ID="PanelPersonal" runat="server" SuppressPostBack="true" Width="1093px">
            <table class="auto-style39">
                <tr>
                    <td colspan="5">
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                                    <asp:Label ID="Label46" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
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
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                        <asp:Label ID="Label39" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="rdmale" runat="server" GroupName="g" Text="Male" />
                        <asp:RadioButton ID="rdfemale" runat="server" GroupName="g" Text="Female" />
                    </td>
                    <td>
                        <asp:Label ID="Label38" runat="server" Text="Mobile No"></asp:Label>
                        <asp:Label ID="Label41" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobNo" runat="server"></asp:TextBox>
                    </td>
                    <td rowspan="5">
                        <asp:Image ID="imgPhoto" runat="server" Height="146px" Visible="False" Width="130px" />
                    </td>
                </tr>
                <tr>
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
                </tr>
                <tr>
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
                </tr>
                <tr>
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
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Upload Photo"></asp:Label>
                        <asp:Label ID="Label47" runat="server" Font-Size="Medium" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="fuPhoto" runat="server" Width="270px" />
                    </td>
                    <td>
                        <asp:Button ID="BtnUploadd" runat="server" OnClick="btnUploadd_Click" Text="Upload" Width="114px" />
                    </td>
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
            <asp:Label ID="LblAdd" runat="server" Text="Address" CssClass="auto-style41"></asp:Label>
                        <asp:Label ID="Label49" runat="server" Font-Size="Medium" ForeColor="Red" Text="*" Width="948px"></asp:Label>
          </strong>          
      </h5>
    </div>
    <div id="collapseTwo">
      <div class="card-body">
        <asp:Panel ID="PanelAddress" runat="server" SuppressPostBack="true" Width="1043px">
            <table class="w-100">
                <tr>
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
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label18" runat="server" Text="District"></asp:Label>
                    </td>
                    <td>
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" CssClass="auto-style40" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
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
                    <td>
                        <asp:Label ID="Label48" runat="server" Text="Pin Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
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
            <asp:Label ID="LblAddmission" runat="server" Font-Bold="True" Font-Size="Large" CssClass="auto-style38" ForeColor="Black" Text="Admission Details"></asp:Label>
                        <asp:Label ID="Label50" runat="server" Font-Size="Medium" ForeColor="Red" Text="*" Width="878px"></asp:Label>
          </strong>          
      </h5>
    </div>
    <div id="collapseThree">
      <div class="card-body">
        <asp:Panel ID="PanelAdmission" runat="server" SuppressPostBack="true" Height="122px" Width="1045px">
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Label ID="Label22" runat="server" Text="Date Of Joining"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDoa" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label58" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDept" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label25" runat="server" Text="Admission no"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAdmsnNo" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
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
            <asp:Label ID="LblGuardian" runat="server" Text="Guardian Details" CssClass="auto-style38" Width="1012px"></asp:Label>
          </strong>          
      </h5>
    </div>
    <div id="collapseFour">
      <div class="card-body">
        <asp:Panel ID="PanelGuardian" runat="server" SuppressPostBack="true" Width="1051px">
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Label ID="Label27" runat="server" Text="Father Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFathername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label28" runat="server" Text="Mobile No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFMob" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
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
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </asp:Panel>
      </div>
    </div>
      <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" Collapsed="True" CollapseControlID="LblGuardian" ExpandControlID="LblGuardian" TargetControlID="PanelGuardian" />
  </div>
  <div>
      <table class="w-100">
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td class="text-center"><strong>
                  <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Style="font-weight: bold" Text="Save and Continue" Width="204px" />
              </strong></td>
              <td><strong>
                  <asp:Button ID="btnClear" runat="server" Style="font-weight: bold" Text="Clear" Width="99px" />
              </strong></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>

        </div>   
</div>
</asp:Content>

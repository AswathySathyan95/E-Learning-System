<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Register_Qualification.aspx.cs" Inherits="ELearning.Admin.Register_Qualification" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
     .auto-style2 {
            height: 1134px;
            width: 1418px;
        }
        .auto-style38 {
            width: 138px;
            font-size: large;
            font-weight: bold;
        }
        .auto-style41 {
            font-size: large;
            font-weight: bold;
        }
        .newStyle1 {
            font-family: "colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #000080;
        }
        .auto-style42 {
            width: 149px;
        }
        .auto-style43 {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="accordion" class="auto-style2">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5>
          <strong>
           <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" CssClass="auto-style38" ForeColor="Black" Text="Add Qualification Details" Width="1031px"></asp:Label>
          </strong>          
      </h5>
    </div>
    <div id="collapseOne">
      <div class="card-body">
        <asp:Panel ID="PanelQual" runat="server" SuppressPostBack="true" Width="1093px">
            <table class="w-100">
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label42" runat="server" style="font-weight: 700" Text="Qualification"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtQual" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label57" runat="server" style="font-weight: 700" Text="Specialization"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtSpecialization" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label43" runat="server" style="font-weight: 700" Text="College / School"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtCollege" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label44" runat="server" style="font-weight: 700" Text="University / Board"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtUniversity" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label45" runat="server" style="font-weight: 700" Text="CGPA"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtCgpa" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label46" runat="server" style="font-weight: 700" Text="Percentage(%)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPercent" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" colspan="4"><strong>
                        <asp:Button ID="BtnSaveQual" runat="server" style="font-weight: bold" Text="Save" Width="150px" OnClick="BtnSaveQual_Click" />
                        </strong></td>
                </tr>
            </table>
            
        </asp:Panel>
          <asp:Panel ID="PanelViewQual" runat="server">
              <asp:GridView ID="GvQual" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="178px" Width="812px">
                  <AlternatingRowStyle BackColor="#F7F7F7" />
                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                  <SortedAscendingCellStyle BackColor="#F4F4FD" />
                  <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                  <SortedDescendingCellStyle BackColor="#D8D8F0" />
                  <SortedDescendingHeaderStyle BackColor="#3E3277" />
              </asp:GridView>

          </asp:Panel>
      </div>
    </div>
      <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" CollapseControlID="Label20" Collapsed="True" ExpandControlID="BtnSaveQual" TargetControlID="PanelViewQual" />
      <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="BtnSaveQual" ExpandControlID="Label20" TargetControlID="PanelQual" />
  </div>  
  <div class="card" id="DivExp" runat="server">
    <div class="card-header" id="headingTwo">
      <h5>
          <strong>
            <asp:Label ID="LblExperience" runat="server" Text="Add Experience Details" CssClass="auto-style41"></asp:Label>
          </strong>          
      </h5>
    </div>
    <div id="collapseTwo">
      <div class="card-body">
        <asp:Panel ID="PanelExperience" runat="server" SuppressPostBack="true" Width="1043px">
            <table class="w-100">
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label59" runat="server" style="font-weight: 700" Text="Organization Worked"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtOrganization" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label60" runat="server" style="font-weight: 700" Text="Designation"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtDesg" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label61" runat="server" style="font-weight: 700" Text="From"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtFrom_date" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label62" runat="server" style="font-weight: 700" Text="To"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtTo_date" runat="server" AutoPostBack="True" OnTextChanged="TxtTo_date_TextChanged" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label63" runat="server" style="font-weight: 700" Text="Duration"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtDuration" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" colspan="4"><strong>
                        <asp:Button ID="BtnSaveExp" runat="server" OnClick="BtnSaveExp_Click" style="font-weight: bold" Text="Save Details" />
                        </strong></td>
                </tr>
            </table>
            
            </asp:Panel>
          <asp:Panel ID="PanelViewExp" runat="server">
              <asp:GridView ID="GvExperience" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="215px" Visible="False" Width="812px">
                  <AlternatingRowStyle BackColor="#F7F7F7" />
                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                  <SortedAscendingCellStyle BackColor="#F4F4FD" />
                  <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                  <SortedDescendingCellStyle BackColor="#D8D8F0" />
                  <SortedDescendingHeaderStyle BackColor="#3E3277" />
              </asp:GridView>
          </asp:Panel>
      </div>
    </div>
      <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" TargetControlID="PanelViewExp" Collapsed="True" ExpandControlID="BtnSaveExp" CollapseControlID="LblExperience" />
      <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" CollapseControlID="BtnSaveExp" Collapsed="True" ExpandControlID="LblExperience" TargetControlID="PanelExperience" />
  </div> 
  <div class="text-center">

                    <strong>
                        <asp:Button ID="BtnSubmit" runat="server" Font-Size="Large" Height="42px" style="font-weight: bold" Text="Submit " Width="151px" OnClick="BtnSubmit_Click" />
                    </strong>

  </div>
</div>
</asp:Content>

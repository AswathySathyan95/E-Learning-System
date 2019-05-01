<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="Add_Category.aspx.cs" Inherits="ELearning.Admin.Add_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td class="text-left" colspan="3" rowspan="2" style="font-size: x-large; color: #000099"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Quiz Category</em></strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px; width: 18px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="modal-sm" style="height: 20px; width: 18px"></td>
        <td style="width: 283px; height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px"><strong>
            <asp:Label ID="Label1" runat="server" style="font-size: small" Text="Category"></asp:Label>
            </strong></td>
        <td>
            <table class="nav-justified">
                <tr>
                    <td>
                        <asp:DropDownList ID="DdlCategory" runat="server">
                            <asp:ListItem>---Select---</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td><strong>
                        <asp:Button ID="BtnAddCategory" runat="server" OnClick="BtnAddCategory_Click" style="font-weight: bold" Text="Add Category" />
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtCategoryAdd" runat="server" OnTextChanged="TxtCategoryAdd_TextChanged" Visible="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px"><strong>
            <asp:Label ID="Label2" runat="server" style="font-size: small" Text="Sub Category"></asp:Label>
            </strong></td>
        <td>
            <asp:TextBox ID="TxtSubCategory" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td class="text-left" colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" style="font-weight: bold" Text="Save" Width="117px" />
            </strong>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px; width: 18px"></td>
        <td style="height: 20px; width: 283px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 18px">&nbsp;</td>
        <td style="width: 283px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="Add_Questions.aspx.cs" Inherits="ELearning.Admin.Add_Questions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 311px; height: 20px;"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px"><strong>
                <asp:Label ID="Label1" runat="server" Text="Question Id"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="TxtQ_Id" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px"></td>
            <td style="width: 311px; height: 22px"><strong>
                <asp:Label ID="Label7" runat="server" Text="Category"></asp:Label>
                </strong></td>
            <td style="height: 22px">
                <asp:DropDownList ID="DdlCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px"><strong>
                <asp:Label ID="Label8" runat="server" Text="Sub Category"></asp:Label>
                </strong></td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DdlSubcategory" runat="server">
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DdlCategory" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px"><strong>
                <asp:Label ID="Label2" runat="server" Text="Question"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="TxtQuestion" runat="server" Height="69px" TextMode="MultiLine" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Height="139px" Width="487px">
                    <table class="nav-justified" style="height: 85px">
                        <tr>
                            <td class="modal-sm" style="width: 263px"><strong>
                                <asp:Label ID="Label3" runat="server" Text="Option A"></asp:Label>
                                </strong></td>
                            <td><strong>
                                <asp:Label ID="Label4" runat="server" Text="Option B"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 263px">
                                <asp:TextBox ID="TxtOptn1" runat="server" style="margin-bottom: 10"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TxtOptn2" runat="server" Height="18px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 263px"><strong>
                                <asp:Label ID="Label5" runat="server" Text="Option C"></asp:Label>
                                </strong></td>
                            <td><strong>
                                <asp:Label ID="Label6" runat="server" Text="Option D"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 263px">
                                <asp:TextBox ID="TxtOptn3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TxtOptn4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 263px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 40px"></td>
            <td style="width: 311px; height: 40px">
                <br />
                <strong>
                <asp:Label ID="Label9" runat="server" Text="Correct Answer"></asp:Label>
                </strong>
                <br />
            </td>
            <td style="height: 40px">
                <br />
                <asp:TextBox ID="TxtCorrectAns" runat="server"></asp:TextBox>
                <br />
            </td>
            <td style="height: 40px"></td>
            <td style="height: 40px"></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 311px; height: 20px;"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px" class="text-right">
                <br />
                <strong>
                <asp:Button ID="BtnSave" runat="server" style="font-weight: bold" Text="Save Question" />
                </strong>
                <br />
            </td>
            <td>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 311px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

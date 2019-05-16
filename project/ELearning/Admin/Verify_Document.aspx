<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Verify_Document.aspx.cs" Inherits="ELearning.Admin.Verify_Document" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 558px;
        }
        .auto-style2 {
            width: 100%;
            height: 518px;
        }
        .auto-style3 {
            width: 1157px;
            height: 302px;
        }
        .auto-style4 {
            width: 165px;
        }
        .auto-style5 {
            width: 1157px;
            height: 163px;
        }
        .auto-style6 {
            width: 1196px;
        }
        .auto-style7 {
            color: #000099;
            width: 637px;
        }
        .auto-style8 {
            font-size: xx-large;
        }
        .newStyle1 {
            font-family: "Bauhaus 93";
        }
        .newStyle2 {
            font-family: Algerian;
        }
        .newStyle3 {
            font-family: "Colonna MT";
            font-size: xx-large;
        }
        .newStyle4 {
            font-family: "Colonna MT";
            font-size: 50px;
            font-weight: bolder;
            color: #03096D;
        }
        .auto-style10 {
            text-align: center;
            height: 112px;
        }
        .auto-style11 {
            width: 100%;
            height: 7px;
        }
        .auto-style12 {
            color: #000099;
            width: 518px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div id="mainpage" class="auto-style1">

        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">
                    <div id="selection" class="auto-style5">
                        <div class="auto-style10">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <strong><span class="newStyle4">Document Verification</span></strong><span class="newStyle1"><strong><em><br class="auto-style8" />
                            </em></strong></span>
                        <br />

                        </div>
                        <table class="auto-style11">
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Document Type"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:DropDownList ID="DdlDocument" runat="server" AutoPostBack="True" Width="201px" OnSelectedIndexChanged="DdlDocument_SelectedIndexChanged">
                                        <asp:ListItem>---Select---</asp:ListItem>
                                        <asp:ListItem>VideoTutorials</asp:ListItem>
                                        <asp:ListItem>Notes</asp:ListItem>
                                        <asp:ListItem>Reports</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>

                    </div>
                    <div id="content" class="auto-style3">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GvDocument" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" ForeColor="Black" GridLines="None" OnPageIndexChanging="GvDocument_PageIndexChanging" PageSize="5">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="Doc_Id" HeaderText="Document ID" />
                                        <asp:BoundField DataField="Subject" HeaderText="Subject" NullDisplayText="All Documents Are Verified" />
                                        <asp:BoundField DataField="Topic" HeaderText="Topic" />
                                        <asp:BoundField DataField="Description" HeaderText="Document Description" />
                                        <asp:TemplateField HeaderText="Download">
                                            <ItemTemplate>
                                               <asp:LinkButton ID="btn_Download" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" CommandArgument='<%# Eval("Document_File") %>' CommandName="downloadDoc"  >
                                            <i class="fa fa-download" aria-hidden="true"></i> Download
                                            </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Verification">
                                            <ItemTemplate>
                                                <asp:HiddenField ID="hdnApp" runat="server" Value='<%# Eval("Status") %>' />
                                                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandArgument='<%# Eval("APR_STATUS") %>' CommandName="ShowStatus" OnClick="btnApprove_Click" Text='<%# Eval("APR_STATUS") %>' />
                                            </ItemTemplate>
                                            <ControlStyle ForeColor="Red" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        No Records Found
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" CssClass="card-footer" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="DdlDocument" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

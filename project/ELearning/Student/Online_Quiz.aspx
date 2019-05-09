<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.master" AutoEventWireup="true" CodeBehind="Online_Quiz.aspx.cs" Inherits="ELearning.Student.Online_Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="maincontent" style="width: 1305px">
          <table class="nav-justified" style="height: 425px; width: 101%;">
            <tr>
                <td style="width: 78px">
                    <asp:Timer ID="Timer2" runat="server" OnTick="Timer1_Tick" Interval="1000">
                    </asp:Timer>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 857px">&nbsp;</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TxtDisTime" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ReadOnly="True" Width="82px">25:00</asp:TextBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td class="text-right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td rowspan="8" style="width: 78px">
                    <div id="qstnboard" style="height: 405px; width: 291px">
                        <br />
                        <br />

                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="PanelQstn" runat="server" Height="271px" Width="283px">
                                    <table class="nav-justified">
                                        <tr>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button1" runat="server" Text="1" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" />
                                                &nbsp;</td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button2" runat="server" Text="2" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" />
                                                &nbsp;</td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button3" runat="server" Text="3" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" />
                                                &nbsp;</td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button4" runat="server" Text="4" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" />
                                                &nbsp;</td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button5" runat="server" Text="5" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" />
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button6" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="6" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button7" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="7" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button8" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="8" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button9" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="9" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button10" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="10" Width="45px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button11" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="11" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button12" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="12" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button13" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="13" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button14" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="14" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button15" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="15" Width="45px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button16" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="16" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button17" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="17" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button18" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="18" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button19" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="19" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button20" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="20" Width="45px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button21" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="21" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button22" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="22" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button23" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="23" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button24" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="24" Width="45px" />
                                            </td>
                                            <td style="width: 50px; height: 52px">
                                                <asp:Button ID="Button25" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="25" Width="45px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                    &nbsp;</td>
                <td rowspan="8" style="width: 79px">
                    &nbsp;</td>
                <td colspan="2" rowspan="8">
                    <div id="qstn" style="width: 1024px; height: 320px">

                        <table class="nav-justified" style="height: 306px">
                            <tr>
                                <td colspan="4" style="height: 190px">
                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                        <ContentTemplate>
                                            <table class="nav-justified" style="height: 231px">
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td colspan="3"><strong>
                                                        <asp:Label ID="LblQstnNo" runat="server" Font-Size="Medium">1</asp:Label>
                                                        </strong>&nbsp; <strong>
                                                        <asp:Label ID="LblQstn" runat="server" Font-Size="Medium"></asp:Label>
                                                        </strong></td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="LblTest" runat="server" Visible="False"></asp:Label>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:RadioButton ID="RbAOptn" runat="server" GroupName="optn" OnCheckedChanged="RbAOptn_CheckedChanged" Width="500px" Height="50px" />
     
                                                    </td>
                                                    <td>
                                                        
                                                            <asp:RadioButton ID="RbBOptn" runat="server" GroupName="optn" OnCheckedChanged="RbBOptn_CheckedChanged" Width="500px" Height="50px" />
                                                        
                                                    </td>
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
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                      
                                                            <asp:RadioButton ID="RbCOptn" runat="server" GroupName="optn" OnCheckedChanged="RbCOptn_CheckedChanged" Width="500px" Height="50px" />
                                                        
                                                    </td>
                                                    <td>
                                                        
                                                            <asp:RadioButton ID="RbDOptn" runat="server" GroupName="optn" OnCheckedChanged="RbDOptn_CheckedChanged" Width="500px" Height="50px" />
                                                        
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="BtnNxtQstn" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="modal-sm" style="width: 336px">&nbsp;</td>
                                <td class="text-right"><strong>
                                    <asp:Button ID="BtnNxtQstn" runat="server" Font-Size="Large" style="font-weight: bold" Text="Next Question &gt;&gt;" Width="215px" BackColor="#CC3300" OnClick="BtnNxtQstn_Click" />
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                    </div>
                    <div id="submit" class="text-center" style="height: 61px">

                        <asp:Button ID="BtnSubmit" runat="server" BackColor="#CC0000" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" OnClick="BtnSubmit_Click" Text="Finish Test" Visible="False" />

                    </div>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 53px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 78px">
                    <asp:HiddenField ID="HiddenField2" runat="server" />
                </td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 857px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   </div>
</asp:Content>

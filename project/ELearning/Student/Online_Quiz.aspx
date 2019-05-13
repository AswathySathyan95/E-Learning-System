<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.master" AutoEventWireup="true" CodeBehind="Online_Quiz.aspx.cs" Inherits="ELearning.Student.Online_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="maincontent" class="auto-style10">

        <table class="auto-style11">
            <tr>
                <td class="auto-style15">
                    <div id="mainn" style="border: double;">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div id="qstn">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                    <asp:Timer ID="Timer2" runat="server" OnTick="Timer1_Tick" Interval="1000">
                                    </asp:Timer>
                                    <asp:Label ID="LblTest" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp
                                    <asp:Label ID="LblQstnNo" runat="server" Font-Bold="True" Font-Size="Medium" Text="1"></asp:Label>
                                    &nbsp;
                        <asp:Label ID="LblQstn" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                                    <br />
                                </div>
                                <asp:Panel ID="PanelOptions" runat="server">
                                    <div id="a">
                                        <br />
                                        &nbsp
                                <asp:RadioButton ID="RbAOptn" runat="server" GroupName="optn" OnCheckedChanged="RbAOptn_CheckedChanged" />
                                    </div>
                                    <div id="b">
                                        <br />
                                        &nbsp
                                <asp:RadioButton ID="RbBOptn" runat="server" GroupName="optn" OnCheckedChanged="RbBOptn_CheckedChanged" />
                                    </div>
                                    <div id="c">
                                        <br />
                                        &nbsp
                                <asp:RadioButton ID="RbCOptn" runat="server" GroupName="optn" OnCheckedChanged="RbCOptn_CheckedChanged" />
                                    </div>
                                    <div id="d">
                                        <br />
                                        &nbsp;&nbsp<asp:RadioButton ID="RbDOptn" runat="server" GroupName="optn" OnCheckedChanged="RbDOptn_CheckedChanged" />
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="BtnNxtQstn" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <div id="next" class="text-right">
                            <strong>
                                <asp:Button ID="BtnNxtQstn" runat="server" Font-Size="Large" Style="font-weight: bold" Text="Next Question &gt;&gt;" Width="215px" BackColor="#999999" OnClick="BtnNxtQstn_Click" Height="34px" />
                            </strong>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>


                    &nbsp;</td>
                <td>
                    <div class="auto-style16"></div>
                    &nbsp;</td>
                <td>
                    <div id="timedis" class="auto-style14">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="TxtDisTime" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ReadOnly="True" Width="82px">25:00</asp:TextBox>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <br />

                        <div id="qstnboard" class="auto-style12">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="PanelQstn" runat="server" Height="271px" Width="276px">
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button1" runat="server" Text="1" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button2" runat="server" Text="2" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button3" runat="server" Text="3" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button4" runat="server" Text="4" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button5" runat="server" Text="5" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button6" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="6" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button7" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="7" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button8" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="8" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button9" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="9" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button10" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="10" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button11" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="11" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button12" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="12" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button13" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="13" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button14" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="14" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button15" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="15" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button16" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="16" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button17" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="17" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button18" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="18" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button19" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="19" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button20" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="20" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button21" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="21" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button22" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="22" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button23" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="23" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button24" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="24" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                        <td style="width: 50px; height: 52px">
                                            <asp:Button ID="Button25" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="45px" Text="25" Width="45px" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            </ContentTemplate>
                                
                            </asp:UpdatePanel>
                            <div>
                                    <asp:Image ID="Image1" runat="server" BackColor="Green" Height="30px" Width="30px" />&nbsp;<asp:Label ID="Label1" runat="server" Text="Answered"></asp:Label>
                                    <br />
                                    <asp:Image ID="Image2" runat="server" BackColor="Red" Height="30px" Width="30px" />&nbsp;<asp:Label ID="Label2" runat="server" Text="Not Answered"></asp:Label>
                                    <br />
                                    <asp:Image ID="Image3" runat="server" BackColor="#CCCCCC" Height="30px" Width="30px" />&nbsp;<asp:Label ID="Label3" runat="server" Text="Not Attended"></asp:Label>
                                </div>
                            <div id="submit" class="text-center">
                            <br />
                            <br />
                            <asp:Button ID="BtnSubmit" runat="server" BackColor="#999999" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" OnClick="BtnSubmit_Click" Text="Finish Test" Height="44px" Width="249px" />
                        </div>
                        </div>
                    </div>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="headplaceholder">
    <style type="text/css">
        .auto-style10 {
            width: 1375px;
            height: 470px;
        }

        .auto-style11 {
            width: 100%;
            height: 617px;
        }

        .auto-style12 {
            width: 266px;
            height: 384px;
        }

        .auto-style14 {
            height: 596px;
            margin-left: 0px;
            width: 276px;
        }

        .auto-style15 {
            width: 1319px;
        }

        .auto-style16 {
            height: 545px;
            width: 25px;
            margin-left: 0px;
        }

        </style>
</asp:Content>


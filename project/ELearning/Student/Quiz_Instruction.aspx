<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.master" AutoEventWireup="true" CodeBehind="Quiz_Instruction.aspx.cs" Inherits="ELearning.Student.Quiz_Instruction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <table class="nav-justified" style="height: 659px">
        <tr>
            <td style="width: 195px; height: 482px;"></td>
            <td style="width: 836px; height: 482px;">
                <div id="content" class="auto-style1">
                    <asp:Panel ID="Panel1" runat="server" Height="511px">
                        <div id="heading" class="text-center">
                            <br />
                            &nbsp;<span style="color: #000099; font-size: xx-large; font-family: Algerian"><strong><em><span class="newStyle1">INSTRUCTIONS</span></em></strong></span>
                            <br />
                        </div>
                        <div id="main" style="height: 388px">
                            <br />
                             <strong><span style="font-size: large">Read The Following Instructions Carefully :<br />
                            <br />
                            </span></strong>
                            <ul style="list-style-type: disc; font-size: small;">
                                <li>
                                    <strong>Total No of Questions : 25 </strong>
                                </li>
                                <li>
                                    <strong>Time alloted : 25 Minutes </strong>
                                </li>
                                <li>
                                    <strong>Marks for each correct answer : 1 Mark </strong>
                                </li>
                                <li>
                                    <strong>No negative marks for incorrect answers </strong>
                                </li>
                                <li>
                                    <strong>Click on the radio button to select/deselect your answer. </strong>
                                </li>
                                <li>
                                    <strong>To complete the test, click on submit Test button given on the bottom of the page </strong>
                                </li>
                                <li>
                                    <strong>Test will be submittedd automatically if time got expired and report will be displayed. </strong>
                                </li>
                                <li>
                                    <strong>Do Not refresh the page. </strong>
                                </li>
                            </ul>
                            <div id="submitbtn" class="text-center">
                            <asp:Button ID="BtnStart" runat="server" BackColor="#009D00" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="START TEST" OnClick="BtnStart_Click" />
                            <br />
                        </div>
                        </div>
                        
                    </asp:Panel>
                </div>
                &nbsp;</td>
            <td style="height: 482px"></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headplaceholder">
    <style type="text/css">
        .auto-style1 {
            height: 485px;
        }
        .newStyle1 {
            font-family: "Colonna MT";
            font-size: larger;
            font-weight: bolder;
            color: #000080;
            font-style: normal;
        }
    </style>
</asp:Content>


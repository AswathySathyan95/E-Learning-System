<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ELearning.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 652px; width: 1429px;">
        <div class="text-center">
            <br />
            <h6 style="color: #000099"><span style="font-size:50px;font-family: 'Colonna MT'"><strong>SJCET ELearning Portal</strong></span></h6>
            <p style="color: #000099">&nbsp;</p>
        </div>
        <div style="background-image:url('Sjc113-1.jpg'); height: 517px;">
            <table class="nav-justified" style="height: 346px">
                <tr>
                    <td></td>
                    <td style="width: 828px">
                        &nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="467px" ImageUrl="~/DesignImages/elearning.jpg" Width="775px" />
                    </td>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" Height="442px" Width="587px">
                            <p class="text-justify">
                                E-learning is essentially the computer and network-enabled transfer of skills and
knowledge. E-learning applications and processes include Web-based learning, computer-based
learning, virtual education opportunities and digital collaboration. This system helps teachers and
students in a college to share all study materials more easily at a single place. So that students can
easily get all the notes uploaded by the faculties in previous years. There is a forum where all users
can discuss about there doubts. This system consist of an internal mailing system where students
and faculties can send messages to any of the registered users.
                            </p>
                            <p class="text-justify">
                                This system helps students to improve there aptitude skill by attending the online quiz. Students
can view and download notes, reports or video tutorials that are uploaded by the faculties.
They can also see their Previous Quiz Results and can thus evaluate the improvements in their
aptitude skill. Students can ask queries regarding the documents uploaded by the faculties. Faculties
can upload notes, reports and video tutorials which are then verified by the admin. Faculties
can also add Quiz Questions, Categories etc. They can set Quiz for the students in the concerned
department. Faculties can give replies to the queries posted by the students. They can also view
student details and their quiz results. Admin is the one who manage all the users, can add new
users and delete existing users. Admin manages the quiz questions by adding or deleting questions
and admin verify the documents uploaded by the faculties and documents are available to students
after this verification. Admin can add course details, department details etc.
                            </p>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </asp:Content>

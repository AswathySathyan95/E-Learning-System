<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ELearning._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 1357px">
      <div id="mainimage" class="text-center">
          <asp:Image ID="Image1" runat="server" Height="146px" ImageUrl="~/DesignImages/sjcet-logo.jpg" Width="666px" />
      </div>  
      <div id="tablee">

          <table class="nav-justified">
              <tr>
                  <td>
                      <div id="about" style="height: 400px; width: 671px;">
                          <p style="width: 651px; height: 388px" class="text-justify">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              In this e-learning system we can share documents more easily. This system has four modules including Student, Faculties, College and Admin. Students can view and download notes and video tutorials uploaded by others. They can also upload notes and other study materials. They can attend online quiz and can post queries. 
                          </p>
                      </div>
                      &nbsp;</td>
                  <td>
                      <div id="imagedesign" style="height: 400px">

                          <asp:Image ID="Image2" runat="server" Height="404px" ImageUrl="~/DesignImages/login2.jpg" Width="845px" />

                      </div>
                      &nbsp;</td>
              </tr>
          </table>

      </div>
      <div id="footerr" style="height: 100px">

      </div>
  </div>
</asp:Content>

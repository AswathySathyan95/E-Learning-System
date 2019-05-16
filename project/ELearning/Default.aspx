<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ELearning._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 1357px; height: 725px;">
      <div id="mainimage" class="text-center">
          <asp:Image ID="Image1" runat="server" Height="146px" ImageUrl="~/DesignImages/sjcet-logo.jpg" Width="666px" />
      </div>  
      <div id="tablee">

          <table class="nav-justified">
              <tr>
                 
                  <td>
                      <div id="imagedesign" style="height: 493px">

                          <asp:Image ID="Image2" runat="server" Height="501px" ImageUrl="~/DesignImages/homepage.jpg" Width="1547px" />

                      </div>
                      &nbsp;</td>
              </tr>
          </table>

      </div>
      <div id="footerr" style="height: 100px">

      </div>
  </div>
</asp:Content>

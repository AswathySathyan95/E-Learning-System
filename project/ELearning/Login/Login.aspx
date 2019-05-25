<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELearning.Login.Loginaspx" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login - SJCET E-Learning Portal</title>
    <!-- Bootstrap core CSS-->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for login-->
    <link href="../assets/css/custom.css" rel="stylesheet">
    </head>

<body class="bg-dark">
    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-body">
                 <form id="form2" runat="server">
                        &nbsp;&nbsp;
                    <fieldset class="auto-style4">
                        <legend><strong>LOGIN</strong></legend>
                        <br />
                        <br />
                        <div class="auto-style9">
                            <strong>                            
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            </strong>&nbsp;</div>
                        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
                        <br />
                        <div class="auto-style9">
                            <br />
                            <strong>
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            </strong>
                        </div>
                        <div class="auto-style11">
                            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;</div>
                            <strong>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0033CC" NavigateUrl="~/Login/Forgot_Password.aspx">Forgot Password</asp:HyperLink>
                            </strong>
                        <br />
                        <div class="auto-style10">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <div class="auto-style12">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                            <asp:Button ID="BtnLogin" runat="server" CssClass="auto-style7" OnClick="BtnLogin_Click" Text="Login" />
                            </strong>
                        </div>
                    </fieldset></form>


            </div>
        </div>
    </div>
</body>

</html>


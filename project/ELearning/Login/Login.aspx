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
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            left: 0px;
            top: 0px;
            height: 454px;
        }
        .auto-style2 {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            text-align: left;
        }
    </style>
    </head>

<body class="bg-dark">
    <div class="container">
        <div class="card card-login mx-auto mt-5" style="left: 10px; top: 65px; height: 454px">
            <div id="accordion">
                    <div class="auto-style1">
                     <div class="card-header" id="headingOne">
                         <h5 class="mb-0">
                             <strong>LOGIN</strong>
                         </h5>
                     </div>
                     <div class="auto-style2">
                         <form id="form2" runat="server">
                             <br />
                             <br />
                             <br />
                             <div>
                                 <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                            
                                 <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                 </strong>
                                 <br />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
                             </div>
                             <div>
                                 <br />
                                 <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                 <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                 </strong>
                                 <br />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                             </div>
                             <div>
                                 <br />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <strong>
                                 <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0033CC" NavigateUrl="~/Login/Forgot_Password.aspx">Forgot Password</asp:HyperLink>
                                 </strong>
                             </div>
                             <div>
                                 <br />
                                 <strong>
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="BtnLogin" runat="server" CssClass="auto-style7" OnClick="BtnLogin_Click" Text="Login" Height="38px" style="font-weight: bold; font-size: large" Width="150px" />
                                 </strong>
                             </div>
                         </form>
                    </div>
                    </div>
            </div>
        </div>
    </div>
</body>
</html>


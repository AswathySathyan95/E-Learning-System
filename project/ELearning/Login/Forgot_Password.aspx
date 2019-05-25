<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="ELearning.Login.Forgot_Password" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Forgot Password - SJCET ELearning Portal</title>
    <!-- Bootstrap core CSS-->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for login-->
    <link href="../assets/css/custom.css" rel="stylesheet">
    <style>
        .auto-style5
        {
            border-radius:5px;
        }
    </style>
    </head>

<body class="bg-dark">
    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-body">
                 <form id="form2" runat="server">
                        &nbsp;&nbsp;
                    <fieldset class="auto-style4">
                        <legend><strong>Forgot Password</strong></legend>
                        <br />
                        <br />
                        <div class="auto-style9">
                            <strong>  
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Enter Your Email Address"></asp:Label>
                            </strong>&nbsp;

                        </div>
                            <asp:TextBox ID="TxtEmail" runat="server" Width="233px"></asp:TextBox>                        
                        <br />
                        <div class="auto-style9">
                            <br />
                            <strong>
                                 <asp:Button ID="BtnSubmit" runat="server" CssClass="auto-style5" OnClick="BtnSubmit_Click" Text="Forgot Password Reset" style="font-weight: bold" Width="254px" />
                            </strong>
                        </div>
                        <div class="auto-style11">
                               <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                            &nbsp;</div>
                         <div class="auto-style9">
                            <br />
                            <strong>
                               <asp:Label ID="LblPswd" runat="server" Text="Please Check Your Registered Email" Visible="False"></asp:Label>
                            </strong>
                        </div>
                      
                    </fieldset></form>


            </div>
        </div>
    </div>
</body>

</html>



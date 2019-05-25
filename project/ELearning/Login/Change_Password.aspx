<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="ELearning.Login.Change_Password" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Change Password - SJCET E-Learning Portal</title>
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
                        <legend><strong>Change Password</strong></legend>
                        <br />
                        <br />
                        <div class="auto-style9">
                            <strong>                            
                                 <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
                            </strong>&nbsp;</div>
                        <asp:TextBox ID="TxtCPswd" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <div class="auto-style9">
                            <br />
                            <strong>
                                 <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                            </strong>
                        </div>
                        <div class="auto-style11">
                               <asp:TextBox ID="TxtNPswd" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;</div>
                         <div class="auto-style9">
                            <br />
                            <strong>
                               <asp:Label ID="Label3" runat="server" Text="Re-type New Password"></asp:Label>
                            </strong>
                        </div>
                        <div class="auto-style11">
                            <asp:TextBox ID="TxtCNPswd" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNPswd" ControlToValidate="TxtCNPswd" ErrorMessage="Password confirmation doesn't match the password" ForeColor="Red"></asp:CompareValidator>
                            &nbsp;</div>
                        <br />
                      
                        <div class="auto-style12">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                            <asp:Button ID="BtnSave" runat="server" CssClass="auto-style11" OnClick="BtnSave_Click" Text="Save Changes" Width="177px" style="font-weight: bold" />                            </strong>
                        </div>
                    </fieldset></form>


            </div>
        </div>
    </div>
</body>

</html>



<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="demo.loginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
      <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="content/signin.css" rel="stylesheet">
</head>
<body class="text-center">
    <form id="form1" class="form-signin" runat="server">
        <div>
            <asp:Image CssClass="mb-4" src="https://arividam.files.wordpress.com/2012/06/logo.jpg" alt="" Width="72" Height="72" runat="server" />
            <h1 class="h3 mb-3 font-weight-normal">Login</h1>
            <label for="txtEmail" class="sr-only">Email address</label>
            <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email address" required autofocus ></asp:TextBox>
            
            <label for="txtPassword" class="sr-only">Password</label>
            <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server" required></asp:TextBox>

            <asp:Button ID="btnSignUp" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Sign In" OnClick="btnSignUp_Click" />
            
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me" />
                    Remember me
                </label>
            </div>
            <p class="mt-5 mb-3 text-muted">&copy; 2017 Akshaykumar Paladiya</p>
        </div>
    </form>
</body>
</html>

<!doctype html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="demo.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Member Registartion" />
    <meta name="author" content="Akshaykumar Paladiya" />
    <link rel="icon" href="../../../../favicon.ico" />

    <title>Checkout example for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />


    <!-- Custom styles for this template -->
    <link href="content/form-validation.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <div class="container">
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="http://freitasmacedo.com/wp-content/uploads/2017/06/e4a1a10644e80b7c855a654e7a5165d4.jpg" alt="" width="72" height="72" />
            <h2>Registration Form</h2>
        </div>
        <form id="form1" class="needs-validation" runat="server" novalidate>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-sm-12 col-md-8">
                    <h4 class="mb-3">Provide Following Information</h4>
                    <div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstName">First name</label>
                                <asp:TextBox ID="firstName" CssClass="form-control" value="" runat="server"></asp:TextBox>

                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="lastName">Last name</label>
                                <asp:TextBox ID="lastName" CssClass="form-control" value="" runat="server"></asp:TextBox>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="username">Username</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">@</span>
                                </div>
                                <asp:TextBox ID="username" CssClass="form-control" placeholder="Username" value="" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="width: 100%;">
                                    Your username is required.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="password">Password</label>
                            <asp:TextBox ID="password" CssClass="form-control" placehoder="password" value="" runat="server"></asp:TextBox>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="email">Email <span class="text-muted">(Optional)</span></label>
                            <asp:TextBox ID="email" CssClass="form-control" placeholder="you@example.com" value="" runat="server"></asp:TextBox>

                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address">Address</label>
                            <asp:TextBox ID="address" CssClass="form-control" placeholder="1234 Main St" value="" runat="server"></asp:TextBox>
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <asp:TextBox ID="address2" CssClass="form-control" placeholder="Apartment or suit" value="" runat="server"></asp:TextBox>

                        </div>
                        <div class="mb-3">
                            <label for="city">State/Province</label>
                            <asp:TextBox ID="city" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>

                            <div class="invalid-feedback">
                                Please provide City.
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5 mb-3">
                                <label for="country">Country</label>
                                <asp:DropDownList ID="DDLCountry" CssClass="custom-select d-block w-100" runat="server">
                                    <asp:ListItem>Canada</asp:ListItem>
                                    <asp:ListItem>USA</asp:ListItem>
                                </asp:DropDownList>


                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="state">State/Province</label>
                                <asp:TextBox ID="state" CssClass="form-control" placeholder="State/Province" runat="server"></asp:TextBox>

                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="zip">Zip</label>
                                <asp:TextBox ID="zip" CssClass="form-control" runat="server"></asp:TextBox>

                                <div class="invalid-feedback">
                                    Zip code required.
                                </div>
                            </div>
                        </div>

                        <hr class="mb-4">
                        <asp:Button ID="btnSignUp" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />

                    </div>
                </div>
                <div class="col-md-2"></div>

            </div>
        </form>
    </div>
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017 Akshaykumar Paladiya</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>


    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
    <script src="../../../../assets/js/vendor/holder.min.js"></script>
    <script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {
                'use strict';

                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');

                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
    </script>
</body>
</html>








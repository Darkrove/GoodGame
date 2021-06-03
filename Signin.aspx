<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="GoodGame.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Good Game | Sign in</title>
    <!-- Icon -->
    <link rel="icon" href="Assets/image/GoodGameIco.ico" />
    <!-- CSS only -->
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/css/paper-kit.css?v=2.2.0" rel="stylesheet" />
    <!-- Fonts and icons -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <link href="Assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="Assets/fontawesome/css/fontawesome.css" rel="stylesheet" />
    <style>
        .fa-heart {
            color: #865BCE !important;
        }

        body {
            background: #1A1B1D;
        }

        .page-header {
            background-color: transparent;
            background-image: url('https://localhost:44331/Assets/image/Lback.png')
        }

        .fab:hover {
            color: #865BCE !important;
        }

        .card {
            background-color: transparent;
            margin: 20px !important;
            width: 400px !important;
            height: 440px !important;
            border-bottom: groove 2px #865BCE;
            border-top: groove 2px #865BCE;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-left: solid 2px #865BCE;
        }

        .form-control {
            border-radius: 30px !important;
        }

        .btn-just-icon {
            cursor: pointer;
        }

        .card-register .btn {
            margin-top: 10px;
        }

        .btn-danger {
            margin-top: 10px;
            background-color: #865BCE;
            border-color: #865BCE;
        }

            .btn-danger:hover,
            .btn-danger:focus,
            .btn-danger:active,
            .btn-danger.active,
            .btn-danger:active:focus,
            .btn-danger:active:hover,
            .btn-danger.active:focus,
            .btn-danger:not(:disabled):not(.disabled):active:focus,
            .btn-danger:not(:disabled):not(.disabled):active,
            .btn-danger:not(:disabled):not(.disabled).active,
            .btn-danger:not(:disabled):not(.disabled).active:focus,
            .show > .btn-danger.dropdown-toggle {
                background-color: #444444;
                border-color: #444444;
            }

        .btn.btn-link {
            color: #444444;
        }

            .btn.btn-link:hover {
                color: #865BCE !important;
            }

        #bold {
            font-weight: bold;
        }

        #highlight {
            color: #865BCE;
            font-weight: 500;
        }

        .fa-heart {
            color: #865BCE !important;
        }

        .error {
            font-size: 12px;
            color: red;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-transparent " color-on-scroll="300">
        <div class="container-fluid">
            <div class="mr-auto d-block">
                <a class="navbar-brand" href="Home.aspx" rel="tooltip" data-placement="bottom">
                    <img src="Assets/image/GoodGameLogo.png" style="height: 40px" />
                </a>
            </div>
            <div class="ml-auto d-block">
                <asp:HyperLink ID="HyperLink5" CssClass="btn btn-outline-default btn-round" runat="server" NavigateUrl="~/Signin.aspx">Sign in</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" CssClass="btn btn-default btn-round" Style="margin: 0px 15px;" runat="server" NavigateUrl="~/Signup.aspx">Sign up</asp:HyperLink>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    <div class="page-header">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col ml-auto mr-auto">
                        <div class="card card-register">
                            <div class="social-line text-center">
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn-just-icon btn-lg">
                                    <i class="fab fa-facebook-f"></i>
                                </asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn-just-icon btn-lg">
                                    <i class="fab fa-discord"></i>
                                </asp:HyperLink>
                                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn-just-icon btn-lg">
                                    <i class="fab fa-twitter"></i>
                                </asp:HyperLink>
                                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn-just-icon btn-lg">
                                    <i class="fab fa-youtube"></i>
                                </asp:HyperLink>
                            </div>
                            <div class="text-left">
                                <h3 class="title mx-auto"><span id="bold">Authorization</span><br />
                                    <span>of your </span><span id="highlight">account</span>
                                </h3>
                            </div>
                            <form class="register-form" runat="server">
                                <asp:TextBox ID="TextBoxEmail" runat="server" placeholder="Email" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Please enter email id" ControlToValidate="TextBoxEmail" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="Please enter password" ControlToValidate="TextBoxPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                <asp:Button ID="ButtonSignin" runat="server" CssClass="btn btn-danger btn-block btn-round" Text="SIGN IN" OnClick="ButtonSignin_Click" />
                            </form>
                            <div class="forgot">
                                <a href="#" class="btn btn-link">Forgot password?</a>
                            </div>
                            <div class="text-center">
                                <asp:Label ID="LabelError" runat="server" CssClass="error" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer register-footer text-center">
        <h6>©
        <script>
            document.write(new Date().getFullYear())
        </script>
            , Good Game <i class="fa fa-heart heart"></i></h6>
    </div>
</body>
</html>

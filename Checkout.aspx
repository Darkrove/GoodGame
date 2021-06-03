<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GoodGame.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Good Game | Checkout</title>
    <!-- Icon -->
    <link rel="icon" href="Assets/image/GoodGameIco.ico"/>
    <!--CSS only -->
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/css/paper-kit.css?v=2.2.0" rel="stylesheet" />
    <link href="Assets/css/style.css" rel="stylesheet" />
    <!-- Fonts and icons -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
    <link href="Assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="Assets/fontawesome/css/fontawesome.min.css" rel="stylesheet" />
    <!-- JQuery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous" type="text/javascript"></script>
    <script src="Assets/js/script.js" type="text/javascript"></script>
    <script src="Assets/js/jquery-3.6.0.min.js" type="text/javascript"></script>
    <style>
        body{
            background-color: #1A1B1D !important;
        }
        .active-link{
            color: #865BCE!important;
        }
        .my-colour:hover{
            background-color: #865BCE!important;
        }
        .drop:active, .drop:focus{
            color: #fff!important;
        }
        .fab,.fa-heart{
            color: #865BCE !important;
        }
    </style>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <script>
        $(function () {
            $('.active-link').toggleClass("active-link");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="color: #fff">
        <main>
            <div class="py-5 text-center">
                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="shopping-cart" height="57" class="svg-inline--fa fa-shopping-cart fa-w-18"
                    role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                    <path fill="#865BCE" d="M528.12 301.319l47.273-208C578.806 
                        78.301 567.391 64 551.99 64H159.208l-9.166-44.81C147.758 8.021 137.93 0 126.529 0H24C10.745 0 0 10.745 0 24v16c0 13.255 10.745 24 
                        24 24h69.883l70.248 343.435C147.325 417.1 136 435.222 136 456c0 30.928 25.072 56 56 56s56-25.072 56-56c0-15.674-6.447-29.835-16.824-40h209.647C430.447 
                        426.165 424 440.326 424 456c0 30.928 25.072 56 56 56s56-25.072 56-56c0-22.172-12.888-41.332-31.579-50.405l5.517-24.276c3.413-15.018-8.002-29.319-23.403-29.319H218.117l-6.545-32h293.145c11.206 
                        0 20.92-7.754 23.403-18.681z">
                    </path>
                </svg>
                <h2>Checkout form</h2>
                <p class="lead light">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
            </div>

            <div class="row g-3">

                <div class="my-5 pt-5">
                    <h4 class="mb-3">Billing address</h4>
                    <form class="needs-validation" novalidate>
                        <div class="row g-3">
                            <div class="col-sm-6" style="margin-bottom:10px">
                                <label for="firstName" class="form-label">First name</label>
                                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">Last name</label>
                                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
             
                                </div>
                            </div>

                            <div class="col-12" style="margin-bottom:10px">
                                <label for="username" class="form-label">Username</label>
                                <div class="input-group has-validation">
                                    <input type="text" class="form-control" id="username" placeholder="Username" required>
                                    <div class="invalid-feedback">
                                        Your username is required.
                                    </div>
                                </div>
                            </div>

                            <div class="col-12" style="margin-bottom:10px">
                                <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
                                <input type="email" class="form-control" id="email" placeholder="you@example.com">
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
             
                                </div>
                            </div>

                            <div class="col-12" style="margin-bottom:10px">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
             
                                </div>
                            </div>

                            <div class="col-12" style="margin-bottom:10px">
                                <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)</span></label>
                                <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                            </div>

                            <div class="col-md-5" style="margin-bottom:10px">
                                <div class="form-group">
                                    <label>Country</label>
                                    <asp:DropDownList ID="ProCategory" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True">Select</asp:ListItem>
                                        <asp:ListItem>India</asp:ListItem>
                                        <asp:ListItem>USA</asp:ListItem>
                                        <asp:ListItem>uAE</asp:ListItem>
                                        <asp:ListItem>Bali</asp:ListItem>
                                        <asp:ListItem>other..</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True">Select</asp:ListItem>
                                        <asp:ListItem>Maharashatra</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Kerala</asp:ListItem>
                                        <asp:ListItem>Jammu & Kashmir</asp:ListItem>
                                        <asp:ListItem>other..</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="zip" class="form-label">Zip</label>
                                <input type="text" class="form-control" id="zip" placeholder="" required>
                                <div class="invalid-feedback">
                                    Zip code required.
             
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <h4 class="mb-3">Payment</h4>

                        <div class="row gy-3">
                            <div class="col-md-6">
                                <label for="cc-name" class="form-label">Name on card</label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
             
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="cc-number" class="form-label">Credit card number</label>
                                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
             
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-expiration" class="form-label">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                <div class="invalid-feedback">
                                    Expiration date required
             
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-cvv" class="form-label">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                <div class="invalid-feedback">
                                    Security code required
             
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <button class="w-100 btn btn-default btn-lg" type="submit">Continue to checkout</button>
                    </form>
                </div>
            </div>
        </main>
    </div>
    <!--   Core JS Files   -->
    <script src="Assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/bootstrap.min.js" type="text/javascript"></script>
</asp:Content>

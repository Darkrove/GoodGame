<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GoodGame.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Good Game | Dashboard</title>
    <!-- Icon -->
    <link rel="icon" href="Assets/image/GoodGameIco.ico"/>
    <!--CSS only -->
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/css/paper-kit.css?v=2.2.0" rel="stylesheet" />
    <link href="Assets/css/style.css" rel="stylesheet" />
    <!-- Fonts and icons -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="Assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="Assets/fontawesome/css/regular.css" rel="stylesheet" />
    <link href="Assets/fontawesome/css/solid.css" rel="stylesheet" />

    <link href="Assets/fontawesome/css/fontawesome.min.css" rel="stylesheet" />
    <!-- JQuery and JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="Assets/js/script.js" type="text/javascript"></script>
    <script src="Assets/js/jquery-3.6.0.min.js"></script>
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
        .invisible {
            display: none;
        }
        .fab,.fa-heart,.fas{
            color: #865BCE !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header" data-parallax="true" style="background-image: url(https://images.unsplash.com/photo-1490810194309-344b3661ba39?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=990&q=80);">
        <div class="filter"></div>
        <div class="container">
            <div class="motto text-center">
                <asp:Label ID="Welcome" Style="font-size: 50px; font-weight: bold" runat="server" Text=""></asp:Label>
                <h3>Start managing your website & products here.</h3>
                <br />
                <a class="btn btn-outline-neutral btn-round" href="Viewproduct.aspx"><i class="far fa-folder-open"></i>  View products</a>
                <a class="btn btn-outline-neutral btn-round" href="Viewproduct.aspx"><i class="far fa-chart-bar"></i>  latest orders</a>
            </div>
        </div>
    </div>
    <div class="main">
        <div style="background-color: #1A1B1D !important;" class="section text-center">
            <div class="container">
                <div class="motto text-center">
                    <asp:Label ID="Label1" Style="font-size: 50px; font-weight: bold;" runat="server" Text="Features"></asp:Label>
                    <h3>Explore all of these features here.</h3>
                </div>
                <div class="row" style="padding-top: 40px">
                    <div class="col-md-3">
                        <div class="info">
                            <div class="icon icon-danger">
                                <i class="fas fa-shopping-basket"></i>
                            </div>
                            <div class="description">
                                <h4 class="info-title" style="color: #fff">Product</h4>
                                <p class="description">Manage all products like update product, add a new product, and delete produt.</p>
                                <a href="javascript:;" class="btn btn-link btn-default">See more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info">
                            <div class="icon icon-danger">
                                <i class="fas fa-user"></i>
                            </div>
                            <div class="description">
                                <h4 class="info-title" style="color: #fff">User</h4>
                                <p>Manage users like update user details, add a new user or admin, and delete data.</p>
                                <a href="javascript:;" class="btn btn-link btn-default">See more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info">
                            <div class="icon icon-danger">
                                <i class="fas fa-rupee-sign"></i>
                            </div>
                            <div class="description">
                                <h4 class="info-title" style="color: #fff">Payment</h4>
                                <p>Manage all payment activity, expence tracking & online transaction records.</p>
                                <a href="javascript:;" class="btn btn-link btn-default">See more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info">
                            <div class="icon icon-danger">
                                <i class="fas fa-chart-line"></i>
                            </div>
                            <div class="description">
                                <h4 class="info-title" style="color: #fff">Statistics</h4>
                                <p>View records like total income, total expense, & details like most demanded product.</p>
                                <a href="javascript:;" class="btn btn-link btn-default">See more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="Assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/bootstrap.min.js" type="text/javascript"></script>
</asp:Content>

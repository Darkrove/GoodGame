<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GoodGame.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Good Game | About</title>
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
    <script>
        $(function () {
            $('.active-link').toggleClass("active-link");
            $(".n4").toggleClass("active-link");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section profile-content text-center" style="background-color: #1A1B1D !important;">
        <div class="container text-center">
            <h2 style="color: #fff;" class="title">Let's talk about company</h2>
            <div class="owner">
                <div class="avatar" style="padding-top: 100px">
                    <img src="Assets/image/GoodGameLogo.png" alt="Circle Image" width="100" class="img-no-padding img-responsive">
                </div>
                <div class="name">
                    <h4 style="color: #865BCE;" class="title">Good Game
                    <br />
                    </h4>
                    <h6 class="description">Game Selling Platform</h6>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 ml-auto mr-auto text-center">
                    <p style="color: #fff;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                </div>
            </div>
            <br />
        </div>
    </div>
    <div class="section section-dark text-center">
        <div class="container">
            <h2 class="title">Let's talk about us</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card card-profile card-plain">
                        <div class="card-avatar">
                            <a href="#avatar">
                                <img src="https://i.pinimg.com/originals/be/a7/c0/bea7c0cbe785ede2b4523dd7c75220d4.jpg" alt="...">
                            </a>
                        </div>
                        <div class="card-body">
                            <a href="#paper-kit">
                                <div class="author">
                                    <h4 class="card-title">Henry Ford</h4>
                                    <h6 class="card-category" style="color: #865BCE;">Product Manager</h6>
                                </div>
                            </a>
                            <p class="card-description text-center">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                            </p>
                        </div>
                        <div class="card-footer text-center">
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-twitter"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-profile card-plain">
                        <div class="card-avatar">
                            <a href="#avatar">
                                <img src="https://qph.fs.quoracdn.net/main-qimg-217015358349186e0e382cb15c5d7c63" alt="...">
                            </a>
                        </div>
                        <div class="card-body">
                            <a href="#paper-kit">
                                <div class="author">
                                    <h4 class="card-title">Sajjad Shaikh</h4>
                                    <h6 class="card-category" style="color: #865BCE;">Founder</h6>
                                </div>
                            </a>
                            <p class="card-description text-center">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                            </p>
                        </div>
                        <div class="card-footer text-center">
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-twitter"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-profile card-plain">
                        <div class="card-avatar">
                            <a href="#avatar">
                                <img src="https://i.pinimg.com/474x/e2/4c/06/e24c069463c2a2b7c566a6d0d24bfb44.jpg" alt="...">
                            </a>
                        </div>
                        <div class="card-body">
                            <a href="#paper-kit">
                                <div class="author">
                                    <h4 class="card-title">Robert Orben</h4>
                                    <h6 class="card-category" style="color: #865BCE;">Brand Manager</h6>
                                </div>
                            </a>
                            <p class="card-description text-center">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                            </p>
                        </div>
                        <div class="card-footer text-center">
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-twitter"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fab fa-linkedin-in"></i></a>
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
    <script src="Assets/js/paper-kit.js?v=2.2.0"></script>
</asp:Content>

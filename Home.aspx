<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GoodGame.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Good Game | Home</title>
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
    <link href="Assets/fontawesome/css/solid.min.css" rel="stylesheet" />
    <link href="Assets/fontawesome/css/fontawesome.min.css" rel="stylesheet" />
    <!-- JQuery and JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="Assets/js/script.js" type="text/javascript"></script>
    <script src="Assets/js/jquery-3.6.0.min.js"></script>
    <style>
        body{
            color: #fff;
        }
        .section-dark {
            background-color: #1A1B1D !important;
        }
        .img {
            height: 485px; 
            display: flex;
            justify-content: center;
        }
        .text{
            height: 405px; 
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .floating {   
            animation-name: floating; 
            animation-duration: 3s; 
            animation-iteration-count: infinite; 
            animation-timing-function: ease-in-out; 
            margin-left: 30px; 
            margin-top: 5px; 
        } 
        @keyframes floating { 
            0% { transform: translate(0,  0px); } 
            50%  { transform: translate(0, 25px); } 
            100%   { transform: translate(0, -0px); }     
        }
        .banner {
            background: #a770ef;
            background: -webkit-linear-gradient(to right, #a770ef, #cf8bf3, #fdb99b);
            background: linear-gradient(to right, #a770ef, #cf8bf3, #fdb99b);
        }
        .bg-black {
            background-color: #282B30!important;
        }
        .text-light{
            color: #fff!important;
        }
        .bold{
            font-weight: bold;
        }
        #highlight{
            color: #865BCE;
            font-weight: 800;
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
        .fab,.fa-heart{
            color: #865BCE !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section section-dark section-nucleo-icons">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 col-md-12 text">
                    <div>
                        
                        <h2 class="title mx-auto">
                            <span class="bold">Welcome, </span>
                            <asp:Label ID="welcome" runat="server" class="bold" Text=""></asp:Label>              
                            <br />
                            <span> Create your</span>
                            <span id="highlight"> personage</span>
                        </h2>
                        <br/>
                        <a href="#Product" class="btn btn-default btn-round">Start shopping</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="img floating">
                        <img src="Assets/image/xboxConsole.png" alt=""/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" id="Product" style="background-color: #1A1B1D">
      <div class="px-lg-5">
        <!-- For demo purpose -->
        <div class="row py-5">
          <div class="col-lg-12 mx-auto">
            <div class="text-white p-5 shadow-sm rounded banner">
              <h1 class="display-4">Checkout some gaming products</h1>
              <p class="lead">Product snippet.</p>
              <p class="lead">Snippet by <a href="https://bootstrapious.com/snippets" class="text-reset"> 
                  Gameious</a>, Images by <a href="https://unsplash.com" class="text-reset">Unsplash</a>.
              </p>
            </div>
          </div>
        </div>
        <!-- End -->

        
        <asp:Repeater ID="RepeaterProduct" runat="server">
            <HeaderTemplate>
                <div class="row">
            </HeaderTemplate>
            <ItemTemplate>
                <!-- Gallery item -->
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-black rounded shadow-sm"><img src=" <%# Eval("ProPath") %> " alt="" class="img-fluid card-img-top">
                        <div class="p-4">
                            <h5> <a href="#" class="text-light"> <%# Eval("ProName") %> </a></h5>
                            <p class="small text-muted text-light mb-0"> <%# Eval("ProDescription") %> </p>
                            <div class="d-flex align-items-center justify-content-between rounded-pill bg-dark px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-rupee-sign"></i><span class="font-weight-bold"><%# Eval("ProPrice") %></span></p>
                                <a type="button" class="btn btn-default px-3 rounded-pill btn-sm" href="Checkout.aspx?id=<%# Eval("ProId") %>"><i class="fa fa-shopping-basket"></i><span class="font-weight-normal"> Buy</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End -->
            </ItemTemplate>
            <FooterTemplate>
                 </div>
            </FooterTemplate>
        </asp:Repeater>
        <div class="py-5 text-right"><a href="#" class="btn btn-dark px-5 py-3 text-uppercase">Show me more</a></div>
      </div>
    </div>
    <!--   Core JS Files   -->
    <script src="Assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/bootstrap.min.js" type="text/javascript"></script>
</asp:Content>

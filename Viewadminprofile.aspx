<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Viewadminprofile.aspx.cs" Inherits="GoodGame.Viewadminprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Good Game | Admin Profile</title>
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
    <link href="Assets/fontawesome/css/fontawesome.min.css" rel="stylesheet" />
    <!-- JQuery and JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="Assets/js/script.js" type="text/javascript"></script>
    <script src="Assets/js/jquery-3.6.0.min.js"></script>
    <style>
        body{
            background-color: #1A1B1D !important;
            color: #fff;
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
    <script>
        $(function () {
            $('.active-link').toggleClass("active-link");
            $(".n8").toggleClass("active-link");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="py-5 text-center">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="eye" height="57" class="d-block mx-auto mb-4 svg-inline--fa fa-eye fa-w-18" role="img"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <path fill="#865BCE" d="M572.52 241.4C518.29 135.59 410.93 64 288 64S57.68 135.64 3.48 241.41a32.35 
                    32.35 0 0 0 0 29.19C57.71 376.41 165.07 448 288 448s230.32-71.64 284.52-177.41a32.35 32.35 0 0 0 0-29.19zM288 400a144 144 0 1 1 144-144 143.93 143.93 0 0 1-144 
                    144zm0-240a95.31 95.31 0 0 0-25.31 3.79 47.85 47.85 0 0 1-66.9 66.9A95.78 95.78 0 1 0 288 160z">
                </path>
            </svg>
            <h2>View Admin Details</h2>
            <p class="lead">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            <asp:Label ID="Msg" runat="server" Text="" ForeColor="#33CC33"></asp:Label>
        </div>
        <!-- <h3 class="typography-line">Add Products
        <asp:HyperLink ID="HyperLink5" CssClass="btn btn-link btn-default" runat="server" NavigateUrl="~/Viewproduct.aspx"><i class="fa fa-eye"></i>View</asp:HyperLink></h3> -->
        <hr style="border-color: #865BCE" class="style2">
        <asp:Repeater ID="RepeaterUserTable" runat="server">
            <HeaderTemplate>
                <table class="table table-striped table-dark">
                    <thead>
                        <tr>
                            <th style="vertical-align: middle;" scope="col">User Id</th>
                            <th style="vertical-align: middle;" scope="col">User Name</th>
                            <th style="vertical-align: middle;" scope="col">User Email</th>
                            <th style="vertical-align: middle;" scope="col">User Permission</th>
                            <th style="vertical-align: middle;" scope="col">User LastLogin</th>
                            <th style="vertical-align: middle;" scope="col">User Profile</th>
                            <th style="vertical-align: middle;" scope="col">Edit</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <th scope="row" style="vertical-align: middle;"><%# Eval("UserId") %></th>
                    <td style="vertical-align: middle;"><%# Eval("UserName") %></td>
                    <td style="vertical-align: middle;"><%# Eval("UserEmail") %></td>
                    <td style="vertical-align: middle;"><%# Eval("UserPermission") %></td>
                    <td style="vertical-align: middle;"><%# Eval("UserLastLogin") %></td>
                    <td style="vertical-align: middle;"><a href="<%# Eval("UserProfile") %>" target="_blank">Image</a></td>
                    <td style="vertical-align: middle;"><a href="Updateuser.aspx?Id=<%# Eval("UserId") %>">Edit</a></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
            </table>
            </FooterTemplate>
        </asp:Repeater> 
    </div>
    <!--   Core JS Files   -->
    <script src="Assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/bootstrap.min.js" type="text/javascript"></script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Updateuser.aspx.cs" Inherits="GoodGame.Updateuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Good Game | Update User</title>
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
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="edit" height="57" class="d-block mx-auto mb-4 svg-inline--fa fa-edit fa-w-18" role="img"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <path fill="#865BCE" d="M402.6 83.2l90.2 90.2c3.8 3.8 3.8 10 0 13.8L274.4 
                    405.6l-92.8 10.3c-12.4 1.4-22.9-9.1-21.5-21.5l10.3-92.8L388.8 83.2c3.8-3.8 10-3.8 13.8 0zm162-22.9l-48.8-48.8c-15.2-15.2-39.9-15.2-55.2 
                    0l-35.4 35.4c-3.8 3.8-3.8 10 0 13.8l90.2 90.2c3.8 3.8 10 3.8 13.8 0l35.4-35.4c15.2-15.3 15.2-40 0-55.2zM384 346.2V448H64V128h229.8c3.2 
                    0 6.2-1.3 8.5-3.5l40-40c7.6-7.6 2.2-20.5-8.5-20.5H48C21.5 64 0 85.5 0 112v352c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 
                    48-48V306.2c0-10.7-12.9-16-20.5-8.5l-40 40c-2.2 2.3-3.5 5.3-3.5 8.5z">
                </path>
            </svg>
            <h2>Update User</h2>
            <p class="lead">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            <asp:Label ID="Msg" runat="server" Text="" ForeColor="#33CC33"></asp:Label>
        </div>
        <!-- <h3 class="typography-line">Add Products
        <asp:HyperLink ID="HyperLink5" CssClass="btn btn-link btn-default" runat="server" NavigateUrl="~/Viewproduct.aspx"><i class="fa fa-eye"></i>View</asp:HyperLink></h3> -->
        <hr style="border-color: #865BCE" class="style2">
        <div style="padding: 45px 0">
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>User Name</label>
                        <asp:TextBox ID="UserName" runat="server" class="form-control" placeholder="Name" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label>User Email</label>
                        <asp:TextBox ID="UserEmail" runat="server" class="form-control" placeholder="Email" required="true"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label>User Image</label>
                    <asp:TextBox ID="UserPath" runat="server" class="form-control" placeholder="Path" required="true"></asp:TextBox>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>User Role</label>
                        <asp:DropDownList ID="UserPermission" cssClass="form-control" runat="server">
                            <asp:ListItem Selected="True">Select</asp:ListItem>
                            <asp:ListItem>admin</asp:ListItem>
                            <asp:ListItem>user</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-2">
                        <label>User Last Login</label>
                        <asp:TextBox ID="UserLastLogin" class="form-control" runat="server" placeholder="Last Login" required="true"></asp:TextBox>
                    </div>
                </div>
                <asp:Button ID="SubmitButton" style="margin-top: 15px" class="btn btn-default" runat="server" Text="Submit" OnClick="SubmitButton_Click"/>
                <asp:HyperLink ID="ViewButton" style="margin-top: 15px" cssClass="btn btn-outline-default" NavigateUrl="~/Viewuserprofile.aspx" runat="server">View</asp:HyperLink>
            </form>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="Assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/bootstrap.min.js" type="text/javascript"></script>
</asp:Content>

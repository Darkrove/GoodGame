<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="GoodGame.Addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Good Game | Add Product</title>
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
            $(".n9").toggleClass("active-link");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="py-5 text-center">
          <svg class="d-block mx-auto mb-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" height="57" class="svg-inline--fa fa-plus fa-w-14" role="img" 
              xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
              <path fill="#865BCE" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 
                  14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 
                  0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z">
              </path>
          </svg>
          <h2>Add Product</h2>
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
                        <label>Product Name</label>
                        <asp:TextBox ID="ProName" runat="server" class="form-control" placeholder="Name" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Product Image Path</label>
                        <asp:TextBox ID="ProPath" runat="server" class="form-control" placeholder="Link" required="true"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label>Product Description</label>
                    <asp:TextBox ID="ProDescription" runat="server" class="form-control" placeholder="Description" required="true"></asp:TextBox>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Product Category</label>
                        <asp:DropDownList ID="ProCategory" cssClass="form-control" runat="server">
                            <asp:ListItem Selected="True">Select</asp:ListItem>
                            <asp:ListItem>Mouse</asp:ListItem>
                            <asp:ListItem>Controller</asp:ListItem>
                            <asp:ListItem>Keyboard</asp:ListItem>
                            <asp:ListItem>Speaker</asp:ListItem>
                            <asp:ListItem>Headphone</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-2">
                        <label>Product Price</label>
                        <asp:TextBox ID="ProPrice" class="form-control" runat="server" placeholder="Price" required="true"></asp:TextBox>
                    </div>
                </div>
                <asp:Button ID="SubmitButton" style="margin-top: 15px" class="btn btn-default" runat="server" Text="Submit" OnClick="SubmitButton_Click"/>
                <asp:HyperLink ID="ViewButton" style="margin-top: 15px" cssClass="btn btn-outline-default" NavigateUrl="~/Viewproduct.aspx" runat="server">View</asp:HyperLink>
            </form>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="Assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="Assets/js/core/bootstrap.min.js" type="text/javascript"></script>
</asp:Content>

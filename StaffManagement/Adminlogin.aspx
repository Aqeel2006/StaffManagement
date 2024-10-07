<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="StaffManagement.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <%-- This is for to outline around table and make it nice to look--%>
                <div class="card">
                    <div class="card-body">
                       
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="Image/login.png" />

                                </center>
                            </div>
                            </div>
                           
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>

                                </center>
                            </div>
                            </div>
                            <%-- This is for to get line under user login--%>
                        <div class="row">
                            <div class="col">
                                <centre>
                                    <hr>

                                </centre>
                            </div>
                            </div>

                        <div class="row">
                            <div class="col">
                                <label> Username</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtUserId" runat="server" placeholder="Username"></asp:TextBox>


                                 </div>

                                <label> Password </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>

                                <div class="form-group">
                                    <center>
                                    <asp:Button class="btn btn-success" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                        

                                    </center>
                                 </div>
                            </div>
                            </div>


                       

                    </div>



                </div>

            </div>

        </div>

    </div>
</asp:Content>

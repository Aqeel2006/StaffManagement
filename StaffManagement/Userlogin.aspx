﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="StaffManagement.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <%-- This is for to create table and make it centre--%>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <%-- This is for to outline around table and make it nice to look--%>
                <div class="card">
                    <div class="card-body">
                       
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="Image/User%20Login.png" />

                                </center>
                            </div>
                            </div>
                           
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Login</h3>

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
                                <label> User ID </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtUserId" runat="server" placeholder="User ID"></asp:TextBox>


                                 </div>

                                <label> Password </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>

                                <div class="form-group">
                                    <center>
                                    <asp:Button class="btn btn-success" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                        <a href="Adminlogin.aspx"</a>

                                    </center>
                                 </div>
                            </div>
                            </div>


                       

                    </div>



                </div>

            </div>

        </div>

    </div>
    
    </a>
    
</asp:Content>

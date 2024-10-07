<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="AdminAccout.aspx.cs" Inherits="StaffManagement.AdminAccout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
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
                                    <h4>Create Account for Admin</h4>
                                </center>
                            </div>
                        </div>
                           <div class="row">
                            <div class="col">
                                <centre>
                                    <hr>

                                </centre>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-md-6">
                               <label>Username</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                 <label>Fullname</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfullname" runat="server" placeholder="Fullname"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>

                        <div class="row">
                            
                             <div class="col-md-6">
                                 <label>Email</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                 </div>
                               <div class="col-md-4">
                               <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpassword" runat="server" placeholder="Password" TextMode="Password" ReadOnly="False"></asp:TextBox>
                                 </div>
                            </div>
                            </div>

                          <div class="row">
                            <div class="col">
                                 <div class="form-group">
                                     <asp:Button ID="Button1" runat="server" Text="Button" />
           
                            </div>
                                </div>

                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>
        </div>
    
        
</asp:Content>

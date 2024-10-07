<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Adminusercreate.aspx.cs" Inherits="StaffManagement.Adminusercreate" %>
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
                                    <h4>Create User</h4>
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
                               <label> Full Name </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtFullname" runat="server" placeholder="Full Name"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                 <label> Date Of Birth </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtdob" runat="server" placeholder="DD/MM/YYYY" TextMode="Date"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label> Contact No </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtcontactno" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                 <label>Email</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label> First Line of Address</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtfirstlineaddress" runat="server" placeholder="First Line Address" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-4">
                               <label> Second Line of Address</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtsecondadress" runat="server" placeholder="Secode Line Address" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-4">
                               <label> Postcode</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpostcode" runat="server" placeholder="Postcode" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                            </div>

                            </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label> User ID</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtuserid" runat="server" placeholder="User ID" TextMode="SingleLine" ReadOnly="False"></asp:TextBox>

                                 </div>
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
                                <center>
                                 <div class="form-group">
                                     <asp:Button class="btn btn-success" ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click"/>
                                     

                                     
                                     
                                 </div>
                                </center>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>

    

</asp:Content>

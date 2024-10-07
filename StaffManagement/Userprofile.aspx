<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="StaffManagement.Userprofile" %>
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

                                    <img width="150px" src="Image/login.png" />

                            </div>
                                
                            </div>
                           
                        <div class="row">
                            <div class="col">
                                <centre>
                                    <h4>User Profile</h4>
                                    <span> Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="#"></asp:Label>

                                </centre>
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
                           <div class="input-group">
                               <div class="col-md-4">
                               <label> User ID</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtuserid" runat="server" placeholder="User ID" TextMode="SingleLine" ReadOnly="false"></asp:TextBox>
                                 </div>

                                   <div class="col-md-4">
                                       <asp:Button class="btn btn-primary mr-1" ID="Btngo" runat="server" Text="Search" OnClick="Btngo_Click" />

                                   </div>


                            </div>

                           </div> 

                        </div>

                        <div class="row">
                            
                            <div class="col-md-6">
                               <label> Full Name </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfullname" runat="server" placeholder="Full Name" ReadOnly="True" ></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                 <label> Date Of Birth </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtdob" runat="server" placeholder="DD/MM/YYYY" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label> Contact No </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtcontactno" runat="server" placeholder="Contact No" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                 <label>Email</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="Email" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label> First Line of Address</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtfirstaddress" runat="server" placeholder="First Line Address" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-4">
                               <label> Second Line of Address</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtsecondlineaddress" runat="server" placeholder="Secode Line Address" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-4">
                               <label> Postcode</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpostcode" runat="server" placeholder="Postcode" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                            </div>

                        <div class="row">
                            

                            <div class="col-md-4">
                               <label>Old Password</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpasswordold" runat="server" placeholder="Old Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-4">
                               <label>New Password</label>
                                 <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>
                            </div>

                            </div>

                          <div class="row">
                            <div class="col">
                                <center>
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary  btn-lg" ID="btnUpdate" runat="server" Text="Update" OnClick="Button1_Click" />
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

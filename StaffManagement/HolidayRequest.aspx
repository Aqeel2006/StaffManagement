<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="HolidayRequest.aspx.cs" Inherits="StaffManagement.HolidayRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-md-8 mx-auto">
                <%-- This is for to outline around table and make it nice to look--%>
                <div class="card">
                    <div class="card-body">
                       
                        <div class="row">
                            
                            <div class="col">
                                <center>

                                    <img width="150px" src="Image/calendar.png" />
                                    </center>

                            </div>
                                
                            </div>
                           
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Holiday Request</h4> 

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
                            <div class="col-md-4">
                               <label> User ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox CssClass="form-control" ID="txtUserID" runat="server" placeholder="User ID"></asp:TextBox>
                                     <asp:Button class="btn btn-primary" ID="btngo" runat="server" Text="Go" OnClick="btngo_Click" /> 
                                 </div>
                                     </div>
                            </div>

                             <div class="col-md-4">
                                 <label> Full Name</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfullname" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                 </div>
                               
                            </div>
                            <div class="col-md-4">
                                 <label>DOB</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" placeholder="DOB" ReadOnly="True" TextMode="Date"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label> Contact No </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtcontactno" runat="server" placeholder="Contact No" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-4">
                                 <label>Email</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="Email" TextMode="Email" ReadOnly="True"></asp:TextBox>
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
                               <label> Request Date </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtstartdate" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-4">
                                 <label>End Date</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtenddate" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                 </div>
                                 </div>

                                 <div class="col-md-4">
                               
                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-lg btn-block" ID="btnRequest" runat="server" Text="Request" OnClick="btnRequest_Click" /> 
                                 </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    
                             
                       

                        
                   
</asp:Content>

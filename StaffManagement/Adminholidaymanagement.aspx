<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Adminholidaymanagement.aspx.cs" Inherits="StaffManagement.Adminholidaymanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <%-- This is for to outline around table and make it nice to look--%>
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Holiday Approval</h4>

                                </center>
                            </div>
                            </div>
                       
                        <div class="row">
                            
                            <div class="col">
                                <center>

                                    <img width="150px" src="Image/login.png" />
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
                               <label> User ID </label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox CssClass="form-control" ID="txtuserid" runat="server" placeholder="ID"></asp:TextBox>
                                     <asp:Button class="btn btn-primary" ID="btngo" runat="server" Text="Go" OnClick="Button2_Click" /> 

                                 </div>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                 <label>Full Name </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfullname" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox>
                                 </div>
                               
                            </div>
                            </div>

                         <div class="row">   
                        <div class="col-md-7">
                            <label>Account Status</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="txtaccounts" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                    <asp:LinkButton class="btn btn-success mr-1" ID="LinkButtonA" runat="server" OnClick="LinkButtonA_Click"><i class="fas fa-check-circle"> </i> </asp:LinkButton>
                                    <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButtonD" runat="server" OnClick="LinkButtonD_Click"><i class="fas fa-times-circle"> </i> </asp:LinkButton>

                                </div>
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
                             <div class="col-md-6">
                                 <label>Start Date</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtstartdate" runat="server" placeholder="Start Date" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-6">
                                 <label>End Date</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtenddate" runat="server" placeholder="End Date" TextMode="Date" Readonly="True"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>
                    

                          
                        </div>
                    </div>
                </div>

            <div class="col-md-7">
                <%-- This is for to outline around table and make it nice to look--%>
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Holiday Management</h4>

                                </center>
                            </div>
                            </div>

                        <div class="row">
                            <div class="col">
                                <hr>

                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSourceHoliday" runat="server" ConnectionString="<%$ ConnectionStrings:SmanagementConnectionString %>" SelectCommand="SELECT * FROM [tbl_holiday] ORDER BY [start_date], [end_date] DESC"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="gdHoliday" runat="server" AutoGenerateColumns="False" DataKeyNames="holiday_id" DataSourceID="SqlDataSourceHoliday">
                                    <Columns>
                                        <asp:BoundField DataField="user_id" HeaderText="ID" SortExpression="user_id" />
                                        <asp:BoundField DataField="fullname" HeaderText="Name" SortExpression="fullname" />
                                        <asp:BoundField DataField="accountstatus" HeaderText="Status" SortExpression="accountstatus" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="start_date" HeaderText="Start Date" SortExpression="start_date" />
                                        <asp:BoundField DataField="end_date" HeaderText="End Date" SortExpression="end_date" />
                                    </Columns>
                                </asp:GridView>

                            </div>

                        </div>
                        



                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    
    
                       



                       



</asp:Content>

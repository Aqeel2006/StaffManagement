<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Adminmanagement.aspx.cs" Inherits="StaffManagement.Adminmanagement" %>
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
                                    <h4>Admin Management</h4>

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
                                     <asp:TextBox CssClass="form-control" ID="txtgo" runat="server" placeholder="ID"></asp:TextBox>
                                     <asp:Button class="btn btn-primary mr-1" ID="btnGo" runat="server" Text="Go" OnClick="Button2_Click" /> 

                                 </div>
                                 </div>
                            </div>


                             <div class="col-md-8">
                                 <label>Full Name </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfullname" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox>
                                 </div>
                               
                            </div>
                            <div class="col-md-6">
                               <label></label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtemail" runat="server" placeholder="email" TextMode="email" Visible="False"></asp:TextBox>
                                 </div>
                            </div>

                            </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Week Start Date</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtdate" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-6">
                            <label>End Date:</label>
                        <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="txtEndDate" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                        </div>
                        </div>




                            </div>

                              <div class="row">
                                  <div class="col-md-4">
                               <label>Thursday</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtThurday" runat="server" placeholder="ThurdayDate" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>


                             <div class="col-md-4">
                                 <label>Start Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtthurdaystarttime" runat="server" placeholder="Start Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-4">
                                 <label>End Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtthursdayendtime" runat="server" placeholder="End Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>
                        <div class="row">
                                  <div class="col-md-4">
                               <label>Friday</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtfriday" runat="server" placeholder="ThurdayDate" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>


                             <div class="col-md-4">
                                 <label>Start Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfridaystarttime" runat="server" placeholder="Start Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-4">
                                 <label>End Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfridayendtime" runat="server" placeholder="End Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>
                        <div class="row">
                                  <div class="col-md-4">
                               <label>Saturday</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtSaturday" runat="server" placeholder="ThurdayDate" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>


                             <div class="col-md-4">
                                 <label>Start Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtsaturdaystarttime" runat="server" placeholder="Start Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-4">
                                 <label>End Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtsaturdayendtime" runat="server" placeholder="End Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>

                        <div class="row">
                                  <div class="col-md-4">
                               <label>Sunday</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtsunday" runat="server" placeholder="ThurdayDate" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>


                             <div class="col-md-4">
                                 <label>Start Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtsundaystarttime" runat="server" placeholder="Start Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-4">
                                 <label>End Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtsundayendtime" runat="server" placeholder="End Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>
                        <div class="row">
                                  <div class="col-md-4">
                               <label>Monday</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtmonday" runat="server" placeholder="ThurdayDate" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>


                             <div class="col-md-4">
                                 <label>Start Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtmondaystarttime" runat="server" placeholder="Start Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-4">
                                 <label>End Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtmondayendtime" runat="server" placeholder="End Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>
                        <div class="row">
                                  <div class="col-md-4">
                               <label>Tuesday</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txttuesday" runat="server" placeholder="ThurdayDate" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>


                             <div class="col-md-4">
                                 <label>Start Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txttuesdaystarttime" runat="server" placeholder="Start Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-4">
                                 <label>End Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txttuesdayendtime" runat="server" placeholder="End Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>
                        <div class="row">
                                  <div class="col-md-4">
                               <label>Wednesday</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="txtwednesday" runat="server" placeholder="ThurdayDate" TextMode="Date"></asp:TextBox>
                                 </div>
                            </div>


                             <div class="col-md-4">
                                 <label>Start Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtwednesdaystarttime" runat="server" placeholder="Start Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            <div class="col-md-4">
                                 <label>End Time</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtwednesdayendtime" runat="server" placeholder="End Time" TextMode="Time"></asp:TextBox>
                                 </div>
                               
                            </div>

                            </div>


                        <div class="row">
                            <div class="col-md-6">
                               <label>Role</label>
                            
                            &nbsp;<div class="form-group">
                                     <asp:DropDownList  class="form-control" ID="DropDownList1" runat="server">

                                         <asp:ListItem Text="Sorting" Value="Sorting" />
                                         <asp:ListItem Text="Despatch" Value="Despatch" />
                                         <asp:ListItem Text="Office" Value="Office" />
                                         <asp:ListItem Text="Intake" Value="Intake" />
                                         <asp:ListItem Text="Quality Check" Value="Quality Check" />
                                         <asp:ListItem Text="Second In Charger" Value="Second In Charger" />
                                         <asp:ListItem Text="Onsite Manager" Value="On Manager" />
                                         </asp:DropDownList>
                            </div>
                                </div>

                            <div class="col-md-6">
                               <label>Location</label>
                                 <div class="form-group">
                                     <asp:DropDownList  class="form-control" ID="DropDownList2" runat="server">

                                         <asp:ListItem Text="Leciester-Glenfield" Value="Leciester-Glenfield" />
                                         <asp:ListItem Text="Leicester-Hinckley" Value="Leicester-Hinckley" />
                                         <asp:ListItem Text="London-East" Value="London-East" />
                                         <asp:ListItem Text="Leicester-CityCenter" Value="Leicester-CityCenter" />
                                         <asp:ListItem Text="Birmingham-Lime" Value="Birmingham-Lime" />
                                         <asp:ListItem Text="Coventry-Burbage" Value="Coventry-Burbage" />
                                        
                                         </asp:DropDownList>
                            </div>
                                </div>
                            </div>
                            
                        <div class="row">
                            <div class="col-md-10">
                               <label></label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     
                                     <asp:TextBox CssClass="form-control" ID="txtUpdate" runat="server" placeholder="Insert Shift Id only want to update and delete" OnTextChanged="txtUpdate_TextChanged"></asp:TextBox>
                                     <asp:Button class="btn btn-primary mr-1" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                                         

                                 </div>
                                 </div>
                            </div>
                            
                            </div>

                           
                            

               

                       

                           
                          <div class="row">
                              
                              
                            <div class="col-md-3">
                                     <asp:Button class="btn btn-success btn-lg btn-block" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                                 </div>
                              <div class="col-md-5">
                                     <asp:Button class="btn btn-warning  btn-lg btn-block" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                 </div>
                              <div class="col-md-4">
                                     <asp:Button class="btn btn-danger  btn-lg btn-block" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
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
                                    <h4>Admin Management</h4>

                                </center>
                            </div>
                            </div>

                        <div class="row">
                            <div class="col">
                                <hr>

                            </div>
                        </div>
                        <div class="row">

                            <asp:SqlDataSource ID="SqlDataSourceViewShift" runat="server" ConnectionString="<%$ ConnectionStrings:SmanagementConnectionString %>" SelectCommand="SELECT * FROM [tbl_shift]"></asp:SqlDataSource>

                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="gdViewshift" runat="server" DataSourceID="SqlDataSourceViewShift" AutoGenerateColumns="False" DataKeyNames="shift_id">
                                    <Columns>
                                        
                                        

                                        
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Shift ID<asp:Label ID="lblshiftid" runat="server" Text='<%# Eval("shift_id") %>'></asp:Label>
                                                                    |<asp:Label ID="lblhead" runat="server" Text='<%# Eval("fullname") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                    |ID :<asp:Label ID="lbluserid" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("user_id") %>'></asp:Label>
                                                                    &nbsp;| Week Start :<asp:Label ID="lblweekstart" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("week_start", "{0:d}") %>'></asp:Label>
                                                                    &nbsp;| Week End : <asp:Label ID="lblenddate" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("end_date", "{0:d}") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Location

                                                                    <asp:Label ID="lbllocation" runat="server" Font-Bold="True" Font-Size="XX-Large" Text='<%# Eval("location") %>'></asp:Label>
                                                                    &nbsp;| Role &nbsp;
                                                                    <asp:Label ID="lblrole" runat="server" Font-Bold="True" Font-Size="XX-Large" Text='<%# Eval("role") %>'></asp:Label>


                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                     <asp:Label ID="lblThursday_date" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("thursday_date", "{0:D}") %>'></asp:Label>
                                                                     &nbsp;| Thursday   |&nbsp;
                                                                    <asp:Label ID="lblthursdaytime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("thursday_start_time") %>'></asp:Label>
                                                                     &nbsp;Till&nbsp;
                                                                    <asp:Label ID="lblendtime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("thursday_end_time") %>'></asp:Label>


                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    <asp:Label ID="lblfriday_date" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("friday_date", "{0:D}") %>'></asp:Label>
                                                                    &nbsp;| Friday     |
                                                                    <asp:Label ID="lblfridaytime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("friday_start_time") %>'></asp:Label>
                                                                    &nbsp;| Till&nbsp;
                                                                    <asp:Label ID="lblfridayendtime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("friday_end_time") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    <asp:Label ID="lblsaturday_date" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("saturday_date", "{0:D}") %>'></asp:Label>
                                                                    &nbsp;| Saturday    |
                                                                    <asp:Label ID="lblsaturdaytime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("saturday_start_time") %>'></asp:Label>
                                                                    &nbsp;| Till&nbsp;
                                                                    <asp:Label ID="lblsaturdayendtime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("saturday_end_time") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    <asp:Label ID="lblSunday_date" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("sunday_date", "{0:D}") %>'></asp:Label>
                                                                    &nbsp;| Sunday     |
                                                                    <asp:Label ID="lblsundaytime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("sunday_start_time") %>'></asp:Label>
                                                                    &nbsp;| Till&nbsp;
                                                                    <asp:Label ID="lblsundayendtime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("sunday_end_time") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    <asp:Label ID="lblMonday_date" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("monday_date", "{0:D}") %>'></asp:Label>
                                                                    &nbsp;| Monday |
                                                                    <asp:Label ID="lblMondaytime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("monday_start_time") %>'></asp:Label>
                                                                    &nbsp;| Till&nbsp;
                                                                    <asp:Label ID="lblmondayendtime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("monday_end_time") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    <asp:Label ID="lblTuesday_date" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("tuesday_date", "{0:D}") %>'></asp:Label>
                                                                    &nbsp;| Tuesday |
                                                                    <asp:Label ID="lbltuesdaytime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("tuesday_start_time") %>'></asp:Label>
                                                                    &nbsp;| Till&nbsp;
                                                                    <asp:Label ID="lbltuesdayendtime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("tuesday_end_time") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                                <div class="row">
                                                                <div class="col-12">

                                                                    <asp:Label ID="lblWednesday_date" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("wednesday_date", "{0:D}") %>'></asp:Label>
                                                                    &nbsp;| Wednesday |
                                                                    <asp:Label ID="lblwednesdaytime" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("wednesday_start_time") %>'></asp:Label>
                                                                    &nbsp;| Till&nbsp;
                                                                    <asp:Label ID="lblwednesdayend_time" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("wednesday_end_time") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

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

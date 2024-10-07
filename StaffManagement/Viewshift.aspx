<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Viewshift.aspx.cs" Inherits="StaffManagement.Viewshift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <div class="col-md-12">
                <%-- This is for view shift data table--%>
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>View Shift</h4>

                                </center>
                            </div>
                            </div>

                        <div class="row">
                            <div class="col">
                                <hr>

                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSourceusershift" runat="server" ConnectionString="<%$ ConnectionStrings:SmanagementConnectionString %>" SelectCommand="SELECT * FROM [tbl_shift]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="shift_id" DataSourceID="SqlDataSourceusershift">
                                    <Columns>
                                        
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    |<asp:Label ID="lblhead" runat="server" Text='<%# Eval("fullname") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                    |ID :<asp:Label ID="lbluserid" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("user_id") %>'></asp:Label>
                                                                    &nbsp;| Week Start :<asp:Label ID="lblweekstart" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("week_start", "{0:D}") %>'></asp:Label>
                                                                    &nbsp;| Week End : <asp:Label ID="lblenddate" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("end_date", "{0:D}") %>'></asp:Label>
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
</asp:Content>

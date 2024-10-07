<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="AdminViewMember.aspx.cs" Inherits="StaffManagement.AdminViewMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    //I got this from datatable javescript 
   <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                   <center>
                         <h4>View Member</h4>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmanagementConnectionString %>" SelectCommand="SELECT [user_id], [fullname], [date_of_birth], [contact_no], [email], [postcode], [first_line_address], [second_line_address] FROM [tbl_member] ORDER BY [fullname], [user_id]"></asp:SqlDataSource>
            <div class="col">

                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="user_id" HeaderText="ID" ReadOnly="True" SortExpression="user_id" />
                        <asp:BoundField DataField="fullname" HeaderText="Name" SortExpression="fullname" />
                        <asp:BoundField DataField="date_of_birth" HeaderText="Date Of Birth" SortExpression="date_of_birth" />
                        <asp:BoundField DataField="contact_no" HeaderText="Number" SortExpression="contact_no" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="first_line_address" HeaderText="Door No" SortExpression="first_line_address" />
                        <asp:BoundField DataField="second_line_address" HeaderText="Address" SortExpression="second_line_address" />
                        <asp:BoundField DataField="postcode" HeaderText="Postcode" SortExpression="postcode" />
                    </Columns>
                </asp:GridView>
            </div>

        </div>
        </div>
        
                
</asp:Content>

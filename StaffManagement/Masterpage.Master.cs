using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StaffManagement
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

               
                if (Session["role"].Equals(""))
     
                {
                    lbLogin.Visible = true; //user login button
                    lbViewShift.Visible = false; //view shift button
                    lbLogout.Visible = false; // logout button
                    lbHoliday_Approval.Visible = false; //holiday request button
                    lbHello.Visible = false; // greeting message button

                    lbAdminLogin.Visible = true; //admin login button
                    lbManagement.Visible = false; //admin management button
                    lbUserprofile.Visible = false; //admin create user profile button 
                    lbHolidaymanagement.Visible = false; //admin manage holiday request 
                    lbView.Visible = false; // admin view member details 

                }

                else if (Session["role"].Equals("member"))
                {
                    lbLogin.Visible = false; //user login button
                    lbViewShift.Visible = true; //view shift button
                    lbLogout.Visible = true; // logout button
                    lbHoliday_Approval.Visible = true; //holiday request button
                    lbHello.Visible = true; // greeting message button
                    lbHello.Text = "Hello " + Session["username"].ToString();

                    lbAdminLogin.Visible = true; //admin login button
                    lbManagement.Visible = false; //admin management button
                    lbUserprofile.Visible = false; //admin create user profile button 
                    lbHolidaymanagement.Visible = false; //admin manage holiday request 
                    lbView.Visible = false; // admin view member details 
                }

                else if (Session["role"].Equals("Admin"))
                {
                    lbLogin.Visible = false; //user login button
                    lbViewShift.Visible = false; //view shift button
                    lbLogout.Visible = true; // logout button
                    lbHoliday_Approval.Visible = false; //holiday request button
                    lbHello.Visible = true; // greeting message button
                    lbHello.Text = "Hello " + Session["username"].ToString();

                    lbAdminLogin.Visible = false; //admin login button
                    lbManagement.Visible = true; //admin management button
                    lbUserprofile.Visible = true; //admin create user profile button 
                    lbHolidaymanagement.Visible = true; //admin manage holiday request 
                    lbView.Visible = true; // admin view member details 
                }
            }
            catch (Exception ex)
            {

            }


        }

        protected void lbAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void lbManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminmanagement.aspx");
        }

        protected void lbHolidaymanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminholidaymanagement.aspx");
        }

        protected void lbViewShift_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewShift.aspx");
        }

        protected void lbHoliday_Approval_Click(object sender, EventArgs e)
        {
            Response.Redirect("HolidayRequest.aspx");
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";

            lbLogin.Visible = true; //user login button
            lbViewShift.Visible = false; //view shift button
            lbLogout.Visible = false; // logout button
            lbHoliday_Approval.Visible = false; //holiday request button
            lbHello.Visible = false; // greeting message button

            lbAdminLogin.Visible = true; //admin login button
            lbManagement.Visible = false; //admin management button
            lbUserprofile.Visible = false; //admin create user profile button 
            lbHolidaymanagement.Visible = false; //admin manage holiday request 
            lbView.Visible = false; // admin view member details 


            Response.Redirect("Homepage.aspx");
        }

        protected void lbHello_Click(object sender, EventArgs e)
        {

        }

        protected void lbUserprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminusercreate.aspx");
        }

        protected void lbView_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewMember.aspx");
        }
    }
}

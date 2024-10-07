using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StaffManagement
{
    public partial class Adminusercreate : System.Web.UI.Page
    {
        //strcon will hold value of connectionstrings
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        //button event 
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            if (checkUserExits())
            {
                Response.Write("<script>alert('User already exits');</script>");
            }

            else
            {
                createNewUser();

            }
            
        }

        //clear 
        void clear()
        {
            txtcontactno.Text = "";
            txtdob.Text = "";
            txtemail.Text = "";
            txtfirstlineaddress.Text = "";
            txtFullname.Text = "";
            txtpassword.Text = "";
            txtpostcode.Text = "";
            txtsecondadress.Text = "";
            txtuserid.Text = "";

        }
        //this to check is user exits 
         bool checkUserExits()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //to check is user id exits from user id table
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_member where user_id='"+txtuserid.Text.Trim()+"';", con);
                
                //to cmd command to sql 
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                //need to create a datatable inside #c app, which is similar to management studio 
                DataTable dt = new DataTable();
                //storing all the record from user_id on datatable table 
                da.Fill(dt);

                //to check if we got any records or not 
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }



        //user defined method
        void createNewUser()
        {

            //Response.Write("<script>alert('testing');</script>");

            try

            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_member (fullname,date_of_birth,contact_no,email,postcode,first_line_address,second_line_address,user_id,password) values (@fullname,@date_of_birth,@contact_no,@email,@postcode,@first_line_address,@second_line_address,@user_id,@password)", con);

                cmd.Parameters.AddWithValue("@fullname", txtFullname.Text.Trim());
                cmd.Parameters.AddWithValue("@date_of_birth", txtdob.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", txtcontactno.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@postcode", txtpostcode.Text.Trim());
                cmd.Parameters.AddWithValue("@first_line_address", txtfirstlineaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@second_line_address", txtsecondadress.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", txtuserid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                // Send email to user
                string toEmail = txtemail.Text.Trim();
                string subject = "Account Created for Staff Management";
                string body = "Dear " + txtFullname.Text.Trim() + ",<br/><br/>Your account has been created successfully. Your login details are as follows: Please reset your password after you login by going to your User profile<br/><br/>Username: " + txtuserid.Text.Trim() + "<br/>Password: " + txtpassword.Text.Trim() + "<br/><br/>Thank you.";
                
                //connect with your email SMTP
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("mohamedazwan812@gmail.com");
                mail.To.Add(toEmail);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.Port = 587; //or 465 for SSL
                smtp.Credentials = new NetworkCredential("mohamedazwan812@gmail.com", "ejdghmasznghopmo");
                smtp.EnableSsl = true;

                smtp.Send(mail);

                Response.Write("<script>alert('User Account has been created sucessfully and Username and password send to User email');</script>");
                clear();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
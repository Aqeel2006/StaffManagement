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
    public partial class Adminholidaymanagement : System.Web.UI.Page
    {
        //strcon will hold value of connectionstrings
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            gdHoliday.DataBind();
        }

        //button go 
        protected void Button2_Click(object sender, EventArgs e)
        {

            getbyuserid();

        }

      
    


        //user defined funcation
        void getbyuserid()
        {
            try
            {

                // Connect to the database
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_holiday where user_id = '" + txtuserid.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();

                //to get one record and rule applied 
                if (dr.HasRows)
                {
                    while (dr.Read())

                    {


                        txtfullname.Text = dr.GetValue(2).ToString();
                        txtcontactno.Text = dr.GetValue(4).ToString();
                        txtemail.Text = dr.GetValue(5).ToString();
                        txtstartdate.Text = ((DateTime)dr["start_date"]).ToString("yyyy-MM-dd");
                        txtenddate.Text = ((DateTime)dr["end_date"]).ToString("yyyy-MM-dd");
                        txtaccounts.Text = dr.GetValue(9).ToString();


                    }

                }

                else
                {
                    Response.Write("<script>alert('Invalid entry');</script>");
                    
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        
        void updateaccount(string status)
        {
            try
            {

                // Connect to the database
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE tbl_holiday SET accountstatus = '" + status + "' WHERE user_id= '" + txtuserid.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                gdHoliday.DataBind();
                Response.Write("<script>alert('Requested Status has been Updated now');</script>");
                Response.Clear();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void LinkButtonA_Click(object sender, EventArgs e)
        {
            updateaccount("Approved");


            // Send email to user
            string toEmail = txtemail.Text.Trim();
            string subject = "Holiday";
            string body = "Dear " + txtfullname.Text.Trim() + ",<br/><br/>Hi There your Holiday has been Approved have a nice one:<br/><br/> " + txtaccounts + "<br/>From: " +txtstartdate.Text.Trim() + "<br/>Till: " + txtenddate.Text.Trim() + "<br/><br/>Thank you.";

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
            Response.Clear();
        }

        protected void LinkButtonD_Click(object sender, EventArgs e)
        {
            updateaccount("Declined");

            // Send email to user
            string toEmail = txtemail.Text.Trim();
            string subject = "Holiday";
            string body = "Dear " + txtfullname.Text.Trim() + ",<br/><br/>Hi There you please see your holiday request below, if any issuse please speak to your manager<br/><br/>Holiday:Has been Declined " + txtaccounts + "<br/><br/>From: " + txtstartdate.Text.Trim() + "<br/>Till: " + txtenddate.Text.Trim() + "<br/><br/>Thank you.";

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

            Response.Clear();
        }

        
    }
}

    

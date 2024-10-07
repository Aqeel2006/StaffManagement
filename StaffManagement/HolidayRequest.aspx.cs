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
    public partial class HolidayRequest : System.Web.UI.Page
    {
        //strcon will be holding the local database and connect.
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRequest_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing');</script>");  
            Add();
        }

        void Add()
        {

            try

            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // convert the string input to a DateTime object
                // Convert the date strings to DateTime objects
                //DateTime dateOfBirth = DateTime.Parse(txtDOB.Text.Trim());
                //DateTime startDate = DateTime.Parse(txtstartdate.Text.Trim());
                //DateTime endDate = DateTime.Parse(txtenddate.Text.Trim());

                {

                    SqlCommand cmd = new SqlCommand("INSERT INTO tbl_holiday (user_id,fullname,date_of_birth,contact_no,email,postcode,start_date,end_date,accountstatus) values (@user_id,@fullname,@date_of_birth,@contact_no,@email,@postcode,@start_date,@end_date,@accountstatus)", con);

                    cmd.Parameters.AddWithValue("user_id", txtUserID.Text.Trim());
                    cmd.Parameters.AddWithValue("@fullname", txtfullname.Text.Trim());
                    cmd.Parameters.AddWithValue("@date_of_birth", txtDOB.Text.Trim());
                    cmd.Parameters.AddWithValue("@contact_no", txtcontactno.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@postcode", txtpostcode.Text.Trim());
                    cmd.Parameters.AddWithValue("@start_date", txtstartdate.Text.Trim());
                    cmd.Parameters.AddWithValue("@end_date", txtenddate.Text.Trim());
                    cmd.Parameters.AddWithValue("@accountstatus", "pending");

                    // Send email to user
                    string toEmail = txtemail.Text.Trim();
                    string subject = "Account Created for Staff Management";
                    string body = "Dear " + txtfullname.Text.Trim() + ",<br/><br/>Hi, Your holiday has been sumbit, please allow two weeks time for your request, if any issues please speak to your manager<br/><br/>Thank you.";

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


                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Your Holiday Requested has been Submit Sucessfully');</script>");

                    clear();
                    //GridView_ViewShift.DataBind();

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        //button go
        protected void btngo_Click(object sender, EventArgs e)
        {
            getbyuserid();
        }

        void clear()
        {
            txtcontactno.Text = "";
            txtDOB.Text = "";
            txtemail.Text = "";
            txtenddate.Text = "";
            txtfullname.Text = "";
            txtpostcode.Text = "";
            txtstartdate.Text = "";
            txtUserID.Text = "";
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

                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_member where user_id = '" + txtUserID.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();

                //to get one record and rule applied 
                if (dr.HasRows)
                {
                    while (dr.Read())

                    {


                        txtfullname.Text = dr.GetValue(1).ToString();
                        txtDOB.Text = ((DateTime)dr["date_of_birth"]).ToString("yyyy-MM-dd");
                        txtcontactno.Text = dr.GetValue(3).ToString();
                        txtemail.Text = dr.GetValue(4).ToString();
                        txtpostcode.Text = dr.GetValue(5).ToString();




                    }

                }

                else
                {
                    Response.Write("<script>alert('Invaild User');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }




        }
    }
}

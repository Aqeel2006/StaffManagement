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
    public partial class Adminmanagement : System.Web.UI.Page
    {
        //strcon will hold value of connectionstrings
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //every time data refresh the database will refresh also 
            gdViewshift.DataBind();
        }
        //User defined function

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            {
                AddShift();
            }


        }

        void AddShift()
        {

            try

            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // convert the string input to a DateTime object
                if (DateTime.TryParse(txtdate.Text.Trim(), out DateTime date))

                {

                    SqlCommand cmd = new SqlCommand("INSERT INTO tbl_shift (fullname,location,role,week_start,end_date,thursday_date,thursday_start_time,thursday_end_time,friday_date,friday_start_time,friday_end_time,saturday_date,saturday_start_time,saturday_end_time,sunday_date,sunday_start_time,sunday_end_time,monday_date,monday_start_time,monday_end_time,tuesday_date,tuesday_start_time,tuesday_end_time,wednesday_date,wednesday_start_time,wednesday_end_time,user_id) " +
                        " values (@fullname,@location,@role,@week_start,@end_date,@thursday_date,@thursday_start_time,@thursday_end_time,@friday_date,@friday_start_time,@friday_end_time,@saturday_date,@saturday_start_time,@saturday_end_time,@sunday_date,@sunday_start_time,@sunday_end_time,@monday_date,@monday_start_time,@monday_end_time,@tuesday_date,@tuesday_start_time,@tuesday_end_time,@wednesday_date,@wednesday_start_time,@wednesday_end_time,@user_id)", con);

                    cmd.Parameters.AddWithValue("@fullname", txtfullname.Text.Trim());
                    cmd.Parameters.AddWithValue("@week_start", txtdate.Text.Trim());
                    cmd.Parameters.AddWithValue("@end_date", txtEndDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@location", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@role", DropDownList1.SelectedItem.Value);

                    cmd.Parameters.AddWithValue("@thursday_date", txtThurday.Text.Trim());
                    cmd.Parameters.AddWithValue("@thursday_start_time", txtthurdaystarttime.Text.Trim());
                    cmd.Parameters.AddWithValue("@thursday_end_time", txtthursdayendtime.Text.Trim());
                    cmd.Parameters.AddWithValue("@friday_date", txtfriday.Text.Trim());
                    cmd.Parameters.AddWithValue("@friday_start_time", txtfridaystarttime.Text.Trim());
                    cmd.Parameters.AddWithValue("@friday_end_time", txtfridayendtime.Text.Trim());
                    cmd.Parameters.AddWithValue("@saturday_date", txtSaturday.Text.Trim());
                    cmd.Parameters.AddWithValue("@saturday_start_time", txtsaturdaystarttime.Text.Trim());
                    cmd.Parameters.AddWithValue("@saturday_end_time", txtsaturdayendtime.Text.Trim());
                    cmd.Parameters.AddWithValue("@sunday_date", txtsunday.Text.Trim());
                    cmd.Parameters.AddWithValue("@sunday_start_time", txtsundaystarttime.Text.Trim());
                    cmd.Parameters.AddWithValue("@sunday_end_time", txtsundayendtime.Text.Trim());
                    cmd.Parameters.AddWithValue("@monday_date", txtmonday.Text.Trim());
                    cmd.Parameters.AddWithValue("@monday_start_time", txtmondaystarttime.Text.Trim());
                    cmd.Parameters.AddWithValue("@monday_end_time", txtmondayendtime.Text.Trim());
                    cmd.Parameters.AddWithValue("@tuesday_date", txttuesday.Text.Trim());
                    cmd.Parameters.AddWithValue("@tuesday_start_time", txttuesdaystarttime.Text.Trim());
                    cmd.Parameters.AddWithValue("@tuesday_end_time", txttuesdayendtime.Text.Trim());
                    cmd.Parameters.AddWithValue("@wednesday_date", txtwednesday.Text.Trim());
                    cmd.Parameters.AddWithValue("@wednesday_start_time", txtwednesdaystarttime.Text.Trim());
                    cmd.Parameters.AddWithValue("@wednesday_end_time", txtwednesdayendtime.Text.Trim());
                    cmd.Parameters.AddWithValue("@user_id", txtgo.Text.Trim());


                    // Send email to user
                    string toEmail = txtemail.Text.Trim();
                    string subject = "Account Created for Staff Management";
                    string body = "Dear " + txtfullname.Text.Trim() + ",<br/><br/>Hi, Your Rota has been created, please login into account see the plan, if any issues please speak to your manager<br/><br/>Thank you.";

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

                    Response.Write("<script>alert('Sucessful add to database');</script>");
                    clear();
                    gdViewshift.DataBind();

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //update event 
        void updates()
        {
            try

            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(" UPDATE tbl_shift SET location = @location,role = @role, thursday_start_time=@thursday_start_time,thursday_end_time = @thursday_end_time,friday_start_time=@friday_start_time,friday_end_time=@friday_end_time,saturday_start_time=@saturday_start_time,saturday_end_time=@saturday_end_time,sunday_start_time=@sunday_start_time,sunday_end_time=@sunday_end_time,monday_start_time=@monday_start_time,monday_end_time=@monday_end_time,tuesday_start_time=@tuesday_start_time,tuesday_end_time=@tuesday_end_time,wednesday_start_time=@wednesday_start_time,wednesday_end_time=@wednesday_end_time WHERE shift_id = '" + txtUpdate.Text.Trim() + "'", con);


                cmd.Parameters.AddWithValue("@location", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@role", DropDownList1.SelectedItem.Value);

                cmd.Parameters.AddWithValue("@thursday_start_time", txtthurdaystarttime.Text.Trim());
                cmd.Parameters.AddWithValue("@thursday_end_time", txtthursdayendtime.Text.Trim());

                cmd.Parameters.AddWithValue("@friday_start_time", txtfridaystarttime.Text.Trim());
                cmd.Parameters.AddWithValue("@friday_end_time", txtfridayendtime.Text.Trim());

                cmd.Parameters.AddWithValue("@saturday_start_time", txtsaturdaystarttime.Text.Trim());
                cmd.Parameters.AddWithValue("@saturday_end_time", txtsaturdayendtime.Text.Trim());

                cmd.Parameters.AddWithValue("@sunday_start_time", txtsundaystarttime.Text.Trim());
                cmd.Parameters.AddWithValue("@sunday_end_time", txtsundayendtime.Text.Trim());

                cmd.Parameters.AddWithValue("@monday_start_time", txtmondaystarttime.Text.Trim());
                cmd.Parameters.AddWithValue("@monday_end_time", txtmondayendtime.Text.Trim());

                cmd.Parameters.AddWithValue("@tuesday_start_time", txttuesdaystarttime.Text.Trim());
                cmd.Parameters.AddWithValue("@tuesday_end_time", txttuesdayendtime.Text.Trim());

                cmd.Parameters.AddWithValue("@wednesday_start_time", txtwednesdaystarttime.Text.Trim());
                cmd.Parameters.AddWithValue("@wednesday_end_time", txtwednesdayendtime.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sucessful Updated to database');</script>");
                clear();
                gdViewshift.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            {
                updates();
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            {
                delete();
            }
        }

        //detele 
        void delete()
        {
            try

            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(" DELETE FROM tbl_shift WHERE shift_id = '" + txtUpdate.Text.Trim() + "'", con);

                //SqlCommand cmd = new SqlCommand(" DELETE FROM tbl_shift WHERE shift_id = @shift_id", con);
                //cmd.Parameters.AddWithValue("@shift_id", txtUpdate.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sucessful Deleted');</script>");
                clear();
                //to get real time updated 
                gdViewshift.DataBind();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        //go button
        protected void Button2_Click(object sender, EventArgs e) ////Go search button
        {
            // Get the user ID from the search box
            string userId = txtgo.Text.Trim();

            // Connect to the database
            using (SqlConnection con = new SqlConnection(strcon))
            {
                // Define the SQL query to retrieve the user's full name
                string query = "SELECT fullname,email FROM tbl_member WHERE user_id = @user_id";

                // Create a new SQL command
                SqlCommand cmd = new SqlCommand(query, con);

                // Add a parameter to the command
                cmd.Parameters.AddWithValue("@user_id", userId);

                // Open the database connection
                con.Open();

                // Execute the command and retrieve the full name
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // Display the full name on the user page
                    txtfullname.Text = reader["fullname"].ToString();
                    txtemail.Text = reader["email"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('User Not Found');</script>");
                    // Display an error message if the user is not found
                    //txtfullname.Text = "User not found";


                }

                // Close the database connection
                con.Close();
            }
        }


        protected void txtUpdate_TextChanged(object sender, EventArgs e)
        {

        }


        // using this for clear or refresh
        void clear()
        {
            txtgo.Text = "";
            txtfullname.Text = "";
            DropDownList2.SelectedValue = "";
            DropDownList1.SelectedValue = "";
            txtUpdate.Text = "";
            txtThurday.Text = "";
            txtfriday.Text = "";
            txtSaturday.Text = "";
            txtsunday.Text = "";
            txtSaturday.Text = "";
            txtmonday.Text = "";
            txttuesday.Text = "";
            txtwednesday.Text = "";
            txtthurdaystarttime.Text = "";
            txtfridaystarttime.Text = "";
            txtsaturdaystarttime.Text = "";
            txtsundaystarttime.Text = "";
            txtmondaystarttime.Text = "";
            txttuesdaystarttime.Text = "";
            txtwednesdaystarttime.Text = "";
            txtthursdayendtime.Text = "";
            txtfridayendtime.Text = "";
            txtsaturdayendtime.Text = "";
            txtsundayendtime.Text = "";
            txtmondayendtime.Text = "";
            txttuesdayendtime.Text = "";
            txtwednesdayendtime.Text = "";
            txtemail.Text = "";
            txtdate.Text = "";
            txtEndDate.Text = "";





        }
        //search
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get the user ID from the search box
            string shiftId = txtUpdate.Text.Trim();

            // Connect to the database
            using (SqlConnection con = new SqlConnection(strcon))
            {
                // Define the SQL query to retrieve the user's full name
                string query = "SELECT fullname, location, role, week_start,end_date,thursday_date,thursday_start_time,thursday_end_time,friday_date,friday_start_time,friday_end_time,saturday_date,saturday_start_time,saturday_end_time,sunday_date,sunday_start_time,sunday_end_time,monday_date,monday_start_time,monday_end_time,tuesday_date,tuesday_start_time,tuesday_end_time,wednesday_date,wednesday_start_time,wednesday_end_time FROM tbl_shift WHERE shift_id = @shift_id";

                // Create a new SQL command
                SqlCommand cmd = new SqlCommand(query, con);

                // Add a parameter to the command
                cmd.Parameters.AddWithValue("@shift_id", shiftId);

                // Open the database connection
                con.Open();

                // Execute the command and retrieve the full name
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // Display the full name on the user page
                    txtfullname.Text = reader["fullname"].ToString();
                    DropDownList2.SelectedValue = reader["location"].ToString();
                    DropDownList1.SelectedValue = reader["role"].ToString();
                    txtThurday.Text = ((DateTime)reader["thursday_date"]).ToString("yyyy-MM-dd");
                    txtfriday.Text = ((DateTime)reader["friday_date"]).ToString("yyyy-MM-dd");
                    txtSaturday.Text = ((DateTime)reader["saturday_date"]).ToString("yyyy-MM-dd");
                    txtsunday.Text = ((DateTime)reader["sunday_date"]).ToString("yyyy-MM-dd");
                    txtmonday.Text = ((DateTime)reader["monday_date"]).ToString("yyyy-MM-dd");
                    txttuesday.Text = ((DateTime)reader["tuesday_date"]).ToString("yyyy-MM-dd");
                    txtwednesday.Text = ((DateTime)reader["wednesday_date"]).ToString("yyyy-MM-dd");
                    txtthurdaystarttime.Text = reader["thursday_start_time"].ToString();
                    txtthursdayendtime.Text = reader["thursday_end_time"].ToString();
                    txtfridaystarttime.Text = reader["friday_start_time"].ToString();
                    txtfridayendtime.Text = reader["friday_end_time"].ToString();
                    txtsaturdaystarttime.Text = reader["saturday_start_time"].ToString();
                    txtsaturdayendtime.Text = reader["saturday_end_time"].ToString();
                    txtsundaystarttime.Text = reader["sunday_start_time"].ToString();
                    txtsundayendtime.Text = reader["sunday_end_time"].ToString();
                    txtmondaystarttime.Text = reader["monday_start_time"].ToString();
                    txtmondayendtime.Text = reader["monday_end_time"].ToString();
                    txttuesdaystarttime.Text = reader["tuesday_start_time"].ToString();
                    txttuesdayendtime.Text = reader["tuesday_end_time"].ToString();
                    txtwednesdaystarttime.Text = reader["wednesday_start_time"].ToString();
                    txtwednesdayendtime.Text = reader["wednesday_end_time"].ToString();
                   
                }
                else
                {
                    Response.Write("<script>alert('User Not Found');</script>");

                    // Display an error message if the user is not found
                    //txtfullname.Text = "User not found";


                }


                // Close the database connection
                con.Close();
            }


        }

        protected void gdViewshift_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

       
        
    

    


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
    public partial class Userprofile : System.Web.UI.Page
    { 
        //strcon will hold value of connectionstrings
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btngo_Click(object sender, EventArgs e)
        {
            // Get the user ID from the search box
            string userId = txtuserid.Text.Trim();

            // Connect to the database
            using (SqlConnection con = new SqlConnection(strcon))
            {
                // Define the SQL query to retrieve the user's full name
                string query = "SELECT fullname,email, date_of_birth, contact_no, postcode,first_line_address, second_line_address, password FROM tbl_member WHERE user_id = @user_id";

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
                    txtfirstaddress.Text = reader["first_line_address"].ToString();
                    txtdob.Text = reader["date_of_birth"].ToString();
                    txtcontactno.Text = reader["contact_no"].ToString();
                    txtpassword.Text = reader["password"].ToString();
                    txtsecondlineaddress.Text = reader["second_line_address"].ToString();
                    

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            updates();
        }

        void clear()
        {
            txtemail.Text = ("");
            txtcontactno.Text = ("");
            txtdob.Text = ("");
            txtfirstaddress.Text = ("");
            txtfullname.Text = ("");
            txtpassword.Text = ("");
            txtpasswordold.Text = ("");
            txtpostcode.Text = ("");
            txtsecondlineaddress.Text = ("");
            txtuserid.Text = ("");

        }

        void updates()
        {
            try

            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(" UPDATE tbl_member SET password = @password WHERE shift_id = '" + txtpassword.Text.Trim() + "'", con);


               
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
                


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sucessful Updated to database');</script>");
                clear();
                
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
    }

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
    public partial class Userlogin : System.Web.UI.Page
    {
        //strcon will hold value of connectionstrings
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('User already exits');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //to check is user id and password match and using trim to avoid blank space 
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_member where user_id='"+txtUserId.Text.Trim()+"' AND password = '"+txtPassword.Text.Trim()+"';", con);
                
                //data reader connect with database
               SqlDataReader dr = cmd.ExecuteReader();

                //to get one record and rule applied 
                if(dr.HasRows)
                {
                    while(dr.Read())
                         
                    {
                        //value 0 because user_id is first on database table, when you login is pop up the message with login id
                        //create session varibale to bring message on pop up
                        Response.Write("<script>alert('Login Successful '); </script>");
                        //session variable 
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(1).ToString();
                        Session["role"] = "member";

                        
                    }
                    Response.Redirect("Homepage.aspx"); 

                }

                else
                {
                    Response.Write("<script>alert('Invaild User ');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
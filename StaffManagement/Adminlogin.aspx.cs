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
    public partial class Adminlogin : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_adminlogin where username = '" + txtUserId.Text.Trim() + "' AND password ='" + txtPassword.Text.Trim() + "';", con);
                                
                //data reader connect with database
                SqlDataReader dr = cmd.ExecuteReader();

                //to get one record and rule applied 
                if (dr.HasRows)
                {
                    while (dr.Read())
                    //I put value 1 because user_id is first on database table 
                    {
                        //Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "'); </script>");

                        Session["username"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(2).ToString();
                        Session["role"] = "Admin";
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
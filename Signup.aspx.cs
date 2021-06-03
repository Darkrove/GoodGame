using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoodGame
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if(userName.Text!="" && userEmail.Text!="" && userPassword.Text!="" && userProfile.Text != "")
            {
                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
                {
                    try
                    {
                        connection.Open();
                        SqlCommand sqlCommand = new SqlCommand("INSERT INTO UserTable(UserName, UserEmail, UserPassword, UserPermission, UserLastLogin, UserProfile) VALUES (@uName, @uEmail, @uPassword, @uPermission, @uLastLogin, @uProfile)", connection);
                        sqlCommand.Parameters.AddWithValue("@uName", userName.Text);
                        sqlCommand.Parameters.AddWithValue("@uEmail", userEmail.Text);
                        sqlCommand.Parameters.AddWithValue("@uPassword", userPassword.Text);
                        sqlCommand.Parameters.AddWithValue("@uPermission", "user");
                        sqlCommand.Parameters.AddWithValue("@uLastLogin", DateTime.Now);
                        sqlCommand.Parameters.AddWithValue("@uProfile", userProfile.Text);
                        sqlCommand.ExecuteNonQuery();

                        Msg.Text = "Sign up Successfully!";
                        connection.Close();
                        userName.Text = String.Empty;
                        userEmail.Text = String.Empty;
                        userPassword.Text = String.Empty;
                        userProfile.Text = String.Empty;
                        Response.Redirect("~/Signin.aspx");
                    }
                    catch (Exception ex)
                    {
                        Msg.Attributes.Add("ForeColor", "#33CC33");
                        Msg.Text = "Some Error Occurred!";
                    }
                    finally
                    {
                    
                    }
                }
            }
            else
            {
                Msg.Attributes.Add("ForeColor", "#33CC33");
                Msg.Text = "Please fill all the details!";
            }

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }
    }
}
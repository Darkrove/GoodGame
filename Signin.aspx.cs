using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace GoodGame
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                connection.Open();
                SqlCommand sqlCommand = new SqlCommand("SELECT * FROM UserTable WHERE UserEmail=@Email and UserPassword=@Password",connection);
                sqlCommand.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                sqlCommand.Parameters.AddWithValue("@Password", TextBoxPassword.Text);

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);

                if(dataTable.Rows.Count != 0)
                {
                    if (dataTable.Rows[0]["UserPermission"].ToString().Equals("admin"))
                    {
                        Session["UserName"] = dataTable.Rows[0]["UserName"].ToString();
                        Session["UserId"] = dataTable.Rows[0]["UserId"].ToString();
                        Session["UserProfile"] = dataTable.Rows[0]["UserProfile"].ToString();
                        Response.Redirect("~/Dashboard.aspx");
                    } else
                    {
                        Session["UserName"] = dataTable.Rows[0]["UserName"].ToString();
                        Session["UserId"] = dataTable.Rows[0]["UserId"].ToString();
                        Session["UserProfile"] = dataTable.Rows[0]["UserProfile"].ToString();
                        Response.Redirect("~/Home.aspx");
                    }
                }
                else
                {
                    LabelError.Text = "Invalid Username or Password";
                }

                Clear();
                connection.Close();
            }
        }

        private void Clear()
        {
            TextBoxEmail.Text = String.Empty;
            TextBoxPassword.Text = String.Empty;
            TextBoxEmail.Focus();
        }
    }
}
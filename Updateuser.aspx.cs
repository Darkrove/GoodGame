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
    public partial class Updateuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Value_Binder();
            }
        }

        protected void Value_Binder()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * FROM UserTable WHERE UserId = '" + Request.QueryString["Id"] + "'", connection))
                {
                    try
                    {
                        using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                        {
                            DataTable dataTable = new DataTable();
                            sqlDataAdapter.Fill(dataTable);
                            UserName.Text = dataTable.Rows[0]["UserName"].ToString();
                            UserEmail.Text = dataTable.Rows[0]["UserEmail"].ToString();
                            UserPath.Text = dataTable.Rows[0]["UserProfile"].ToString();
                            UserPermission.SelectedValue = dataTable.Rows[0]["UserPermission"].ToString();
                            UserLastLogin.Text = dataTable.Rows[0]["UserLastLogin"].ToString();
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                try
                {
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand("UPDATE UserTable SET UserName = @uName, UserEmail = @uEmail, UserProfile = @uPath, UserPermission = @uPermission, UserLastLogin = @uLastLogin WHERE UserId = '" + Request.QueryString["id"] + "'", connection);
                    sqlCommand.Parameters.AddWithValue("@uName", UserName.Text);
                    sqlCommand.Parameters.AddWithValue("@uEmail", UserEmail.Text);
                    sqlCommand.Parameters.AddWithValue("@uPath", UserPath.Text);
                    sqlCommand.Parameters.AddWithValue("@uPermission", UserPermission.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@uLastLogin", UserLastLogin.Text);
                    sqlCommand.ExecuteNonQuery();

                    Msg.Text = "User Record Updated Successfully!";
                    connection.Close();
                    UserName.Text = String.Empty;
                    UserEmail.Text = String.Empty;
                    UserLastLogin.Text = String.Empty;
                    UserPath.Text = String.Empty;
                    UserPermission.ClearSelection();
                }
                catch
                {
                    Msg.Text = "Some Error Occurred!";
                }
            }
        }
    }
}
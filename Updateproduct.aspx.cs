using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Threading;


namespace GoodGame
{
    public partial class Updateproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Value_Binder();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                try
                {
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand("UPDATE ProductTable SET ProName = @proName, ProDescription = @proDescription, ProCategory = @proCategory, ProPrice = @proPrice, ProPath = @proPath WHERE ProId = '" + Request.QueryString["Id"] + "'", connection);
                    sqlCommand.Parameters.AddWithValue("@proName", ProName.Text);
                    sqlCommand.Parameters.AddWithValue("@proDescription", ProDescription.Text);
                    sqlCommand.Parameters.AddWithValue("@proCategory", ProCategory.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@proPrice", ProPrice.Text);
                    sqlCommand.Parameters.AddWithValue("@proPath", ProPath.Text);
                    sqlCommand.ExecuteNonQuery();

                    Msg.Text = "Product Updated Successfully!";
                    connection.Close();
                    ProName.Text = String.Empty;
                    ProPath.Text = String.Empty;
                    ProDescription.Text = String.Empty;
                    ProPrice.Text = String.Empty;
                    ProCategory.ClearSelection();
                }
                catch
                {
                    Msg.Text = "Some Error Occurred!";
                }
            }
        }
        protected void Value_Binder()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * FROM ProductTable WHERE ProId = '" + Request.QueryString["Id"] + "'", connection))
                {
                    try
                    {
                        using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                        {
                            DataTable dataTable = new DataTable();
                            sqlDataAdapter.Fill(dataTable);
                            ProName.Text = dataTable.Rows[0]["ProName"].ToString();
                            ProDescription.Text = dataTable.Rows[0]["ProDescription"].ToString();
                            ProPath.Text = dataTable.Rows[0]["ProPath"].ToString();
                            ProCategory.SelectedValue = dataTable.Rows[0]["ProCategory"].ToString();
                            ProPrice.Text = dataTable.Rows[0]["ProPrice"].ToString();
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }
    }
}
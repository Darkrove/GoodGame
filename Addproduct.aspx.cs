using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GoodGame
{
    public partial class Addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                try
                {
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand("INSERT INTO ProductTable(ProName, ProDescription, ProCategory, ProPrice, ProPath) VALUES (@proName,@proDescription,@proCategory,@proPrice,@proPath)", connection);
                    sqlCommand.Parameters.AddWithValue("@proName", ProName.Text);
                    sqlCommand.Parameters.AddWithValue("@proDescription", ProDescription.Text);
                    sqlCommand.Parameters.AddWithValue("@proCategory", ProCategory.SelectedValue);
                    sqlCommand.Parameters.AddWithValue("@proPrice", ProPrice.Text);
                    sqlCommand.Parameters.AddWithValue("@proPath", ProPath.Text);
                    sqlCommand.ExecuteNonQuery();

                    Msg.Text = "Product Added Successfully!";
                    connection.Close();
                    ProName.Text = String.Empty;
                    ProPath.Text = String.Empty;
                    ProDescription.Text = String.Empty;
                    ProPrice.Text = String.Empty;
                    ProCategory.ClearSelection();
                } catch(Exception ex)
                {
                    Msg.Attributes.Add("ForeColor", "#e40017");
                    Msg.Text = "Some Error Occurred!";
                }
                
            }
        }
    }
}
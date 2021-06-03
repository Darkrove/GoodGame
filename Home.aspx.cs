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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductRepeater();
            }

            try
            {
                if (Session["UserName"] != null)
                {
                    welcome.Text = Session["UserName"].ToString() + "#" + Session["UserId"].ToString();
                }
            }
            catch (NullReferenceException)
            {

            }
        }

        private void BindProductRepeater()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * FROM ProductTable",connection))
                {
                    using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        DataTable dataTable = new DataTable();
                        sqlDataAdapter.Fill(dataTable);
                        RepeaterProduct.DataSource = dataTable;
                        RepeaterProduct.DataBind();
                    }
                }
            }
        }

        protected void BuyButton(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect("Category.aspx");
        }
    }
}
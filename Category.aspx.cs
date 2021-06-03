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
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductRepeater();
            }
        }

        private void BindProductRepeater()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GoodGame"].ConnectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * FROM ProductTable WHERE ProCategory = '"+Request.QueryString["type"]+"'", connection))
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
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoodGame
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                checkSession();
            }
        }

        private void checkSession()
        {
            if (Session["UserName"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Signin.aspx");
            }
        }
    }
}
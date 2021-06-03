using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoodGame
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserName"] != null)
                {
                    Welcome.Text = "Welcome, " + Session["UserName"].ToString() + "#" + Session["UserId"].ToString();
                }
                else
                {
                    Welcome.Text = "Welcome, Admin#0";
                }
            }
            catch (NullReferenceException)
            {
                
            }
            
        }
    }
}
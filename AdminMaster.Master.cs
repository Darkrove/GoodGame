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
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                UserName.Attributes.Add("title", "Welcome, " + Session["UserName"].ToString() + "#" + Session["UserId"].ToString() + "\nClick here to sign out");
                UserProfile.Attributes.Add("src",Session["UserProfile"].ToString());
            }
            else
            {
                UserProfile.Attributes.Add("class", "invisible");
                Response.Redirect("~/Signin.aspx");
            }
        }
    }
}
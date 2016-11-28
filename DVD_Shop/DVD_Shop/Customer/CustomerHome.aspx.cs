using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DVD_Shop.Manager;

namespace DVD_Shop.Customer
{
    public partial class CustomerHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Session["admin"] = "";
            Session["username"] = "";
            Response.Redirect("~/LogIn.aspx");
        }
    }
}
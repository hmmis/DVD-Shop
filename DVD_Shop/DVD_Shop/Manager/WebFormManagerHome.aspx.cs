using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DVD_Shop.Manager
{
    public partial class WebFormManagerHome : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            this.adminSessionCheck();
            
        }

        public void adminSessionCheck()
        { 
            //----------------------------------check session is set or Not
                try
                {
                    
                    string admin = Session["admin"].ToString();
                    if (admin != "1")
                    {
                        Response.Redirect("~/LogIn.aspx");
                    }
                    
               }
                catch
                {
                    Server.Transfer("~/LogIn.aspx");
                    //Response.Redirect("~/LogIn.aspx");
                }
        
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Session["admin"] = "";
            Session["username"] = "";
            Response.Redirect("~/LogIn.aspx");

        }
    }
}
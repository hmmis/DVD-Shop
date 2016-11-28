using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DVD_Shop
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        protected void ButtonLogIn_Click(object sender, EventArgs e)
        {
            string givenUserName = TextBoxUsername.Text;
            string givenPassword = TextBoxPassword.Text;

            classDVDShop myClass = new classDVDShop();
            string connStr = myClass.connStr();

            string sql = "Select * From tbl_user where Username='" + givenUserName + "' AND Password='" + givenPassword + "'";
            
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            
            string isAdminOK = "";
            
            while (reader.Read())
            {
                //------------------Get User isAdmin Value & set session
                isAdminOK = reader["isAdmin"].ToString();
                Session["username"] = givenUserName;
            }

            //--------------------------------------Redirect Page As Role
            if (isAdminOK == "1")
            {
                //---------------------manager
                Session["admin"] = "1";
                Response.Redirect("~/Manager/WebFormManagerHome.aspx");
            }
            else if (isAdminOK == "0")
            {
                //-----------------------customer 
                Session["admin"] = "0";
                Response.Redirect("~/Customer/CustomerHome.aspx");
            }
            else{
                labelLoginError.Visible = true;
            }

            conn.Close();
           
        }
    }
}
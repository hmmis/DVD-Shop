using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    public partial class ChangePassword : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            WebFormManagerHome f = new WebFormManagerHome();
            f.adminSessionCheck();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string oldPass = this.getOldPasswoed();
            string givenPass = TextBox1.Text;

            if (oldPass != givenPass)
            {
                Label1.Visible = true;
            }
            else {
                Label1.Visible = false;
                //----------------------------------update Password
                string username = Session["username"].ToString();
                string newPass = TextBox2.Text;

                string sql = "Update tbl_user Set Password ='" + newPass + "' Where Username='" + username + "'";

                classDVDShop myClass = new classDVDShop();
                myClass.executeNonQuery(sql);
                Label2.Visible = true;
            }

        }
        private string getOldPasswoed() {
            string username = Session["username"].ToString();
            classDVDShop myClass = new classDVDShop();
            string connStr = myClass.connStr();

            string sql = "Select * From tbl_user where Username='" + username + "'";

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            string password = "";

            while (reader.Read())
            {
                //------------------Get User isAdmin Value & set session
                password = reader["Password"].ToString();
                
            }

            return password;
        }
    }
}
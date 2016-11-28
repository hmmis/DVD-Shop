using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DVD_Shop.Manager;

namespace DVD_Shop.Customer
{
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string username = TextBoxUsername.Text;
            string password = TextBoxPassword.Text;
            string name = TextBoxPasswordConfirm.Text;
            string email = TextBoxEmail.Text;
            string mobile = TextBoxMobile.Text;
           

            //----------------------------------insert in Database
            classDVDShop myClass = new classDVDShop();
            string connStr = myClass.connStr();

            string sql = "Insert into tbl_user (Username,Password,Name,Mobile,Email,isAdmin) Values('" + username + "','" + password + "','" + name + "','" + mobile + "','" + email + "','0')";

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
           
            LabelInfo.Visible = true; 
            
            try
            {
               cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException ae)
            {
                LabelInfo.Text = "Username already exists!!!Retry with New Username";
            }
            
        }
    }
}
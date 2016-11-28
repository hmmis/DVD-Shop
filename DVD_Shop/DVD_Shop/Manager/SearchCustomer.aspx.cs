using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    public partial class SearchCustomer : System.Web.UI.Page
    {
        string searchText;
        protected void Page_Load(object sender, EventArgs e)
        {
            WebFormManagerHome f = new WebFormManagerHome();
            f.adminSessionCheck();

            searchText = TextBoxSearch.Text;
            string query = "Select Username,Name,Email,Mobile From tbl_user Where isAdmin=0";
            this.showinGridView(query);
        }

        protected void ButtonUsername_Click(object sender, EventArgs e)
        {
            string query = "Select Username,Name,Email,Mobile From tbl_user WHERE  Username LIKE '%" + searchText + "%' and isAdmin=0";
            this.showinGridView(query);
        }
        private void showinGridView(string query)
        {
            classDVDShop myClass = new classDVDShop();
            string connStr = myClass.connStr();

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "Select Username,Name,Email,Mobile From tbl_user WHERE  Name LIKE '%" + searchText + "%' and isAdmin=0";
            this.showinGridView(query);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string query = "Select Username,Name,Email,Mobile From tbl_user WHERE  Email LIKE '%" + searchText + "%' and isAdmin=0";
            this.showinGridView(query);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string query = "Select Username,Name,Email,Mobile From tbl_user WHERE  Mobile LIKE '%" + searchText + "%' and isAdmin=0";
            this.showinGridView(query);
        }
    }
}
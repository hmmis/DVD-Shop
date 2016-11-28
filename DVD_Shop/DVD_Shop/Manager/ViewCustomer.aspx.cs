using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    public partial class ViewCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebFormManagerHome f = new WebFormManagerHome();
            f.adminSessionCheck();

            this.showGridView();

            
        }

        private void showGridView() {
            string query = "Select Username,Name,Email,Mobile From tbl_user Where isAdmin=0";

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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
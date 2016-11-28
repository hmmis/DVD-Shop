using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    public partial class ViewDVDList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebFormManagerHome f = new WebFormManagerHome();
            f.adminSessionCheck();
            this.showGridView();

            
        }

        private void showGridView() { 
            string query = "Select * From tbl_MovieList";

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

        

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Response.Write("a");
        }

        protected void GridView1_RowCancelingEdit2(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    public partial class ViewRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            this.commonSessionCheck();
            this.showGridView();

            
        }
        private void showGridView() { 

            string query = "Select * From tbl_Request Order By Id Desc";

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
        public void commonSessionCheck()
        {
            //----------------------------------check session is set or Not
            try
            {

                string admin = Session["admin"].ToString();
                if (admin != "1")
                {
                    HyperLink1.Visible = false;
                }

            }
            catch
            {
                Server.Transfer("~/LogIn.aspx");
                //Response.Redirect("~/LogIn.aspx");
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
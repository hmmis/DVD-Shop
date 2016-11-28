using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    public partial class SearchDVD : System.Web.UI.Page
    {
        string searchText;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.commonSessionCheck();

            searchText = TextBox1.Text;
            string query = "Select * From tbl_MovieList";
            this.showinGridView(query);
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

        protected void Button1_Click(object sender, EventArgs e)
        {

            string query = "Select * From tbl_MovieList WHERE  MovieName LIKE '%" + searchText + "%'";
            this.showinGridView(query);
            LabelSearchInfo.Text = "'" + searchText + "' keyword Search By - Movie Name::";
            
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
           
            string query = "Select * From tbl_MovieList WHERE  MovieDirector LIKE '%" + searchText + "%'";
            this.showinGridView(query);
            LabelSearchInfo.Text = "'" + searchText + "' keyword Search By - Movie Director::";
        }

        protected void Button3Actor_Click(object sender, EventArgs e)
        {
            string query = "Select * From tbl_MovieList WHERE  MovieActor LIKE '%" + searchText + "%'";
            this.showinGridView(query);
            LabelSearchInfo.Text = "'" + searchText + "' keyword Search By - Movie Actor::";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string query = "Select * From tbl_MovieList WHERE  MovieActress LIKE '%" + searchText + "%'";
            this.showinGridView(query);
            LabelSearchInfo.Text = "'" + searchText + "' keyword Search By - Movie Actress::";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string query = "Select * From tbl_MovieList WHERE  MovieYear LIKE '%" + searchText + "%'";
            this.showinGridView(query);
            LabelSearchInfo.Text = "'" + searchText + "' keyword Search By - Movie Year::";
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button6Search_Click(object sender, EventArgs e)
        {
            string searchGenre = RadioButtonList1.SelectedValue;


            string query = "Select * From tbl_MovieList WHERE  MovieGenre LIKE '%" + searchGenre + "%'";
            this.showinGridView(query);
            LabelSearchInfo.Text = "Search By  Movie Genre - '" + searchGenre + "'::";
        }
        
    }
}
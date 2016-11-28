using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    
    public partial class EditDVD : System.Web.UI.Page
    {

        static classDVDShop myClass = new classDVDShop();
        string connStr = myClass.connStr();

        protected void Page_Load(object sender, EventArgs e)
        {
            WebFormManagerHome f = new WebFormManagerHome();
            f.adminSessionCheck();

            if(!IsPostBack){
                this.getOldData();
            }
            

            
        }

        private void getOldData() {
            string editID = Request["id"];
            string sql = "Select * from tbl_MovieList Where MovieId='" + editID + "'";

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            string movieName = "", movieDirector = "", movieActor = "", movieActress = "", movieYear = "";
            while (reader.Read())
            {
                movieName = reader["MovieName"].ToString();
                movieDirector = reader["MovieDirector"].ToString();
                movieActor = reader["MovieActor"].ToString();
                movieActress = reader["MovieActress"].ToString();
                movieYear = reader["MovieYear"].ToString();

            }

            conn.Close();

            //-------------------------------------fill textbox with old data

            TextBoxMovieName.Text=movieName;
            TextBoxDirector.Text = movieDirector;
            TextBoxActor.Text = movieActor;
            TextBoxActress.Text = movieActress;
            TextBoxYear.Text = movieYear;

            //
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string editID = Request["id"];
            string movieName = TextBoxMovieName.Text;
            string movieDirector = TextBoxDirector.Text;
            string movieActor = TextBoxActor.Text;
            string movieActress = TextBoxActress.Text;
            string movieYear = TextBoxYear.Text;
            string movieGener = "";
            foreach (ListItem li in CheckBoxListGener.Items)
            {
                if (li.Selected)
                {
                    movieGener = movieGener + li.Text + ",";
                }
            }

            //----------------------------------insert in Database
            
            string sql = "Update  tbl_MovieList Set MovieName='" + movieName + "',MovieDirector='" + movieDirector + "',MovieActor='" + movieActor + "',MovieActress='" + movieActress + "',MovieYear='" + movieYear + "',MovieGenre='" + movieGener + "' Where MovieId='" + editID + "'";

            classDVDShop myClass = new classDVDShop();
            myClass.executeNonQuery(sql);

            Response.Redirect("~/Manager/ViewDVDList.aspx");

        }

      
    }
}
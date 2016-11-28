using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DVD_Shop.Manager
{
    public partial class AddNewDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebFormManagerHome f = new WebFormManagerHome();
            f.adminSessionCheck();
        }

       

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void ButtonAddMovie_Click(object sender, EventArgs e)
        {
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
                    movieGener = movieGener + li.Text+ ",";
                }
            }

            //----------------------------------insert in Database
            string sql = "Insert into tbl_MovieList (MovieName,MovieDirector,MovieActor,MovieActress,MovieYear,MovieGenre) Values('" + movieName + "','" + movieDirector + "','" + movieActor + "','" + movieActress + "','" + movieYear + "','" + movieGener + "')";
            classDVDShop myClass = new classDVDShop();
            myClass.executeNonQuery(sql);

            LabelSuccess.Visible = true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DVD_Shop.Manager
{
    public partial class DeleteDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebFormManagerHome f = new WebFormManagerHome();
            f.adminSessionCheck();

            string deleteID = Request["id"];
            string sql = "Delete from tbl_MovieList Where MovieId='" + deleteID + "'";

            classDVDShop myClass = new classDVDShop();
            myClass.executeNonQuery(sql);

            Response.Redirect("~/Manager/ViewDVDList.aspx");


        }
    }
}
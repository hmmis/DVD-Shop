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
    public partial class Request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ButtonRequest_Click(object sender, EventArgs e)
        {
            string title = TextBox2.Text;
            string description = TextBox3.Text;
           string submitBy = Session["username"].ToString();

            //----------------------------------insert in Database
           

            string sql = "Insert into tbl_Request (Title,Description,RequestBy) Values('" + title + "','" + description + "','" + submitBy + "')";

            classDVDShop myClass = new classDVDShop();
            myClass.executeNonQuery(sql);

            LabelSuccess.Visible = true;
        }
    }
}
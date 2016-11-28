using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace DVD_Shop
{
    public class classDVDShop
    {
        public string connStr()
        {
            string connStr = "Data Source=SHOVON-PC\\SQLEXPRESS;Initial Catalog=DVD_Shop_DB;Integrated Security=True ";
           
            return connStr;
        }

        public void executeNonQuery(string sql)
        {
            string myconnStr = connStr();
            SqlConnection conn = new SqlConnection(myconnStr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
      
    }
}
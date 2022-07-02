using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Customer
{
    public partial class Customer_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Request.Cookies["Customer"] != null)
                id = Request.Cookies["Customer"].Values["id"];
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            // Create SQL Select Query
            string strSelect = "SELECT * FROM Customer WHERE Customer_ID = '" + id + "'";
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
            SqlDataReader reader;
            conn.Open();
            reader = cmdSelect.ExecuteReader();
            if (reader.Read())
            {
                String im = (string)reader.GetValue(9);
                Image1.ImageUrl = "../CustomerPic/" + im;
            }
        }
    }
}
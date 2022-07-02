using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Manager
{
    public partial class Manager_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = "";
                if (Request.Cookies["Manager"] != null)
                    id = Request.Cookies["Manager"].Values["id"];
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
                // Create SQL Select Query
                string strSelect = "SELECT * FROM Log_In " + " WHERE Email = '" + id + "'";
                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
                SqlDataReader reader;
                conn.Open();
                reader = cmdSelect.ExecuteReader();
                if (reader.Read())
                {
                    String im = (string)reader.GetValue(3);
                    Image1.ImageUrl = "../ManagerPic/" + im;
                }
            }
        }
    }
}
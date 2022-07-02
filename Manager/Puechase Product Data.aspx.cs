using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Manager
{
    public partial class Puechase_Product_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex != -1)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
                string id = GridView1.SelectedRow.Cells[0].Text;
                string display1 = string.Format("SELECT * FROM PurchaseProduct_Bill WHERE Purchase_ID ='" + id + "'");
                SqlCommand cmddis = new SqlCommand(display1, conn);
                DataTable tlb = new DataTable();
                conn.Open();
                tlb.Load(cmddis.ExecuteReader());
                GridView3.DataSource = tlb;
                GridView3.DataBind();
                GridView1.Visible = false;
                conn.Close();
            }
            else
            {
                Label5.Text = "No Bill Selected !! Select a Bill, Then Click The Button Select";
            }
        }
    }
}
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
    public partial class Production_Line_Data : System.Web.UI.Page
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
                string display1 = string.Format("SELECT * FROM ProductionM_Bill WHERE Production_ID ='" + id + "'");
                string display2 = string.Format("SELECT * FROM ProductionP_Bill WHERE Production_ID ='" + id + "'");
                SqlCommand cmddis = new SqlCommand(display1, conn);
                SqlCommand cmddis2 = new SqlCommand(display2, conn);
                DataTable tlb = new DataTable();
                DataTable tlb2 = new DataTable();
                conn.Open();
                tlb.Load(cmddis.ExecuteReader());
                tlb2.Load(cmddis2.ExecuteReader());
                GridView3.DataSource = tlb;
                GridView4.DataSource = tlb2;
                GridView3.DataBind();
                GridView4.DataBind();
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
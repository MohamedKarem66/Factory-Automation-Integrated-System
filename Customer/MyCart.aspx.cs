using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Factory_Automation_Integrated_System.Customer
{
    public partial class My_Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Request.Cookies["Customer"] != null)
                id = Request.Cookies["Customer"].Values["id"];
            Label1.Text = "" + id;
            Label3.Text = DateTime.Now.ToString();
            if(GridView1.Rows.Count > 0)
            {
                int id1 = 0;
                for(int i=0; i < GridView1.Rows.Count;i++)
                {
                    int con = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);
                    id1 = id1 + con;
                }
                GridView1.FooterRow.Cells[5].Text = "Total Amount";
                GridView1.FooterRow.Cells[6].Text = ""+id1;
            }
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
                string selec = "SELECT * FROM Choose_order WHERE cid = '"+ Label1.Text +"' AND vald = 't'";
                SqlCommand cmdselec = new SqlCommand(selec, conn);
                SqlDataReader reade;
                conn.Open();
                reade = cmdselec.ExecuteReader();
                int id1 = 0;
                if (reade.Read())
                    id1 = (int)reade.GetValue(1);
                reade.Close();
                conn.Close();
                int id2 = 0;
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    int con = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);
                    id2 = id2 + con;
                }
                string strins2 = string.Format("INSERT INTO Choose_order_online VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", id1, Label3.Text, messageto.Text, TextBox1.Text, "Not yet determined.", Label1.Text, id2, "Not Approved yet.");
                SqlCommand cmd2 = new SqlCommand(strins2, conn);
                conn.Open();
                cmd2.ExecuteNonQuery();
                conn.Close();
                string strins1 = string.Format("UPDATE Choose_order SET vald = 'f' WHERE cid = '" + Label1.Text + "'");
                SqlCommand cmd1 = new SqlCommand(strins1, conn);
                conn.Open();
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Order status.aspx");
            }
            else
            {
                Label4.Text = "Ther is not any item in the Cart !!";
            }
        }
    }
}
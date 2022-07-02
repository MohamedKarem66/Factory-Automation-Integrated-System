using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Customer
{
    public partial class Make_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Request.Cookies["Customer"] != null)
                id = Request.Cookies["Customer"].Values["id"];
            Label6.Text = "" + id;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string sslect = string.Format("SELECT * FROM Product WHERE (Product_Name LIKE '%" + TextBox1.Text + "%')");
            SqlDataAdapter com = new SqlDataAdapter(sslect, conn);
            DataTable da = new DataTable();
            com.Fill(da);
            DataList1.DataSourceID = null;
            DataList1.DataSource = da;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ADDtoCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
                string select = "SELECT * FROM Product " + "WHERE Product_ID = '" + e.CommandArgument + "'";
                SqlCommand cmdselect = new SqlCommand(select, conn);
                SqlDataReader reader;
                conn.Open();
                reader = cmdselect.ExecuteReader();
                int q = 0;
                int c = 0;
                int id = 0;
                string name = "";
                if (reader.Read())
                {
                    id = (int)reader.GetValue(0);
                    name = (string)reader.GetValue(1);
                    q = (int)reader.GetValue(3);
                    c = (int)reader.GetValue(5);
                }
                else
                {
                    Label5.Text = "Please try again !!";
                }
                conn.Close();
                int q2 = Convert.ToInt32(list.SelectedItem.ToString());
                if (q > q2)
                {
                    int total = c * q2;
                    Random rd = new Random();
                    int v = rd.Next(100, 1000000000);
                    int rand_num = v;
                    string tru = "t";
                    do
                    {
                        string sele = "SELECT * FROM Choose_order WHERE order_Id = '" + rand_num + "'";
                        SqlCommand cmdsele = new SqlCommand(sele, conn);
                        SqlDataReader read;
                        conn.Open();
                        read = cmdsele.ExecuteReader();
                        if (read.Read())
                        {
                            rand_num = rd.Next(1000000000, 100);
                        }
                        else
                        {
                            tru = "f";
                        }
                        read.Close();
                        conn.Close();
                    }
                    while (tru == "t");
                    string t = "t";
                    string sele1 = "SELECT * FROM Choose_order WHERE cid ='"+ Label6.Text + "' AND vald ='"+ t +"'";
                    SqlCommand cmdsele1 = new SqlCommand(sele1, conn);
                    SqlDataReader read1;
                    conn.Open();
                    read1 = cmdsele1.ExecuteReader();
                    int id1 = 0;
                    if (read1.Read())
                    {
                        id1 = (int)read1.GetValue(1);
                    }
                    else
                    {
                        id1 = rand_num;
                    }
                    read1.Close();
                    conn.Close();
                    string selec1 = "SELECT MAX(ID) FROM Choose_order";
                    SqlCommand cmdselec1 = new SqlCommand(selec1, conn);
                    SqlDataReader reade1;
                    conn.Open();
                    reade1 = cmdselec1.ExecuteReader();
                    int id111 = 0;
                    if (reade1.Read())
                        id111 = (int)reade1.GetValue(0);
                    reade1.Close();
                    conn.Close();
                    id111++;
                    string strins = string.Format("INSERT INTO Choose_order VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')",id111, id1, id, name, q2, c, total,Label6.Text,"t");
                    SqlCommand cmd = new SqlCommand(strins, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    int qt = q - q2;
                    string sslect3 = string.Format("UPDATE Product SET Product_Quantity ='" + qt + "' Where Product_ID ='" + id + "'");
                    SqlCommand comselect3 = new SqlCommand(sslect3, conn);
                    conn.Open();
                    comselect3.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Mycart.aspx");
                }
                else
                {
                    Label5.Text = "Sorry, this item was sald or ther is not enough item";
                }
            }
        }
    }
}
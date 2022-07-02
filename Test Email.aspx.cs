using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id1 = "";
            if (Request.Cookies["Test Email"] != null)
                id1 = Request.Cookies["Test Email"].Values["id"];
            Label1.Text = "" + id1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string sslect = string.Format("SELECT * FROM Customer WHERE Customer_ID ='" + Label1.Text + "'");
            SqlCommand comselect = new SqlCommand(sslect, conn);
            SqlDataReader reader;
            int id = 0;
            string name = "";
            string user = "";
            string idt1 = "";
            String t = "0";
            try
            {
                conn.Open();
                reader = comselect.ExecuteReader();
                if (reader.Read())
                {
                    id = (int)reader.GetValue(10);
                    name = (string)reader.GetValue(2);
                    String vald = (string)reader.GetValue(8);
                    int idt = (int)reader.GetValue(0);
                    user = (string)reader.GetValue(4);
                    idt1 = Convert.ToString(idt);
                    t = "0";
                }
                reader.Close();
                conn.Close();
                string id1 = Convert.ToString(id);
                if (id1 == code.Text)
                {
                    string strins = string.Format("UPDATE Customer SET Customer_Status = 'true' WHERE Customer_ID ='" + Label1.Text + "'");
                    SqlCommand cmd = new SqlCommand(strins, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    HttpCookie coco = new HttpCookie("Customer");
                    coco.Values.Add("id", idt1);
                    coco.Values.Add("Name", name);
                    coco.Values.Add("t", t);
                    coco.Values.Add("email", user);
                    coco.Expires = DateTime.Now.AddDays(3);
                    Response.Cookies.Add(coco);
                    Response.Redirect("~/Customer/Customer Index.aspx");
                }
                else
                {
                    Label2.Text = "This code is not true !!";
                }
            }
            catch (SqlException err)
            {
                Label2.Text = err.Message;
            }
        }
    }
}
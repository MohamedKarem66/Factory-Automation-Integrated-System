using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System
{
    public partial class Sign_In_Maneger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string select = "SELECT * FROM Log_In " + "WHERE Email = '" + TextBox1.Text + "' AND Password = '" + TextBox2.Text + "'";
            SqlCommand cmdselect = new SqlCommand(select, conn);
            SqlDataReader reader;
            try
            {
                conn.Open();
                reader = cmdselect.ExecuteReader();
                if (reader.Read())
                {
                    string id = TextBox1.Text;
                    HttpCookie coco = new HttpCookie("Manager");
                    coco.Values.Add("id", id);
                    coco.Expires = DateTime.Now.AddDays(3);
                    Response.Cookies.Add(coco);
                    Response.Redirect("~/Manager/Index Manager.aspx");
                    Label1.Text = "";
                }
                else
                {
                    Label1.Text = "Email and/or Password is Incorrect, Please try again !!";
                }
                conn.Close();
            }
            catch (SqlException err)
            {
                Label1.Text = err.Message;
            }
        }
    }
}
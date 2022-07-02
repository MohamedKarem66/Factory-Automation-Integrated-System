using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Manager
{
    public partial class Contact_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = "";
            if (Request.Cookies["Manager"] != null)
                id = Request.Cookies["Manager"].Values["id"];
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string sslect = string.Format("SELECT MAX(Message_ID) FROM Message");
            SqlCommand comselect = new SqlCommand(sslect, conn);
            SqlDataReader reader;
            conn.Open();
            reader = comselect.ExecuteReader();
            int id1 = 0;
            if (reader.Read())
                id1 = (int)reader.GetValue(0);
            reader.Close();
            conn.Close();
            id1 = id1 + 1;
            string strins = string.Format("INSERT INTO Message VALUES ('{0}','{1}','{2}','{3}','{4}','{5}')", id1, Label2.Text, id, Emailer.Text, Subject.Text, messageto.Text);
            SqlCommand cmd = new SqlCommand(strins, conn);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Label1.Text = "Message Sending Sucesses !!";
            }
            catch (SqlException err)
            {
                Label1.Text = err.Message;
            }
        }
    }
}
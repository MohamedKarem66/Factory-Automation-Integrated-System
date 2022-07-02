using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Customer
{
    public partial class Protfolio_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = "";
            if (Request.Cookies["Customer"] != null)
                user = Request.Cookies["Customer"].Values["id"];
            ViewState["U"] = user;
            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            // Create SQL Select Query
            string strSelect = "SELECT * FROM Customer" + " WHERE Customer_ID = '" + user + "'";
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
            SqlDataReader reader;
            conn.Open();
            reader = cmdSelect.ExecuteReader();
            if (reader.Read())
            {
                Name.Text = (string)reader.GetString(2);
                Mobile.Text = (string)reader.GetString(3);
                Address.Text = (string)reader.GetString(7);
                username.Text = (string)reader.GetValue(5);
                email.Text = (string)reader.GetString(4);
                Password.Text = (string)reader.GetValue(6);
                String im = (string)reader.GetValue(9);
                Image1.ImageUrl = "../CustomerPic/" + im;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            email.Enabled = true;
            username.Enabled = true;
            Password.Enabled = true;
            Name.Visible = true;
            Mobile.Visible = true;
            Address.Visible = true;
            FileUpload1.Enabled = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string nam = Path.GetFileName(postedFile.FileName);
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string id = "";
            id = (string)ViewState["U"];
            string strUpdate = "UPDATE Customer "
                + "SET [Customer_E-mail] = '" + email.Text + "', "
                + " Customer_User_Name = '" + username.Text + "', "
                + " Customer_Name = '" + Name.Text + "', "
                + " Customer_Mobile = '" + Mobile.Text + "', "
                + " Customer_Address = '" + Address.Text + "', "
                + " imag = '" + nam + "', "
                + " Customer_Password = '" + Password.Text + "'"
                + " WHERE Customer_ID = '" + id + "'";
            SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);
            try
            {
                conn.Open();
                cmdUpdate.ExecuteNonQuery();
                if (FileUpload1.HasFile)
                    FileUpload1.SaveAs(Server.MapPath("../CustomerPic") + "\\" + nam);
                conn.Close();
                Response.Redirect("Customer Index.aspx");
            }
            catch (SqlException err)
            {
                Label1.Text = err.Message;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            email.Enabled = false;
            username.Enabled = false;
            Password.Enabled = false;
            Name.Visible = false;
            Mobile.Visible = false;
            Address.Visible = false;
            FileUpload1.Enabled = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;
        }
    }
}
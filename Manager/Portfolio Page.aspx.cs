using Magnum.FileSystem;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Manager
{
    public partial class Portfolio_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = "";
            if (Request.Cookies["Manager"] != null)
                user = Request.Cookies["Manager"].Values["id"];
            ViewState["U"] = user;
            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            // Create SQL Select Query
            string strSelect = "SELECT * FROM Log_In " + " WHERE Email = '" + user + "'";
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
            SqlDataReader reader;
            conn.Open();
            reader = cmdSelect.ExecuteReader();
            if (reader.Read())
            {
                username.Text = (string)reader.GetValue(0);
                email.Text = (string)reader.GetString(1);
                Password.Text = (string)reader.GetValue(2);
                String im = (string)reader.GetValue(3);
                Image1.ImageUrl = "../ManagerPic/" + im;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            email.Enabled = true;
            username.Enabled = true;
            Password.Enabled = true;
            TextBox1.Visible = true;
            Label2.Visible = true;
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
            string strUpdate = "UPDATE Log_In "
                + "SET Email = '" + email.Text + "', "
                + " User_Name = '" + username.Text + "', "
                + " imag = '" + nam + "', "
                + " Password = '" + Password.Text + "'"
                + " WHERE Email = '" + id + "'";
            SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);
            try
            {
                conn.Open();
                cmdUpdate.ExecuteNonQuery();
                if (FileUpload1.HasFile)
                    FileUpload1.SaveAs(Server.MapPath("../ManagerPic") + "\\" + nam);
                conn.Close();
                Response.Redirect("Index Manager.aspx");
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
            TextBox1.Visible = false;
            Label2.Visible = false;
            FileUpload1.Enabled = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;
        }
    }
}
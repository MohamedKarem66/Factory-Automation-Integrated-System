using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Factory_Automation_Integrated_System
{
    public partial class Sign_Out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string nam = Path.GetFileName(postedFile.FileName);
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string sslect = string.Format("SELECT MAX(Customer_ID) FROM Customer");
            SqlCommand comselect = new SqlCommand(sslect, conn);
            SqlDataReader reader;
            conn.Open();
            reader = comselect.ExecuteReader();
            int id = 0;
            if (reader.Read())
                id = (int)reader.GetValue(0);
            reader.Close();
            conn.Close();
            id = id + 1;
            int balance = 0;
            Random rnd = new Random();
            int conferm = rnd.Next(100000, 999999);
            string strins = string.Format("INSERT INTO Customer VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')", id, balance, firstName.Text, Mobile.Text, email.Text, username.Text, Password.Text, DropDownList1.SelectedValue, address.Text, "false", conferm,nam);
            SqlCommand cmd = new SqlCommand(strins, conn);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                string id2 = Convert.ToString(id);
                HttpCookie coco = new HttpCookie("Test Email");
                coco.Values.Add("id", id2);
                coco.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(coco);
                string mess = "Thanks for Sign Up in Factory Automation Integrated System." + "'\n'" +
                    "the code to verify is " + conferm + "." + "'\n'" +
                    "Don't share this code whis others.";
                string str = email.Text;
                sendEmail(str,mess);
            }
            catch (SqlException err)
            {
                if (err.Number == 2627)
                {
                    Label1.Text = "The user name " + TextBox1.Text + " already used, plsease choose anther !!";
                }
                else
                {
                    Label1.Text = err.Message;
                }
            }
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(Server.MapPath("CustomerPic") + "\\" + nam);
        }

        protected void sendEmail(string str, string mess)
        {
            MailMessage msg = new MailMessage("factoryautomation662000@hotmail.com", str);
            msg.Subject = "Sign Up Confirmation";
            msg.Body = mess;
            SmtpClient Sclient = new SmtpClient("smtp-mail.outlook.com", 587);
            NetworkCredential auth = new NetworkCredential("factoryautomation662000@hotmail.com", "factory662000");
            Sclient.UseDefaultCredentials = false;
            Sclient.Credentials = auth;
            Sclient.EnableSsl = true;
            try
            {
                Sclient.Send(msg);
                Response.Redirect("Test Email.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message + str;
            }
        }
    }
}
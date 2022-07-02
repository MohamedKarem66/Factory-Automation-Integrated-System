using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System
{
    public partial class Sign_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string select = "SELECT * FROM Customer " + "WHERE [Customer_E-Mail] = '" + TextBox1.Text + "' AND Customer_Password = '" + TextBox2.Text + "'";
            SqlCommand cmdselect = new SqlCommand(select, conn);
            SqlDataReader reader;
            try
            {
                conn.Open();
                reader = cmdselect.ExecuteReader();
                if (reader.Read())
                {
                    string name = (string)reader.GetValue(2);
                    String vald = (string)reader.GetValue(8);
                    int idt = (int)reader.GetValue(0);
                    string user = (string)reader.GetValue(4);
                    string id = Convert.ToString(idt);
                    String t = "0";
                    if (vald != "false")
                    {
                        HttpCookie coco = new HttpCookie("Customer");
                        coco.Values.Add("id", id);
                        coco.Values.Add("Name", name);
                        coco.Values.Add("t", t);
                        coco.Values.Add("email", user);
                        coco.Expires = DateTime.Now.AddDays(3);
                        Response.Cookies.Add(coco);
                        Response.Redirect("~/Customer/Customer Index.aspx");
                        string mess = "Thanks for Sign Up in Factory Automation Integrated System." + "'\n'" +
                    "the code to verify is " + conferm + "." + "'\n'" +
                    "Don't share this code whis others.";
                        string str = email.Text;
                        sendEmail(str, mess);
                    }
                    else 
                    {
                        Label1.Text = "Your Email Didn't Approval yet.Please try again later !!";
                    }
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
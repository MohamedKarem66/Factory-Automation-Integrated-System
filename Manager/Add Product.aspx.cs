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
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string nam = Path.GetFileName(postedFile.FileName);
            nam = "../Images/" + nam;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-9E272F5\\MSSQLSERVER01;Initial Catalog=Factory Database;Integrated Security=True";
            string strins = string.Format("INSERT INTO Product VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", ID.Text, Name.Text, Descreption.Text, Quantity.Text, Cost.Text, Categoery.Text, nam);
            SqlCommand cmd = new SqlCommand(strins, conn);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Label1.Text = "Product " + Name.Text + " is Saved Sucesses !!";
                ID.Text = "";
                Name.Text = "";
                Descreption.Text = "";
                Quantity.Text = "";
                Cost.Text = "";
                Categoery.Text = "";
            }
            catch (SqlException err)
            {
                Label1.Text = err.Message;
            }
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(Server.MapPath("../Images") + "\\" + nam);
        }
    }
}
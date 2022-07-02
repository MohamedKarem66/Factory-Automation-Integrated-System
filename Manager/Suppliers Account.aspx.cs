using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Manager
{
    public partial class Suppliers_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            if (TextBox1.Text == "")
            {
                GridView2.Visible = false;
                GridView1.Visible = true;
            }
        }
    }
}
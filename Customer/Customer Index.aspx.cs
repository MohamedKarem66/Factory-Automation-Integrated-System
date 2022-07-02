using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Customer
{
    public partial class Customer_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = "";
            if (Request.Cookies["Customer"] != null)
                name = Request.Cookies["Customer"].Values["name"];
            Label1.Text = "" + name;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Customer
{
    public partial class In_Box : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Request.Cookies["Customer"] != null)
                id = Request.Cookies["Customer"].Values["email"];
            Label1.Text = id;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Manager
{
    public partial class In_Box : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Request.Cookies["Manager"] != null)
                id = Request.Cookies["Manager"].Values["id"];
            Label1.Text = id;
        }
    }
}
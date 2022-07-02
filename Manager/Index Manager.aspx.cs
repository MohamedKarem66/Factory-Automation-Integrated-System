using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Factory_Automation_Integrated_System.Manager
{
    public partial class Index_Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            if (Request.Cookies["Manager"] != null)
                id = Request.Cookies["Manager"].Values["user"];
            Label1.Text = "Welcome " + id + " to Factory Automation System";
        }
    }
}
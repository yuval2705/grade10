using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website_main.App_Code;

namespace website_main
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"]!= null)
            {
                name = ((User)Session["User"]).GetName();
            }
        }
    }
}
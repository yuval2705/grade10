using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace website_main.Pages
{
    public partial class forgotPass : System.Web.UI.Page
    {
        public string errMessege = "";
        public bool ezer = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["change_pass"] != null)
            {
                string uName = Request.Form["uName"];
                string uMail = Request.Form["uMail"];
                string fileName = "../../App_Data/mygang.accdb";
                string tableName = "uInfo";

                string sql = $"SELECT * FROM uInfo WHERE uName = '{uName}' AND uMail = '{uMail}'";
                if (MyAdoHelper.IsExist(fileName, sql))
                {
                    ezer = true;
                    if(Request.Form["confirm_new_pass"] != null)
                    {
                        if (Request.Form["newPass"] == Request.Form["confirmNewPass"])
                        {
                            string newPass = Request.Form["newPass"];
                            sql = $"UPDATE {tableName} SET uPass = '{newPass}' WHERE uName = '{uName}'";
                            MyAdoHelper.DoQuery(fileName, sql);
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {
                            Response.Redirect("Eyal.aspx");
                            ezer = true;
                            errMessege = "It must be the same password";
                        }
                            
                    }
                }
                else
                {
                    errMessege = "This account doesn't exists";
                }
            }
        }
    }
}
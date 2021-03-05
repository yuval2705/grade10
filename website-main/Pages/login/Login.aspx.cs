using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using website_main.App_Code;

namespace website_main.Pages.login1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Request.Form["sub1"]!= null)
            {
                string uName = Request.Form["uName"];
                string uPass = Request.Form["uPass"];
                
                if (uPass=="pass" && uName == "name")
                {
                    Session["admin"] = "ok";
                    Response.Redirect("../adminPage.aspx");
                }
                else
                {
                    string fileName = "../../../App_Data/mygang.accdb";
                    
                    string sql = $"SELECT * FROM uInfo WHERE uName = '{uName}' AND uPass = '{uPass}'";
                    if (MyAdoHelper.IsExist(fileName, sql))
                    {
                        DataTable dataTable = MyAdoHelper.ExecuteDataTable(fileName, sql);

                        Session["user"] = new User(uName, uPass, dataTable.Rows[0]["uMail"].ToString(), dataTable.Rows[0]["uGender"].ToString(), dataTable.Rows[0]["uBirthday"].ToString(), dataTable.Rows[0]["uCrazy"].ToString());
                        Response.Redirect("../UserPage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('The username or password you have entered is incorrect')</script>");
                    }
                }
            }
            
            if (Request.Form["signUp"] != null)
            {
               
                string name = Request.Form["signUname"];
                string mail = Request.Form["signUmail"];
                string pass = Request.Form["signUpass"];
                string gender = Request.Form["gender"];
                string birthday = Request.Form["birthday"];
                string crazy = Request.Form["crazy"];

                string fileName = "../../../App_Data/mygang.accdb";
                string sql = $"SELECT * FROM uInfo WHERE uMail = '{mail}' OR uName = '{name}' OR uPass = '{pass}'";

                //"SELECT * FROM " + tableName + "WHERE uMail='" + mail + "' OR uPass='" + pass + "'";

                if (MyAdoHelper.IsExist(fileName, sql))
                {
                    Response.Write("<script>alert(This mail,this password or this name was already taken')</script>");
                }
                else
                {
                    //"../../../App_Data/mygang.accdb";
                    sql = "INSERT INTO uInfo (uName,uPass,uMail,uGender,uBirthday,uCrazy) VALUES ('" + name + "','" + pass + "','" + mail + "','" + gender + "','" + birthday + "','" + crazy + "')";
                    MyAdoHelper.DoQuery(fileName, sql);
                    Response.Redirect("../Main.aspx");
                }

            }

            if (Request.Form["log_out"]!= null)
            {
                Session.Abandon();
                Response.Redirect("../Main.aspx");
            }
            
        }
    }
}
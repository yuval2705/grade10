using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website_main.App_Code;
using System.Data;

namespace website_main.Pages
{
    public partial class UserPage : System.Web.UI.Page
    {
        public string name;
        public string password;
        public string mail;
        public string gender;
        public string birthday;
        public int crazy;
        public string st;
        public DataTable dtable1;
        public string search = "";
        public string whattosearch;
        public int counterOFUsers = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("404page.aspx");
            }
            string tableName = "uInfo";
            string selectQuery = " SELECT * FROM " + tableName + $" WHERE uName = '{((User)Session["User"]).GetName()}' AND uPass = '{((User)Session["User"]).GetPassword()}' AND uMail = '{((User)Session["User"]).GetMail()}'";
            string fileName = "../../App_Data/mygang.accdb";
            dtable1 = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);


            string name = (dtable1.Rows[0]["uName"]).ToString();
            string password = (dtable1.Rows[0]["uPass"]).ToString();
            string mail = (dtable1.Rows[0]["uMail"]).ToString();
            string gender = (dtable1.Rows[0]["uGender"]).ToString();
            string birthday = (dtable1.Rows[0]["uBirthday"]).ToString();
            int crazy = int.Parse(dtable1.Rows[0]["uCrazy"].ToString());




            //st = "";
            //st += "<table>";
            //st += "<tr>";
            //st += "<th>Username</th>";
            //st += "<th>Password</th>";
            //st += "<th>Mail</th>";
            //st += "<th>Gender</th>";
            //st += "<th>Birthday</th>";
            //st += "<th>Crazy</th>";
            //st += "</tr>";

            //st += "<tr>";
            //st += "<td>" + this.name + "</td>";
            //st += "<td>" + this.password + "</td>";
            //st += "<td>" + this.mail + "</td>";
            //st += "<td>" + this.gender + "</td>";
            //st += "<td>" + this.birthday + "</td>";
            //st += "<td>" + this.crazy + "</td>";
            //st += "</tr>";

            //st += "</table>";

            if (Request.Form["UpdateInformation"]!= null)
            {

                string newName = Request.Form["newName"];
                string newPass = Request.Form["newPass"];
                string newEmail = Request.Form["newEmail"];
                string newGender = Request.Form["newGender"];
                string newBirthday = Request.Form["newBirthday"];
                string newCrazy = Request.Form["newCrazy"];
                //testing only
                fileName = "../../App_Data/mygang.accdb";
                tableName = "uInfo";
                //string sql = $"SELECT * FROM uInfo WHERE uMail = '{newEmail}' OR uName = '{newName}' OR uPass = '{newPass}'";
                string sql = $"SELECT * FROM uInfo WHERE uName = '{newName}'";
                if (/*MyAdoHelper.IsExist(fileName, sql)*/ false)
                {
                    Response.Write("<script>alert(This mail,this password or this name was already taken')</script>");
                }
                else
                {
                    sql = $"UPDATE {tableName} SET uName = '{newName}', uPass = '{newPass}', uMail = '{newEmail}', uGender = '{newGender}', uBirthday = '{newBirthday}', uCrazy = '{newCrazy}' WHERE uName = '{name}'";
                    MyAdoHelper.DoQuery(fileName, sql);
                    Session["User"] = new User(newName, newPass,newEmail,newGender,newBirthday,newCrazy);
                    Response.Redirect("UserPage.aspx");
                }
                
            }
            st = "";
            st += "<table>";
            st += "<tr>";
            st += "<th>Username</th>";
            st += "<th>Password</th>";
            st += "<th>Mail</th>";
            st += "<th>Gender</th>";
            st += "<th>Birthday</th>";
            st += "<th>Crazy</th>";
            st += "</tr>";

            st += "<tr>";
            st += "<td>" + name + "</td>";
            st += "<td>" + password + "</td>";
            st += "<td>" + mail + "</td>";
            st += "<td>" + gender + "</td>";
            st += "<td>" + birthday + "</td>";
            st += "<td>" + crazy + "</td>";
            st += "</tr>";

            st += "</table>";

            if (Request.Form["submit-search"] != null)
            {
                string whattosearch = Request.Form["whattosearch"];
                string value = Request.Form["search"];
                if (whattosearch == "uCrazy")
                {
                    selectQuery = " SELECT * FROM " + tableName + " WHERE " + whattosearch + "='" + int.Parse(value) + "'";
                }
                else if (value != "")
                {
                    selectQuery = " SELECT * FROM " + tableName + " WHERE " + whattosearch + "='" + value + "'";
                }
                DataTable dtable = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
                int lenth = dtable.Rows.Count;
                if (lenth > 0)
                {
                    search = "";
                    search += "<table>";
                    search += "<tr>";
                    search += "<th>Username</th>";
                    search += "<th>Gender</th>";
                    search += "<th>Birthday</th>";
                    search += "<th>Crazy</th>";
                    search += "</tr>";

                    for (int i = 0; i < lenth; i++)
                    {
                        search += "<tr>";
                        search += "<td>" + dtable.Rows[i]["uName"] + "</td>";
                        search += "<td>" + dtable.Rows[i]["uGender"] + "</td>";
                        search += "<td>" + dtable.Rows[i]["uBirthday"] + "</td>";
                        search += "<td>" + dtable.Rows[i]["uCrazy"] + "</td>";
                        search += "</tr>";
                    }
                    search += "</table>";
                }
                else
                    search = "<h1>No member have found</h1>";
            }
        }
    }
}
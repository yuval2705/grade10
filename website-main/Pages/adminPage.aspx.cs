using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace website_main.Pages
{
    public partial class adminPage : System.Web.UI.Page
    {
        public string st = "";
        public string search = "";
        public string whattosearch;
        public int counterOFUsers = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Admin"]== null)
            {
                Response.Redirect("404page.aspx");
            }
            string fileName = "../../App_Data/mygang.accdb";
            string tableName = "uInfo";
            string selectQuery = "SELECT * FROM " + tableName;

            DataTable Dtable = MyAdoHelper.ExecuteDataTable(fileName,selectQuery);

            int length1 = Dtable.Rows.Count;
            if(length1 > 0)
            {
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
                

                for (int i = 0; i < length1; i++)
                {
                    st += "<tr>";
                    st += "<td>" + Dtable.Rows[i]["uName"] + "</td>";
                    st += "<td>" + Dtable.Rows[i]["uPass"] + "</td>";
                    st += "<td>" + Dtable.Rows[i]["uMail"] + "</td>";
                    st += "<td>" + Dtable.Rows[i]["uGender"] + "</td>";
                    st += "<td>" + Dtable.Rows[i]["uBirthday"] + "</td>";
                    st += "<td>" + Dtable.Rows[i]["uCrazy"] + "</td>";
                    st += "</tr>";
                }
                st += "</table>"; 
            }
            if(Request.Form["DeleteUser"] != null)
            {
                string DeleteUser = Request.Form["DeleteName"];
                string sql = "DELETE FROM uInfo WHERE uName = '" + DeleteUser + "'";
                MyAdoHelper.DoQuery(fileName, sql);
                Response.Redirect("adminPage.aspx");
            }
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
                    search += "<th>Password</th>";
                    search += "<th>Mail</th>";
                    search += "<th>Gender</th>";
                    search += "<th>Birthday</th>";
                    search += "<th>Crazy</th>";
                    search += "</tr>";

                    for (int i = 0; i < lenth; i++)
                    {
                        search += "<tr>";
                        search += "<td>" + dtable.Rows[i]["uName"] + "</td>";
                        search += "<td>" + dtable.Rows[i]["uPass"] + "</td>";
                        search += "<td>" + dtable.Rows[i]["uMail"] + "</td>";
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
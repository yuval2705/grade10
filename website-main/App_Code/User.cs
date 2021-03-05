using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace website_main.App_Code
{
    public class User
    {
        private string name;
        
        private string password;
        private string mail;
        private string gender;
        private string birthday;
        private string crazy;
        public User(string name,string password,string mail,string gender,string birthday,string crazy)
        {
            this.name = name;
            this.password = password;
            this.mail = mail;
            this.gender = gender;
            this.birthday = birthday;
            this.crazy = crazy;
        }
        public string GetName()
        {
            return this.name;
        }
        public string GetPassword()
        {
            return this.password;
        }
        public string GetMail()
        {
            return this.mail;
        }
        public string GetGender()
        {
            return this.gender;
        }
        public string GetBirthday()
        {
            return this.birthday;
        }
        public string GetCrazy()
        {
            return this.crazy;
        }
        public void SetName(string name)
        {
            this.name = name;
        }
        public void SetPassword(string password)
        {
            this.password = password;
        }
        public void SetMail(string mail)
        {
            this.mail = mail;
        }
        public void SetGender(string gender)
        {
            this.gender = gender;
        }
        public void SetBirthday(string birthday)
        {
            this.birthday = birthday;
        }
        public void SetCrazy(string crazy)
        {
            this.crazy = crazy;
        }
        public override string ToString()
        {
            string st = "";
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
            st += "<td>" + this.name + "</td>";
            st += "<td>" + this.password + "</td>";
            st += "<td>" + this.mail + "</td>";
            st += "<td>" + this.gender + "</td>";
            st += "<td>" + this.birthday + "</td>";
            st += "<td>" + this.crazy + "</td>";
            st += "</tr>";
            st += "</table>";
            return st;
        }
        public string searchForAdmin()
        {
            string st = "";
            st += "<tr>";
            st += "<td>" + this.name + "</td>";
            st += "<td>" + this.password + "</td>";
            st += "<td>" + this.mail + "</td>";
            st += "<td>" + this.gender + "</td>";
            st += "<td>" + this.birthday + "</td>";
            st += "<td>" + this.crazy + "</td>";
            st += "</tr>";
            
            return st;
        }
        public string searchForUsers()
        {
            string st = "";
            st += "<tr>";
            st += "<td>" + this.name + "</td>";
            st += "<td>" + this.gender + "</td>";
            st += "<td>" + this.birthday + "</td>";
            st += "<td>" + this.crazy + "</td>";
            st += "</tr>";

            return st;
        }

        public string GetNameST()
        {
            return $"Name: {this.name}";
        }
        public string GetPasswordST()
        {
            return $"Password: {this.password}";
        }
        public string GetMailST()
        {
            return $"Mail: {this.mail}";
        }
        public string GetGenderST()
        {
            return $"Gender: {this.gender}";
        }
        public string GetBirthdayST()
        {
            return $"Birthday: {this.birthday}";
        }
        public string GetCrazyST()
        {
            return $"Crazy: {this.crazy}";
        }



       //public static void ezer()
       //{
       //     string fileName = "../../App_Data/mygang.accdb";
       //     string tableName = "uInfo";
       //     string selectQuery = "SELECT * FROM " + tableName;

       //     DataTable Dtable = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);

       //     int length1 = Dtable.Rows.Count;
       //     int i = 0;
       //     bool current = true;
       //     while(i < length1 && current)
       //     {
       //         current = ();
       //         i++;
       //     }

       //}
        



    }
}
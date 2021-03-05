<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="website_main.Pages.adminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lexend+Mega&display=swap" rel="stylesheet">
    <style>
        table{
            overflow-x:auto;
            font-family:Lexend Mega;
        }
        td {
            border-bottom: 2px solid #ddd;
            text-align:center;
            font-family:Lexend Mega;
            border-bottom-style:solid;
            width:auto;
            padding:10px;
        }
        th{
            background-color: #808080;
            color:white;
            border-bottom: 2px solid #ddd;
            text-align:center;
            font-family:Lexend Mega;
            font-weight:bold;
            border-bottom-style:none;
            width:auto;
            padding:15px;
        }
        td:hover {
            background-color: #f5f5f5;
            font-family:Lexend Mega;
        }
    </style>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
    margin-top:20px;
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  /*position: fixed;*/
  width: 280px;
  border-radius:30px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  left: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 280px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password], .form-container input[type=email] {
  width: 80%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}
.form-container input[type=radio]{
    font:bold;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 70%;
  margin-bottom:7px;
  opacity: 0.8;
  border-radius:30px;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
  border-radius:30px;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>

/* Style the search field */
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

/* Style the submit button */
form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background:#808080;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

/* Clear floats */
form.example::after {
  content: "";
  clear: both;
  display: table;
}
    </style>
    <style>
        .container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
  top: 9px;
  left: 9px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: white;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center;font-weight:bold;font-family:Lexend Mega">Admin Page</h1>

    <center>
        <div style="margin-top:3rem">
            <%Response.Write(st);%>
        </div>
        <button class="open-button" onclick="openForm()">Delete User</button>
    </center>

    <div class="form-popup" id="myForm">
  <form action="adminPage.aspx" method="post" class="form-container">
    <h1 style="text-decoration:underline;font-family: Arial, Helvetica, sans-serif;">Delete</h1>

    <label for="DeleteName"><b>Name</b></label>
      <br />
    <input type="text" placeholder="User Name" name="DeleteName" required>
    

    <button type="submit" class="btn" name="DeleteUser">Delete User</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
        </div>

    <br />
    <center>
    <form class="example" action="adminPage.aspx" method="post" style="margin:auto;max-width:300px">

        <h1 style="text-decoration-line:underline"><b>Search by:</b></h1>

                    <label class="container"><b>Username</b>
              <input type="radio" value="uName" name="whattosearch" checked="checked"/>
              <span class="checkmark"></span>
            </label>

            <label class="container"><b>Password</b>
              <input type="radio" value="uPass" name="whattosearch"/>
              <span class="checkmark"></span>
            </label>

            <label class="container"><b>Email</b>
              <input type="radio" value="uMail" name="whattosearch" />
              <span class="checkmark"></span>
            </label>

            <label class="container"><b>Gender</b>
              <input type="radio" value="uGender" name="whattosearch" />
              <span class="checkmark"></span>
            </label>
            <label class="container"><b> Birthday</b>
                  <input type="radio" value="uBirthday" name="whattosearch" />
                  <span class="checkmark"></span>
                </label>
            <label class="container"><b>Crazy</b>
                      <input type="radio" value="uCrazy" name="whattosearch" />
                      <span class="checkmark"></span>
                    </label>
        <br />
  <input type="text" placeholder="Search.." name="search">
  <button type="submit" name="submit-search"><i class="fa fa-search"></i></button>
</form>

        <div style="margin-top:3rem">
            <%Response.Write(search);%>
        </div>
        </center>


    <script>
    function openForm() {
      document.getElementById("myForm").style.display = "block";
    }

    function closeForm() {
      document.getElementById("myForm").style.display = "none";
    }
    </script>

    

</asp:Content>

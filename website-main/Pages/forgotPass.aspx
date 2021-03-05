<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgotPass.aspx.cs" Inherits="website_main.Pages.forgotPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>git!!!</h1>
       <%if (!ezer)
           { %>
    <center>
<div id="id01" class="modal">
  
 
  <form class="modal-content animate" action="forgotPass.aspx" method="post">
    <div class="container">
      <label for="uName"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uName" required>
        <br />

      <label for="uMail"><b>Email</b></label>
      <input type="email" placeholder="Enter Email" name="uMail" required>
        <br />
      <button type="submit" name="change_pass">Confirm</button>
    </div>
  </form>
</div>
        </center>
        <%}
            if(ezer)
            {%>
       <center>
<div class="modal">
  
 
  <form class="modal-content animate" action="forgotPass.aspx" method="post">
    <div class="container">
      <label for="newPass"><b>New password</b></label>
      <input type="text" placeholder="Enter New password" name="newPass" required>
        <br />

      <label for="confirmNewPass"><b>Confirm password</b></label>
      <input type="text" placeholder="Enter New password" name="confirmNewPass" required>
        <br />
      <input type="submit" name="confirm_new_pass" value="Change password"/>
        
    </div>
  </form>
</div>
        </center>
    <% }%>
    <h3 style="color:red"><%Response.Write(errMessege);%></h3>
    
    
    <%
        // ----------------------------- TO DO LIST -------------------------------
        // finish the forgot password fanction ...........
      // finish up the informations page (yuval's,cassuto's and asaf's)
      // maybe switch eyal's page with nimrod's one.
      %>

</asp:Content>

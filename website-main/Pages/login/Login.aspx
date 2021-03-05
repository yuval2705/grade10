<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="website_main.Pages.login1.Login" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="style.css" />
    <title>Login</title>
  </head>
  <body>
      <%if (Session["admin"] == null && Session["user"] == null)
          {%>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="Login.aspx" method="post" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="uName"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="uPass" />
            </div>
              <div>
                  <a href="../forgotPass.aspx"><b style="font-size:50%">Forgot your password?</b></a>
              </div>
            <input type="submit" value="Login" class="btn solid" name="sub1" />
          </form>

          <form action="login.aspx" method="post" oninput="x.value=parseInt(a.value)" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="signUname" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" name="signUmail" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="signUpass" />
            </div>
              <div>
                  <input type="radio" value="male" name="gender" /> Male
                  <input type="radio" value="female" name="gender" /> Female
                  <input type="radio" value="other" name="gender" checked="checked" /> Other
                  <input type="radio" value="niv" name="gender" /> Niv
              </div>
              <br />
              <div>
                  <input type="date" name="birthday" /> Birthday
              </div>
              <br />
              <div>
                  <h3>How crazy are you?</h3> 
                  0 <input type="range" max="10" min="0" step="0.5" id="a" name="crazy" /> 10
                  <br />
                  <output name="x" for="a"></output>
              </div>
              <div>
                  <input type="submit" value="Sign Up" class="btn solid" name="signUp" />
              </div>
          </form>
         </div>
         </div>
      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Wanna Join?</h3>
            <p>
              Cassuto, kill nimrod no one wants him alive
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="img/image0.png" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>Niv?</h3>
            <p>
              Cassuto shut up everybody likes you
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="img/image0.png" class="image" alt="" />
        </div>
      </div>
    </div>
      <%}
          else
          {%>
           <form action="Login.aspx" method="post" class="sign-in-form">
            <input type="submit" value="Log Out" class="btn solid" name="log_out" />           
          </form>
        <%}%>

    <script src="app.js"></script>
  </body>
</html>


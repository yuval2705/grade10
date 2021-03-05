<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="website_main.Pages.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="styles/StyleSheet1.css" rel="stylesheet" />
<style>
 @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap');
 @import url('https://fonts.googleapis.com/css2?family=Bungee+Hairline&display=swap');
</style>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
  height: 100%;
  color: #777;
  line-height: 1.8;
}


.bgimg-1, .bgimg-2, .bgimg-3 {
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.bgimg-1 {
  background-image:url(/pics/asaf_the_gamer.png);
  min-height: 100%;
}

.bgimg-2 {
  background-image: url(/pics/niv_laughing.png);
  min-height: 400px;
}


.bgimg-3 {
  background-image: url(/pics/aviv2.png);
  min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}


@media only screen and (max-device-width: 1600px) {
  .bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: scroll;
    min-height: 400px;
  }
}
</style>
    <title>Gang</title>
</head>
<body>
    <style>
.bottom {
    margin-bottom: 5px;
    display: inline-block;
    text-align: center;
    margin-bottom: 0;
}
.bottom-btn {
    border: none;
    outline: none;
    border-radius: 20px;
    width: 200px;
    height: 40px;
    background-color: rgb(56, 52, 52);
    color: aliceblue;
    font-size: 20px;
    transition: 0.6s;
    box-shadow: 0 0 10px #fa0000;
    display: inline-block;
    font-family: 'Roboto', sans-serif;
    margin-bottom: 5px;
}

.bottom-btn:hover {
    margin-bottom: 5px;
    width: 200px;
    background-color: rgb(248, 239, 239);
    color: rgb(56, 52, 52);
}
.bottom h2 {
    font-family: 'Bungee Hairline', cursive;
    margin: 5px;
    margin-bottom: 1px;
    font-size: 40px;
}

    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="#home" class="w3-bar-item w3-button">START</a>
    <a href="#about" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> ABOUT</a>
    <a href="#portfolio" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> INFORMATION</a>
    <a href="#contact" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> CONTACT</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      <i class="fa fa-search"></i>
    </a>
  </div>
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
    <a href="#about" class="w3-bar-item w3-button" onclick="toggleFunction()">ABOUT</a>
    <a href="#portfolio" class="w3-bar-item w3-button" onclick="toggleFunction()">INFORMATION</a>
  </div>
</div>


    <br /> <br /> 
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"> <span class="w3-hide-small">OUR </span>GANG</span>
  </div>
</div>

<div class="w3-content w3-container w3-padding-64" id="about">
  <h3 class="w3-center">ABOUT OUR GANG</h3>
  <p class="w3-center"><em>We love to play computer games all day and screem like a 8 year old girl</em></p>
  <p> </p>
  <div class="w3-row">
    <div class="w3-col m6 w3-center w3-padding-large">
      <p><b></b></p><br/>
      <img src="../pics/aviv3.png" class="w3-round w3-image w3-opacity w3-hover-opacity-off" alt="Photo of as" width="500" height="333"/>
    </div>

 
    <div class="w3-col m6 w3-hide-small w3-padding-large">
      <p>Five years ago this gang was founded by seven desperate kids named: Eyal, Niv, Asaf, Yuval, Aviv, Jonatan(קסטו) and Adi.
          this kids started playing all the time and got really really close.
      </p>
    </div>
  </div>
  <p class="w3-large w3-center w3-padding-16">WE ARE:</p>
  <p class="w3-wide">GAY</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:73.4%">73.4%</div>
  </div>
  <p class="w3-wide">Rligious</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:0%">0%</div>
  </div>
  <p class="w3-wide">LAUGHING AT PEOPLE</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:100%">100%</div>
  </div>
</div>

<div class="w3-row w3-center w3-dark-grey w3-padding-16">
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">9</span><br/>
    Members
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">5+ Years</span><br/>
    How much time we are together
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">100000000+ Hours</span><br/>
    Time spent on playing together
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">100+</span><br/>
    Meetings
  </div>
</div>


<div class="bgimg-2 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-white w3-wide">PROFILE</span>
  </div>
</div>


<div class="w3-content w3-container w3-padding-64" id="portfolio">
  <h3 class="w3-center">OUR WORK</h3>
  <p class="w3-center"><em>HERE YOU CAN SEE ALL MEMBERS<br/> Click on the images to make them bigger</em></p><br/>


  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="/pics/cassuto1.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="CASSUTO"/>
    </div>

    <div class="w3-col m3">
      <img src="/pics/aviv_infornt_of_the_camera.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="AVIV"/>
    </div>

    <div class="w3-col m3">
      <img src="/pics/asaf_the_dj.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="ASAF"/>
    </div>

    <div class="w3-col m3">
      <img src="/pics/niv_laughing.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="NIV"/>
    </div>
  </div>

  <div class="w3-row-padding w3-center w3-section">
    <div class="w3-col m3">
      <img src="/pics/eyal_sitting_in_the_corner.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="EYAL"/>
    </div>

    <div class="w3-col m3">
      <img src="/pics/yuval's_smile.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="YUVAL"/>
    </div>

    <div class="w3-col m3">
      <img src="/pics/adi_is_cute_asfuck.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="ADI"/>
    </div>

    <div class="w3-col m3">
      <img src="/pics/nimrod_being_cute.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="NIMROD"/>
    </div>
    <button class="w3-button w3-padding-large w3-light-grey" style="margin-top:64px">LOAD MORE</button>
  </div>
</div>


<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-large w3-black w3-display-topright" title="Close Modal Image"><i class="fa fa-remove"></i></span>
</div>

<div class="bgimg-3 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
     <span class="w3-xxlarge w3-text-white w3-wide">SOME INFORMATION</span>
  </div>
</div>


<div class="w3-content w3-container w3-padding-64" id="contact">
  <h3 class="w3-center">WHERE WE SIT</h3>
  <p class="w3-center"><em></em></p>

  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
      <img src="/pics/yuval's_smile.png" class="w3-image w3-round" style="width:100%"/>
    </div>
    <div class="w3-col m8 w3-panel">
      <div class="w3-large w3-margin-bottom">
        Hod Hasharon Israel<br/>
        Phone: 054-247-9490<br/>
        Email: yuvalrozen27@gmail.com<br/>
      </div>
        </div>
  </div>
</div>

     <div style="margin:0px">

            <center>
            <div class="bottom">
                <a href="#" style="text-decoration-line:none; outline:none;color:black;"><h2 class="callout-subtitle animate__animated animate__zoomInDown" style="margin-bottom:0;">The Gang</h2></a>
            </div>

            <div class="nav callout-subtitle animate__animated animate__zoomInDown">
                
                <button class="bottom-btn" onclick="location.href='Asaf.aspx'" type="button" >Asaf</button>
                <button class="bottom-btn" onclick="location.href='Asaf.aspx'" type="button" >Aviv</button>
                <button class="bottom-btn" onclick="location.href='Yuval.aspx'" type="button" >Yuval</button>
                <button class="bottom-btn" onclick="location.href='Niv.aspx'" type="button" >Niv</button>
                <button class="bottom-btn" onclick="location.href='Eyal.aspx'" type="button" >Eyal</button>
                <button class="bottom-btn" onclick="location.href='Cassuto.aspx'" type="button" >Jonathan</button>
                 <%if (Session["admin"] == null && Session["user"] == null)
                   { %>
                <button class="bottom-btn" onclick="location.href='login/Login.aspx'" type="button">Login</button>
                 <%} %>
                
                 <% else if(Session["admin"]!= null)
                  { %>
                <button class="bottom-btn" onclick="location.href='Login.aspx'" type="button">Log out</button>
                <button class="bottom-btn" onclick="location.href='adminPage.aspx'" type="button">Admin</button>
                <%} %> 

                <% else if(Session["user"]!= null)
                  { %>
                <button class="bottom-btn" onclick="location.href='Login.aspx'" type="button">Log out</button>
                <button class="bottom-btn" onclick="location.href='UserPage.aspx'" type="button"><%=Session["user"] %></button>
                <%} %> 
                
            </div>
                </center>
         </div>


<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
 <%-- <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>--%>
  
</footer>

<script>

    function onClick(element) {
        document.getElementById("img01").src = element.src;
        document.getElementById("modal01").style.display = "block";
        var captionText = document.getElementById("caption");
        captionText.innerHTML = element.alt;
    }


    window.onscroll = function () { myFunction() };
    function myFunction() {
        var navbar = document.getElementById("myNavbar");
        if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
            navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
        } else {
            navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
        }
    }


    function toggleFunction() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>
</body>
</html>

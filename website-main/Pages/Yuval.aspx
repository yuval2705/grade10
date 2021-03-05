<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Yuval.aspx.cs" Inherits="website_main.Pages.Yuval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../styles/StyleSheet2.css"/>
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <main>
       <section class="glass">
           <div class="dashboard">
               <div class="user">
                   <img src="../pics/yuval's_smile.png" style="height:70%;width:65%;border-radius:70%"/>
                   <h3>Yuval Rozen</h3>
                   <p>ZoDnX/Yuvi</p>
               </div>
               <div class="links">
                   <div class="link">
                       <img src="../pics/steam%20(1).png" />
                       <h2>Steam</h2>
                   </div>
                   <div class="link">
                       <img src="../pics/Instagram_logo.png" style="height:12%;width:12%;border-radius:30%"/>
                       <h2>Instagram</h2>
                   </div>
                   <div class="link">
                       
                       <h2>Discord</h2>
                   </div>
               </div>
           </div>
           <div class="games">
               <div class="status">
                   <h1>Active Games</h1>
                   <input type="text" />
               </div>
               <div class="cards">
                   <div class="card">
                       <img src="" />
                       <div class="card-info">
                           <h2>adadad</h2>
                           <p>adadadad</p>
                           <div class="progress"></div>
                       </div>
                       <h2 class="precentage">60%</h2>
                   </div>

                   <div class="card">
                       <img src="" />
                       <div class="card-info">
                           <h2>adadad</h2>
                           <p>adadadad</p>
                           <div class="progress"></div>
                       </div>
                       <h2 class="precentage">60%</h2>
                   </div>

                   <div class="card">
                       <img src="" />
                       <div class="card-info">
                           <h2>adadad</h2>
                           <p>adadadad</p>
                           <div class="progress"></div>
                       </div>
                       <h2 class="precentage">60%</h2>
                   </div>
               </div>
           </div>
       </section>
   </main>
    <div class="circle1"></div>
    <div class="circle2"></div>
</asp:Content>

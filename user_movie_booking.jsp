<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
String mid=request.getParameter("id");
String tname=request.getParameter("tname"); 
String mname=request.getParameter("mname");
 String tamount=request.getParameter("tamount");  
 String uid = (String)session.getAttribute("uid");
String uname = (String)session.getAttribute("uname");
 


 try

{
    
     
     String btn = request.getParameter("submit");

         String Email= "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";
        
        if (btn.equals("submit")) {
    

String person=request.getParameter("person");
String total=request.getParameter("total"); 
String accno=request.getParameter("accno");
String ccv=request.getParameter("ccv");
String bn=request.getParameter("bn");
 
   
    
       // String amt=request.getParameter("amt");
       
        
                  // String sql4="select * from betting where uid='"+uid+"'";
                  // if(sql4){
    String qry = "select max(id) as maxid from payment";
            ResultSet rs = stmt1.executeQuery(qry);
            int id1 = 0; 
            if (rs.next()) {
                id1 = rs.getInt("maxid");
            }
            int id2 = id1 + 1;
                   String ins = "insert into payment values('"+id2+ "','"+ uname + "','"+mid+ "','" +tname + "','" + mname + "','" + tamount + "','" + person + "','" + total + "','" + accno + "','" + ccv + "','" + bn + "')";
            int n = stmt.executeUpdate(ins);
            if (n == 1) {      
                        %>
                    <script language="javascript">
                        alert("Payment Successful");
                        window.location.href="index.jsp";
                        </script>

<%     }else{      
                    
                    %>
                    <script language="javascript">
                        alert("Payment failed");
                        window.location.href="user_movie_booking.jsp";
                        </script>

<%
     
                }
 
                
        } 
}
catch(Exception e)
{
   System.out.print(e); 
}

%>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">

    <!-- ===== Mobile viewport optimized ===== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no">

    <!-- ===== Meta Tags - Description for Search Engine purposes ===== -->
    <meta name="description" content="Movify - Movies, Series & Cinema HTML Template">
    <meta name="keywords" content="movies, series, online streaming, html template, cinema html template">
    <meta name="author" content="GnoDesign">

    <!-- ===== Website Title ===== -->
    <title>Online Movie Booking</title>

    <!-- ===== Favicon & Different size apple touch icons ===== -->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" sizes="57x57" href="assets/images/apple-touch-icon-iphone.png">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/images/apple-touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/images/apple-touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/images/apple-touch-icon-ipad-retina.png">
    <link rel="apple-touch-icon" sizes="167x167" href="assets/images/apple-touch-icon-ipad-pro.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/apple-touch-icon-iphone-6-plus.png">
    <link rel="icon" sizes="192x192" href="assets/images/icon-hd.png">
    <link rel="icon" sizes="128x128" href="assets/images/icon.png">

    <!-- ===== Google Fonts ===== -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

    <!-- ===== CSS links ===== -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mmenu.css">
    <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
    
    <style>
        
        ul li a:hover{
            
            color: black;
        }
        
           input[type="reset"] {
            background-color: white;
            padding: 10px 20px;
            border: 2px solid green;
            border-radius: 7px;
            
        }  
        input:hover[type="reset" ] {
            background-color: green;
            color: white;
            padding: 10px 20px;
            border: 2px solid green;
            border-radius: 7px;
        }  
        input[type="submit"] {
            background-color: white;
            padding: 10px 20px;
            border: 2px solid red;
            border-radius: 7px;
            
        }  
        input:hover[type="submit" ] {
            background-color: red;
            color: white;
            padding: 10px 20px;
            border: 2px solid red;
            border-radius: 7px;
        }  
        
           table, td, th {
            border:none;
           
        }
        
           
    </style>
</head>

<body>


    <!-- =============== START OF PRELOADER =============== -->
    <div class="loading">
        <div class="loading-inner">
            <div class="loading-effect">
                <div class="object"></div>
            </div>
        </div>
    </div>
    <!-- =============== END OF PRELOADER =============== -->



    <!-- =============== START OF RESPONSIVE - MAIN NAV =============== -->
    <nav id="main-mobile-nav"></nav>
    <!-- =============== END OF RESPONSIVE - MAIN NAV =============== -->



    <!-- =============== START OF WRAPPER =============== -->
    <div class="wrapper">


        <!-- =============== START OF HEADER NAVIGATION =============== -->
        <!-- Insert the class "sticky" in the header if you want a sticky header -->
        <header class="header header-fixed header-transparent text-white">
            <div class="container-fluid">

                <!-- ====== Start of Navbar ====== -->
                <nav class="navbar navbar-expand-lg">

                    <a class="navbar-brand" href="index.html">
                        <!-- INSERT YOUR LOGO HERE -->
                        <img src="assets/images/logo.svg" alt="logo" width="150" class="logo">
                        <!-- INSERT YOUR WHITE LOGO HERE -->
                        <img src="assets/images/logo-white.svg" alt="white logo" width="150" class="logo-white">
                    </a>

                    <button id="mobile-nav-toggler" class="hamburger hamburger--collapse" type="button">
                       <span class="hamburger-box">
                          <span class="hamburger-inner"></span>
                       </span>
                    </button>

                    <!-- ====== Start of #main-nav ====== -->
                    <div class="navbar-collapse" id="main-nav">

                        <!-- ====== Start of Main Menu ====== -->
                        <ul class="navbar-nav mx-auto" id="main-menu">
                            <!-- Menu Item -->
                            <li style="margin:20px"><a href="user_home.jsp">Home</a></li>
                             <li style="margin:20px"><a href="user_movie.jsp">Movies</a></li>
                           
                            <li style="margin:20px"><a href="index.jsp">Logout</a></li>
                            

                                <!-- Dropdown Menu -->
                       </ul>       
                        <!-- ====== End of Extra Nav ====== -->

                    </div>
                    <!-- ====== End of #main-nav ====== -->
                </nav>
                <!-- ====== End of Navbar ====== -->

            </div>
        </header>
        <!-- =============== END OF HEADER NAVIGATION =============== -->




        <!-- =============== START OF SLIDER REVOLUTION SECTION =============== -->
        <section id="slider" class="full-slider">
            <div class="rev-slider-wrapper fullscreen-container overlay-gradient">
                <div id="fullscreen-slider" class="rev_slider fullscreenbanner" style="display:none" data-version="5.4.1">
                    <ul>

                        <!-- ===== SLIDE NR. 1 ===== -->
                        <li data-transition="fade">
                            <!-- MAIN IMAGE -->
                            <img src="assets/images/slider/slider1.jpg" alt="Image" title="slider-bg" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina="">
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-resizeme" data-x="center" data-hoffset="" data-y="middle" data-voffset="['-30','-30','-30','-30']" data-responsive_offset="on" data-fontsize="['60','50','40','30']" data-lineheight="['60','50','40','30']" data-whitespace="nowrap"
                                data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                style="z-index: 5; color: #fff; font-weight: 900;">MOVIE BOOKING
                            </div>
                        </li>

                        <!-- ===== SLIDE NR. 2 ===== -->
                        <li data-transition="fade" data-slotamount="7" data-easein="default" data-easeout="default" data-masterspeed="2000">
                            <!-- MAIN IMAGE -->
                            <img src="assets/images/slider/slider2.jpg" alt="Image" title="slider-bg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina="">
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-resizeme" data-x="center" data-hoffset="" data-y="middle" data-voffset="['-30','-30','-30','-30']" data-responsive_offset="on" data-fontsize="['60','50','40','30']" data-lineheight="['60','50','40','30']" data-whitespace="nowrap"
                                data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                style="z-index: 5; color: #fff; font-weight: 900;">BEST SERVICE
                            </div>
                        </li>

                        <!-- ===== SLIDE NR. 3 ===== -->
                        <li data-transition="fade" data-slotamount="7" data-easein="default" data-easeout="default" data-masterspeed="2000">
                            <!-- MAIN IMAGE -->
                            <img src="assets/images/slider/slider3.jpg" alt="Image" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="3" class="rev-slidebg" data-no-retina>
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-resizeme" data-x="center" data-hoffset="" data-y="middle" data-voffset="['-30','-30','-30','-30']" data-responsive_offset="on" data-fontsize="['60','50','40','30']" data-lineheight="['60','50','40','30']" data-whitespace="nowrap"
                                data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                style="z-index: 5; color: #fff; font-weight: 900;">LATEST MOVIES & SERIES
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- ===== END OF REV SLIDER WRAPPER ===== -->


            <!-- ===== START OF SEARCH FORM WRAPPER ===== -->
            <div class="search-form-wrapper search-form-rev">
                <div class="container">

                    <!-- ===== START OF SEARCH FORM ===== -->
                   
                    <!-- ===== END OF SEARCH FORM ===== -->

                </div>
            </div>
            <!-- ===== END OF SEARCH FORM WRAPPER ===== -->
        </section>
        <!-- =============== START OF SLIDER REVOLUTION SECTION =============== -->




        <!-- =============== START OF LATEST MOVIES SECTION =============== -->
    
        <!-- =============== END OF LATEST MOVIES SECTION =============== -->

<br><br>

 <form id="form" name="form" method="post" action="">
  <table width="100%" ailgn="center">
  <tr>
    <td height="45" colspan="4"><div align="center" ><h1>Payment : </h1></div></td>
   </tr>
  
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2>Theater Name : </h2></div></td>
    <td width="25%" class="style8"><% out.print(tname); %></td>
    <td width="25%">&nbsp;</td>
  </tr>
  
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2>Movie Name : </h2></div></td>
    <td width="25%" class="style8"><% out.print(mname); %></td>
    <td width="25%">&nbsp;</td>
  </tr>
  
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2>Ticket Amount : </h2></div></td>
    <td width="25%" class="style8" id="price"><% out.print(tamount); %></td>
    <td width="25%">&nbsp;</td>
  </tr>
  
  <tr>
  
  
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2>Persons : </h2></div></td>
    <td width="25%"><input type="text" id="quan" name="person" onkeyup="detect()" /></td>
    <td width="25%">&nbsp;</td>
  </tr>
 
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2>Total Amount : </h2></div></td>
    <td width="25%"><input name="total" id="total" type="text" class="style2"></td>
    <td width="25%">&nbsp;</td>
  </tr>
  
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2>Acc Number : </h2></div></td>
    <td width="25%"><input name="accno"  type="text" class="style2"></td>
    <td width="25%">&nbsp;</td>
  </tr>
  
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2>CCv Number : </h2></div></td>
    <td width="25%"><input name="ccv"  type="text" class="style2"></td>
    <td width="25%">&nbsp;</td>
  </tr>
  <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2> Bank Name : </h2></div></td>
    <td width="25%"><input name="bn"  type="text" class="style2"></td>
    <td width="25%">&nbsp;</td>
  </tr>
  
  
  <tr>
    <td height="54">&nbsp;</td>
    <td><div align="center">
      <input name="submit" type="submit" class="ringcon" value="submit">
    </div></td>
    <td><input name="Clear" type="reset" class="ringcon" value="Clear"></td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>


<br><br>
        <!-- =============== START OF UPCOMING MOVIES SECTION =============== -->
        
        <!-- =============== END OF UPCOMING MOVIES SECTION =============== -->











<script>



function detect(){

let price=document.getElementById("price").innerText;

let qty=document.getElementById("quan").value;

document.getElementById("total").value=price*qty;


}


</script>



        <!-- =============== START OF LATEST TV SHOW SECTION =============== -->
  
        <!-- =============== END OF LATEST TV SHOW SECTION =============== -->




        <!-- =============== START OF HOW IT WORKS SECTION =============== -->
   
        <!-- =============== END OF HOW IT WORKS SECTION =============== -->




        <!-- =============== END OF COUNTER SECTION =============== -->
      
        <!-- =============== END OF COUNTER SECTION =============== -->




        <!-- =============== END OF BECOME PREMIUM SECTION =============== -->
      
        <!-- =============== END OF BECOME PREMIUM SECTION =============== -->




        <!-- =============== END OF BLOG SECTION =============== -->
        
        <!-- =============== END OF BLOG SECTION =============== -->





        <!-- =============== END OF SUBSCRIBE SECTION =============== -->
      
        <!-- =============== END OF SUBSCRIBE SECTION =============== -->




        <!-- =============== START OF FOOTER =============== -->
       
        <!-- =============== END OF FOOTER =============== -->

    </div>
    <!-- =============== END OF WRAPPER =============== -->




    <!-- =============== START OF GENERAL SEARCH WRAPPER =============== -->
  
    <!-- =============== END OF GENERAL SEARCH WRAPPER =============== -->



    <!-- =============== START OF LOGIN & REGISTER POPUP =============== -->
  
    <!-- =============== END OF LOGIN & REGISTER POPUP =============== -->



    <!-- ===== Start of Back to Top Button ===== -->
    <div id="backtotop">
        <a href="#"></a>
    </div>
    <!-- ===== End of Back to Top Button ===== -->
    
    
       <!-- ===== START OF FOOTER COPYRIGHT AREA ===== -->
            <div class="footer-copyright-area ptb30">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="d-flex">
                                <div class="links">
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="#">Privacy & Cookies</a></li>
                                        <li class="list-inline-item"><a href="#">Terms & Conditions</a></li>
                                        <li class="list-inline-item"><a href="#">Legal Disclaimer</a></li>
                                        <li class="list-inline-item"><a href="#">Community</a></li>
                                    </ul>
                                </div>

                                <div class="copyright ml-auto">All Rights Reserved by <a href="#">Movify</a>.</div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ===== END OF FOOTER COPYRIGHT AREA ===== -->



    <!-- ===== All Javascript at the bottom of the page for faster page loading ===== -->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.ajaxchimp.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.mmenu.js"></script>
    <script src="assets/js/jquery.inview.min.js"></script>
    <script src="assets/js/jquery.countTo.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <script src="assets/js/headroom.js"></script>
    <script src="assets/js/custom.js"></script>

    <!-- ===== Slider Revolution core JavaScript files ===== -->
    <script type="text/javascript" src="assets/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/jquery.themepunch.revolution.min.js"></script>

    <!-- ===== Slider Revolution extension scripts ===== -->
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.video.min.js"></script>

</body>

</html>
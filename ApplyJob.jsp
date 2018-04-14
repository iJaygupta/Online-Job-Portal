<!doctype html>
<html lang="en">


<!-- Mirrored from demo.diothemes.com/html/jobmarket/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Mar 2018 08:01:48 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Job Market</title>
    <!-- stylesheets-->
    <link rel="stylesheet" href="assets/css/general.css" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
   
    <link rel="stylesheet" type="text/css" href="assets/lib/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/lib/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="assets/lib/select2/css/select2.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="assets/css/color.css">
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
    
</head>
<body>
     <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("jemail")==null)
  {  request.setAttribute("errmsg","F");
     request.getRequestDispatcher("LoginJobseeker.jsp").forward(request, response);
     
  }
  %>
    <header>
        <!-- start topbar -->
        <div class="jbm-topbar">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12 text-left">
                        <ul class="dis-inline list-none jbm-topbar-contact">
                            <li>
                                <a href="tel:+0001234567890"><i class="fa fa-phone"></i>+ 000 123 456 7890</a>
                            </li>
                            <li>
                                <a href="mailto:contactadmin@jobmarket.com"><i class="fa fa-envelope"></i>contactadmin@jobmarket.com</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12 text-right hidden-xs hidden-sm">
                        <ul class="dis-inline list-none  jbm-topbar-login">
                            <li>
                                <a  href="LogoutServlet">Logout</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- end topbar -->
 
        <!-- start menu -->
        <div class="jbm-mennubar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                        <div class="jbm-logo">
                            <a href="index-2.html">
                                <img src="assets/img/logo.png" alt="Job Market Logo" class="img-responsive" />
                            </a>
                        </div>
                        <div class="jbm-menu-icon pull-right hidden-lg">
                            <a href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 302 302" xml:space="preserve" ><g><rect y="36" width="302" height="30" fill="#454545"/><rect y="236" width="302" height="30" fill="#454545"/><rect y="136" width="302" height="30" fill="#454545"/></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12 text-right hidden-md hidden-sm hidden-xs">
                        <nav class="jbm-menu-container">
                            <ul class="jbm-menu list-none dis-inline">
                                <li>
                                    <a href="index.jsp">Home</a>
                                    
                                </li>
                               
                                </li>
                                <li>
                                    <a href="About Us">Browse Jobs<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                   
                                </li>
                                <li>
                                    <a href="#">Interview Q@A<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="#">Locations</a>
                                        </li>
                                        <li>
                                            <a href="#">Job Full Time</a>
                                        </li>
                                        <li>
                                            <a href="#">Map Search</a>
                                        </li>
                                        <li>
                                            <a href="#">Job Search</a>
                                        </li>
                                        <li>
                                            <a href="#">Search with Filters</a>
                                        </li>
                                        <li>
                                            <a href="#">Search by Alphabets</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="Aboutus.jsp">About Us<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    
                                </li>
                                <li>
                                    <a href="#">Contact Us<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    
                                </li>
                                
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            
        </div>
        <!-- end menu -->
        <!-- start mobile menu -->
        
        <!-- end mobile menu -->
    

    <!-- start banner -->
    <div class="jbm-page-title page-title-bg-2">
        <div class="container">
             <div class="row">
                <div class="col-xs-12 text-center">
                    <span class="section-tit-line"></span><br>
                        <font size="10" color="white" >Job Application Form</font>
                        <p><a href="#"><i class="fa fa-home" aria-hidden="true"></i></a> &nbsp; > &nbsp;Fill the application form below and submit
                        &nbsp; > &nbsp;</p>
                </div>    
            </div>
        </div>
    </div>
    </header>
   
<% String str=(String)request.getAttribute("em"); %> 



    <div style="background-image: url(assets/img/bg.jpg)" class="w3ls-banne">
	
		<div class="containe">
			<div class="headin">
				<h2>Please Enter Your Details</h2>
				
			</div>
			<div class="agile-form">
				<form action="ApplicationServlet" method="post">
					<ul class="field-list">
						<li class="name">
							<label class="form-label"> Name <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text" name="name" placeholder="First Name and Last Name" required>
								
							</div>
						</li>
                                                <li>
							<label class="form-label">Highest Qualification Details<span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="qual" required>
									<option value="">Select Course</option>
									<option value="B.E./B.Tech">B.E./B.Tech </option>
									<option value="M.C.A."> M.C.A. </option>
									<option value="M.C.A.">M.B.A.</option>
									<option value="B.SC">B.SC.</option>
									<option value="B.C.A">B.C.A.</option>
									<option value="M.E/M.TECH">M.E./M.Tech</option>
                                                                        <option value="B.B.A.">B.B.A.</option>
                                                                        <option value="B.A.">B.A.</option>
                                                                        <option value="B.F.A.">B.F.A</option>
                                                                        <option value="B.Com">B.Com</option>
								</select>
							</div>
						</li>
                                                <li> 
							<label class="form-label"> Percentage <span class="form-required"> * </span>
							</label>
							<div class="form-input add">
								<span class="form-sub-label">
									<input type="text" name="grad" placeholder="Graduation %" required>
								</span>
								<span class="form-sub-label">
									<input type="text" name="twelth" placeholder="Twelth %" required>
								</span>
                                                            </div>
                                                  </li>
						<li>
							<label class="form-label"> Role You Applying For <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="role" placeholder="Software Engineer" required >
							</div>
						</li>
						<li>
							<label class="form-label"> Experience <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="exp" required >
									<option value="">Select Year</option>
									<option value="Fresher"> Fresher </option>
									<option value="0Year Year"> 0 </option>
									<option value="1year"> 1 </option>
									<option value="2year"> 2 </option>
									<option value="3year"> 3 </option>
									<option value="4year"> 4 </option>
                                                                        <option value="5year"> 5 </option>
                                                                        <option value="6year"> 6 </option>
                                                                        <option value="7year"> 7 </option>
								</select>
							</div>
						</li>
                                                <li> 
							<label class="form-label"> E-Mail Address <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="email" name="email" placeholder="Mail@example.com" required>
							
							</div>
						</li>
						<li> 
							<label class="form-label"> Phone Number <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="mobile" placeholder="Phone Number" required >
							</div>
						</li>
						<li>
							<label class="form-label"> Gender <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="gender" required>
									<option value="">Gender</option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									<option value="other"> Other </option>
								</select>
							</div>
						</li>
						<li>
							<label class="form-label"> Date of Birth <span class="form-required"> * </span></label>
							<div class="form-input dob">
								<span class="form-sub-label">
									<select name="day" class="day" required>
										<option>Day</option>
										<option value="1"> 1 </option>
										<option value="2"> 2 </option>
										<option value="3"> 3 </option>
										<option value="4"> 4 </option>
										<option value="5"> 5 </option>
										<option value="6"> 6 </option>
										<option value="7"> 7 </option>
										<option value="8"> 8 </option>
										<option value="9"> 9 </option>
										<option value="10"> 10 </option>
										<option value="11"> 11 </option>
										<option value="12"> 12 </option>
										<option value="13"> 13 </option>
										<option value="14"> 14 </option>
										<option value="15"> 15 </option>
										<option value="16"> 16 </option>
										<option value="17"> 17 </option>
										<option value="18"> 18 </option>
										<option value="19"> 19 </option>
										<option value="20"> 20 </option>
										<option value="21"> 21 </option>
										<option value="22"> 22 </option>
										<option value="23"> 23 </option>
										<option value="24"> 24 </option>
										<option value="25"> 25 </option>
										<option value="26"> 26 </option>
										<option value="27"> 27 </option>
										<option value="28"> 28 </option>
										<option value="29"> 29 </option>
										<option value="30"> 30 </option>
										<option value="31"> 31 </option>
									</select>
								</span>
								<span class="form-sub-label">
									<select name="month" required>
										<option>Month</option>
										<option value="January"> January </option>
										<option value="February"> February </option>
										<option value="March"> March </option>
										<option value="April"> April </option>
										<option value="May"> May </option>
										<option value="June"> June </option>
										<option value="July"> July </option>
										<option value="August"> August </option>
										<option value="September"> September </option>
										<option value="October"> October </option>
										<option value="November"> November </option>
										<option value="December"> December </option>
									 </select>
								</span>
								<span class="form-sub-label">
									<select name="year" required>
										<option>Year</option>
										<option value="1990"> 1990 </option>
										<option value="1990"> 1991 </option>
										<option value="1990"> 1992 </option>
										<option value="1990"> 1993 </option>
										<option value="1990"> 1994 </option>
										<option value="1990"> 1995 </option>
										<option value="1990"> 1996 </option>
										<option value="1990"> 1997 </option>
										<option value="1990"> 1998 </option>
										<option value="1990"> 1999 </option>
										<option value="1990"> 2000 </option>
										<option value="1990"> 2001 </option>
										<option value="1990"> 2002 </option>
										<option value="1990"> 2003 </option>
										<option value="1990"> 2004 </option>
										<option value="1990"> 2005 </option>
										<option value="1990"> 2006 </option>
										<option value="1990"> 2007 </option>
										<option value="1990"> 2008 </option>
										<option value="1990"> 2009 </option>
										<option value="1990"> 2010 </option>
										<option value="1990"> 2011 </option>
										<option value="1990"> 2012 </option>
										<option value="1990"> 2013 </option>
										<option value="1990"> 2014 </option>
										<option value="1990"> 2015 </option>
										<option value="1990"> 2016 </option>
										<option value="1990"> 2017 </option>
										<option value="1990"> 2018 </option>
									 </select>
								</span>
							</div>
						</li>
						
                                                  <li> 
							<label class="form-label"> Current Location <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="loc" placeholder="Banglore" required>
							
							</div>
						</li>
                                                <li>
                                                    <label class="form-label"> Skills <span class="form-required"> * </span>
                                                    </label>
								<div class="form-input">
								<input type="text" name="skills" placeholder="Java,ReactJS,MySQL,Hadoop,AWS" required>
							
							</div>
                                                  </li>
                                                  <li class="name">
							<label class="form-label"> Strengths <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text" name="str" placeholder="Eg-Self Motivated,Dedicated,Hard Working" required>
								         <input type="hidden" name="empem" value=<%=str%> >
							</div>
						</li>
                                               		
					</ul>
					<div class="submit_btn">
						<input type="submit" value="Send Application">
					</div>
				</form>	
			</div>
		</div>
		
	</div>
      
        
    </body>     
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    <div class="jbm-section-helpbox main-1st-bg padding-top-75 padding-bottom-100">
        <!-- start section title -->
        <div class="jbm-section-title title-white">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <span class="section-tit-line"></span>
                        <h2 class="white"><span class="fw-400">Need Some</span>  Help?</h2>
                        <p>Feel free to visit our <a href="faqs.html">FAQ section</a>. You can also send us an email <a href="contact-us.html">here</a> or give us a call on (123) 123 456 7890.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section title -->
    </div>
    <!-- end section helpbox -->
    <footer>
        <div class="footer-widget-container padding-top-115 padding-bottom-70">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="widget widget-text">
                            <img src="assets/img/logo.png" alt="footer-logo" class="img-responsive margin-bottom-30" />
                            <p>
                                JobMarket is a platform that has been designed to help both employers and candidates achieve success. We have more than 20 years of experience and we are growing stronger each and every day.
                                <a href="#">Read More..</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 col-xs-12">
                        <div class="widget ">
                            <h6 class="uppercase margin-top-0 margin-bottom-55">need help?</h6>
                            <ul class="widget-links">
                                <li>
                                    <i class="fa fa-angle-right" aria-hidden="true"></i><a href="about-us.html">About Us</a>
                                </li>
                                <li>
                                     <i class="fa fa-angle-right" aria-hidden="true"></i><a href="how-it-works.html">How it Works</a>
                                </li>
                                <li>
                                     <i class="fa fa-angle-right" aria-hidden="true"></i><a href="faqs.html">FAQ</a>
                                </li>
                                <li>
                                     <i class="fa fa-angle-right" aria-hidden="true"></i><a href="terms-and-conditions.html">Terms & Conditions</a>
                                </li>
                                <li>
                                     <i class="fa fa-angle-right" aria-hidden="true"></i><a href="contact-us.html">Contact Us</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                         <div class="widget ">
                            <h6 class="uppercase margin-top-0 margin-bottom-55">Useful Links</h6>
                            <ul class="widget-links">
                                <li>
                                    <i class="fa fa-angle-right" aria-hidden="true"></i><a href="404.html">404 Error</a>
                                </li>
                                <li>
                                     <i class="fa fa-angle-right" aria-hidden="true"></i><a href="pricing-plans.html">Pricing Plans</a>
                                </li>
                                <li>
                                     <i class="fa fa-angle-right" aria-hidden="true"></i><a href="career-jobmarket.html">Career at JobMarket</a>
                                </li>
                                <li>
                                     <i class="fa fa-angle-right" aria-hidden="true"></i><a href="sitemap.html">Sitemap</a>
                                </li>
                            </ul>
                    </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="widget last-widget">
                            <h6 class="uppercase margin-top-0 margin-bottom-55">Subscribe to our Newsletter</h6>
                            <div class="widget-subscribe">
                                <div class="form-group subsribe-email">
                                    <label for="subs-email" class="subs-email-label">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 14 14" xml:space="preserve" ><g><g><path d="M7,9L5.268,7.484l-4.952,4.245C0.496,11.896,0.739,12,1.007,12h11.986 c0.267,0,0.509-0.104,0.688-0.271L8.732,7.484L7,9z" fill="#c4c4c4"/><path d="M13.684,2.271C13.504,2.103,13.262,2,12.993,2H1.007C0.74,2,0.498,2.104,0.318,2.273L7,8 L13.684,2.271z" fill="#c4c4c4"/><polygon points="0,2.878 0,11.186 4.833,7.079 " fill="#c4c4c4"/><polygon points="9.167,7.079 14,11.186 14,2.875 " fill="#c4c4c4"/></g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
                                    </label>
                                    <input type="email" name="bs-suemail" id="subs-email" class="form-control" placeholder="Enter your email address" />
                                </div>
                                <div class="form-group">
                                   <input type="submit" class="jbm-button jbm-button-3" id="subscribe-btn" name="subscribe-btn" value="Subscribe">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom-bar main-2nd-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 hidden-xs hidden-sm text-left">
                        <p>Made with <i class="fa fa-heart"></i> by PSD_Market. All Rights Reserved.</p>
                    </div>
                    <div class="col-md-2 text-center back-top">
                        <a href="#" class="back-top-button">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a href="#" class="back-top-link">Back to Top</a>
                    </div>
                    <div class="col-md-5 text-right">
                        <ul class="list-none jbm-social-icon-1 ">
                            <li>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-behance"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-5 hidden-md hidden-lg text-center">
                        <p>Made with <i class="fa fa-heart"></i> by PSD_Market. All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</html>
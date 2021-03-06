﻿<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="WebForm1.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />        
    <title>Contact us - SV Coir Exports</title>
    <link href="css/reset.css" type="text/css" rel="stylesheet" />
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <link href="css/anylinkcssmenu.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="scripts/anylinkcssmenu.js"></script>
    <script type="text/javascript">
        anylinkcssmenu.init("anchorclass")
    </script>
    <style type="text/css"></style>
   
</head>    
    <body>

    <div class="topshade"></div>
    <div class="header">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="hdrTbl">
            <tr>
                <td width="26%"><a href="index.html">
                    <img src="images/logo.png" alt="" width="260" height="60" border="0" class="logo" /></a></td>
                <td width="74%">
                    <table width="100%" border="0" align="right" cellpadding="4" cellspacing="0">
                        <tr>
                            <td>
                                <ul class="menu1">
                                    <li><a href="about.html">About Us</a></li>
                                    <li>|</li>
                                    <li><a href="faq.html">FAQs</a></li>
                                    <!--<li>|</li>
						<li><a href="sitemap.html">Sitemap</a></li>-->
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <ul class="menu2">
                                    <li><a href="about-cocopeat.html">About Cocopeat</a></li>
                                    <li>|</li>
                                    <li><a class="anchorclass" rel="submenu1">Products</a></li>
                                    <li>|</li>
                                    <li><a href="quality-control.html">Quality Control</a></li>
                                    <li>|</li>
                                    <li><a href="manufacturing.html">Manufacturing</a></li>
                                    <li>|</li>
                                    <!--<li><a href="photo-gallery.html">Photos</a></li>
						<li>|</li>-->
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="slideshow">
        <img src="images/slide1.jpg" width="920" height="138" />
    </div>
    <div class="content">

        <div style="float: left; width: 600px; margin: 0 0 0 30px;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <h1>Reach us</h1>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td valign="top">
                        <form runat="server" method="post">
                            <table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#cccccc">
                                <tr>
                                    <td width="100" align="right" bgcolor="#eeeeee" class="header1">&nbsp;From</td>
                                    <td bgcolor="#FFFFFF">
                                        <asp:TextBox ID="txtTo" runat="server" Columns="50"></asp:TextBox></td>
                                </tr>
                                <!--<tr>
						<td width="100" align="right" bgcolor="#eeeeee" class="header1">&nbsp;From</td>
						<td bgcolor="#FFFFFF"><asp:TextBox ID="txtFrom" runat="server" Columns="50"></asp:TextBox></td>
						</tr>
						<tr>
						<td align="right" bgcolor="#eeeeee" class="header1">&nbsp;SMTP Server</td>
						<td bgcolor="#FFFFFF"><asp:TextBox ID="txtSMTPServer" runat="server" Columns="50"></asp:TextBox></td>
						</tr>-->
                                <tr>
                                    <td width="100" align="right" bgcolor="#eeeeee" class="header1">&nbsp;Subject</td>
                                    <td bgcolor="#FFFFFF">
                                        <asp:TextBox ID="txtSubject" runat="server" Columns="50"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td width="100" align="right" bgcolor="#eeeeee" class="header1">&nbsp;Body</td>
                                    <td bgcolor="#FFFFFF">
                                        <asp:TextBox ID="txtBody" runat="server" Columns="40" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" bgcolor="#eeeeee" class="header1">Action</td>
                                    <td bgcolor="#FFFFFF">
                                        <asp:Button ID="btnSubmit"  runat="server" Text="Send Email" OnClick="btnSubmit_Click1"  /></td>
                                </tr>
                                <tr>
                                    <td width="100" align="right" bgcolor="#eeeeee" class="header1">Status</td>
                                    <td bgcolor="#FFFFFF" class="basix">
                                        <asp:Literal ID="litStatus" runat="server"></asp:Literal></td>
                                </tr>
                            </table>
                            </form>
        </div>
     
				
					<!--<form>
					<table width="100%" border="0" cellspacing="5" cellpadding="0" id="contForm">
						<tr>
							<td width="190"><label for="name">Name <span class="mandatory">*</span></label></td>
							<td><input type="text" id="name" /></td>
						</tr>
						<tr>
							<td><label for="compname">Company/Organizaiton Name</label></td>
							<td><input type="text" id="compname" /></td>
						</tr>
						<tr>
							<td><label for="contactnum">Contact Number <span class="mandatory">*</span></label></td>
							<td><input type="text" id="contactnum" /></td>
						</tr>
						<tr>
								<td>Address</td>
								<td><textarea cols="37" rows="2" id="email2"></textarea></td>
						</tr>
						<tr>
							<td><label for="email">Email Address <span class="mandatory">*</span></label></td>
							<td><input type="text" id="email" /></td>
						</tr>
						<tr>
							<td><label for="webaddress">Your Website Address</label></td>
							<td><input type="text" id="webaddress" /></td>
						</tr>
						<tr>
								<td>Enquiry <span class="mandatory">*</span></td>
								<td><textarea cols="37" rows="5"></textarea></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								<input type="submit" value="Submit" onclick="validateform();" />
								<input type="reset" value="Reset" />
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table>
					</form>-->
        </td>
			</tr>
			<tr>
                <td valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><strong>CORPORATE ADDRESS:</strong></td>
                            <td><strong>COMPANY ADDRESS:</strong></td>
                        </tr>
                        <tr>
                            <td valign="top">SV Coir exports<br />
                                F-103, Vijay lakshmi Apts, Methodist colony,<br />
                                Kundanbagh, Begumpet<br />
                                Hyderabad - 500016<br />
                                Telangana, INDIA<br />
                                Phone: +91-98493-72243<br />
                                Contact Person: Naveen<br />
                                Email: <a href="mailto:contact@svcoirexports.com"><strong>contact@svcoirexports.com</strong></a></td>
                            <td valign="top">SV Coir exports<br />
                                Yedidha-533234<br />
                                Mandapeta Mandal<br />
                                Andhra Pradesh<br />
                                INDIA<br />
                                Phone: +91-98662-00414<br />
                                Tele Fax : +91-8855 232948<br />
                                Contact Person: Murali</td>
                        </tr>
                    </table>
                </td>
            </tr>
        <tr>
            <td valign="top">&nbsp;</td>
        </tr>
        <tr>
            <td valign="top">
                <iframe width="580" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Mandapeta+Rd,+Yeditha,+Andhra+Pradesh,+India&amp;aq=0&amp;oq=Mandapeta+&amp;sll=16.864579,81.895872&amp;sspn=0.012506,0.01929&amp;ie=UTF8&amp;hq=&amp;hnear=Mandapeta+Rd,+Yeditha,+East+Godavari,+Andhra+Pradesh,+India&amp;t=m&amp;ll=16.864594,81.895866&amp;spn=0.028749,0.049782&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
                <br />
                <small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Mandapeta+Rd,+Yeditha,+Andhra+Pradesh,+India&amp;aq=0&amp;oq=Mandapeta+&amp;sll=16.864579,81.895872&amp;sspn=0.012506,0.01929&amp;ie=UTF8&amp;hq=&amp;hnear=Mandapeta+Rd,+Yeditha,+East+Godavari,+Andhra+Pradesh,+India&amp;t=m&amp;ll=16.864594,81.895866&amp;spn=0.028749,0.049782&amp;z=14&amp;iwloc=A" style="color: #0000FF; text-align: left">View Larger Map</a></small>
            </td>
        </tr>
        <tr>
            <td valign="top">&nbsp;</td>
        </tr>
        </table>
    </div>
    <div style="float: right; width: 275px; margin: 0 30px 0 0;">
        <div class="promo">
            <img src="images/promo.png" width="273" height="117" /></div>
        <div>
            <h2>Biodegradable Cocopeat</h2>
            <p>Cocopeat is also known as Coir pith, Coir Fiber pith, Coir dust. It is used as a solid additive, due to low level of nutrition content in the Cocopeat it is mixed with nutrients and used as growing medium for plants.</p>
            <ul class="homeul">
                <li><a href="faq.html">What is cocopeat and its uses?</a></li>
                <li><a href="faq.html">What is the lead time for orders: Shipping time?</a></li>
                <li><a href="faq.html">Can you handle custom made packing?</a></li>
                <li><a href="faq.html">Where's your company based at ?</a></li>
                <li><a href="faq.html">Can you supply us your products regularly?</a></li>
                <li><a href="faq.html">Many people often talk of excessive salts in coconut husk based substrates;how does your company deal with this problem?</a></li>
                <li><a href="faq.html">Can I use Cocopeat in my present gutter system &amp; containers where I grow Roses?</a></li>
                <li><a href="faq.html">Which is the Best Option to contact your company?</a></li>
            </ul>
        </div>

        <div class="newsletter">
            <h2>Newsletter</h2>
            <input type="text" />
            <input type="button" value="Subscribe" />
        </div>
    </div>
    </div>
    <div class="bottomshade"></div>
    <div style="clear: both;"></div>
    <div class="footer">
        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <!--<td>Find us elsewhere</td>-->
                <td align="right">SV Coir Exports    2013<!--  |  Privacy Policy--><br />
                    <a href="about.html">About Us</a> |  <a href="about-cocopeat.html">About CocoPeat</a> |  <a href="compressed-cocopeat-bales.html">Compressed CocoPeat Bales</a>  |  <a href="coconut-fiber-120kgs.html">Compressed CocoPeat Briquettes</a>  |  <a href="coconut-fiber-50kgs.html">Coconut Fiber</a>  |  <a href="curled-coir.html">Curled Coir</a>  |  <a href="quality-control.html">Quality Control</a> |  <a href="manufacturing.html">Manufacturing</a>
                    <!--|  <a href="photo-gallery.html">Photos</a>-->
                    <!--|  <a href="#">Support</a>-->
                    |  <a href="faq.html">FAQs</a> |  <a href="contact.html">Contact</a><!-- |  <a href="#">Sitemap</a>--></td>
            </tr>
        </table>
    </div>
    <div class="btmmargin"></div>
    <!--1st anchor link and menu -->
    <div id="submenu1" class="anylinkcss">
        <ul>
            <li><a href="compressed-cocopeat-bales.html">Compressed Cocopeat Bales</a></li>
            <li><a href="coconut-fiber-50kgs.html">Coconut Fiber 50 kgs</a></li>
            <li><a href="coconut-fiber-120kgs.html">Coconut Fiber 120 kgs</a></li>
            <li><a href="curled-coir.html">Curled Coir</a></li>
            <li><a href="coir-yarn.html">Coir Yarn</a></li>
            <li><a href="cocopeat-composed.html">Cocopeat compost</a></li>
        </ul>
    </div>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindatains.aspx.cs" Inherits="admindatains" %>

d<<!DOCTYPE html>
<!--
Template Name: Drywest
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Easy Leave - Profile Home</title> 
    <style> input{ color:black; } </style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
    <form runat="server">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul>
      <li><i class="fa fa-clock-o"></i> Mon. - Fri. 8am - 5pm</li>
      <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
      <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
      <li><a href="#" title="Login"><i class="fa fa-lg fa-sign-in"></i></a></li>
      <li><a href="#" title="Sign Up"><i class="fa fa-lg fa-edit"></i></a></li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Easy Leave - Admin Home</a></h1>
    </div>
    <div class="fl_right"> <asp:Button ID="goback_btn" runat="server" Text="Go Back"  CssClass="btn" CausesValidation="False" OnClick="goback_btn_Click"  />    </div>
    <!-- ################################################################################################ -->
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row2">
    <nav id="mainav" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
          <%--<ul>
            <li><a href="pages/gallery.html">Gallery</a></li>
            <li><a href="pages/full-width.html">Full Width</a></li>
            <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
            <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
            <li><a href="pages/basic-grid.html">Basic Grid</a></li>
          </ul>
  --%>      </li>
       <%-- <li><a class="drop" href="#">Leave Approval</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a class="drop" href="#">Level 2 + Drop</a>
              <ul>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
              </ul>
            </li>
            <li><a href="#">Level 2</a></li>
          </ul>
        </li>--%>
        <%--<li><a href="#">Leave Approval</a></li>--%>
        <%--<li><a href="#">Long Link Text</a></li>--%>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  
  </div>
    
    
			<h1 style="font-size: small">&nbsp;&nbsp; </h1>
            <h1 style="font-size: small">&nbsp;</h1>
            <h1 style="font-size: small; font-weight: bold; text-decoration: underline; color: #CCCCCC;">Total Working-days&nbsp; This Month</h1>
			<div>
				<%--<input type="text" placeholder="Leave From" required="" id="usernam" />--%>
                
			
			
				<%--<input type="password" placeholder="Leave To" required="" id="pass" />--%>

			
			
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                				<asp:TextBox ID="totaldays"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black" placeholder="Total Working Days"></asp:TextBox><asp:RegularExpressionValidator ID="totaldays_vtr" runat="server" ErrorMessage="*Total Days Incorrect Format" ControlToValidate="totaldays" ValidationExpression="[0-9]{2}" ForeColor="Red"></asp:RegularExpressionValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="totaldays_rfvtr" runat="server" ErrorMessage="*Enter Total W-Days" ControlToValidate="totaldays" ForeColor="Red"></asp:RequiredFieldValidator>


			</div>
			
            <div>
				<%--<input type="submit" value="Submit" class="auto-style1" />--%>
                <asp:Button ID="submit" runat="server" Text="Submit" class="btn" CssClass="auto-style2" BackColor="White" ForeColor="Black" OnClick="submit_Click"  />
			    <br />
                <br />
                <br />
			</div>
		
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
        </form>
</body>
</html>
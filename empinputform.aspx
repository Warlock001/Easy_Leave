<%@ Page Language="C#" AutoEventWireup="true" CodeFile="empinputform.aspx.cs" Inherits="empinputform" %>

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
    <div class="fl_right"><a class="btn" href="adminleavemanage.aspx">Go Back</a></div>
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
    <div style=" display: block;
    text-align: center;">
    <form runat="server" style="display: inline-block;
    margin-left: auto;
    margin-right: auto;
    text-align: left;" autocomplete="off" action="">
			<h1 style="font-size: small">&nbsp;&nbsp; </h1>
            <h1 style="font-size: small">&nbsp;</h1>
            <h1 style="font-size: small; font-weight: bold; text-decoration: underline; color: #CCCCCC;">Employee Details</h1>
			<div>
				<%--<input type="text" placeholder="Leave From" required="" id="usernam" />--%>
   <p>Enter Name:</p><asp:TextBox ID="name"  runat="server"  Width="278px" Height="37px" BackColor="#999999" ForeColor="Black" OnTextChanged="name_TextChanged"></asp:TextBox><asp:RegularExpressionValidator ID="name_vtr" runat="server" ErrorMessage="*Enter only Alphabets" ControlToValidate="name" ValidationExpression="[a-zA-Z ]*$" ForeColor="Red"></asp:RegularExpressionValidator> &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="name_rfvtr" runat="server" ErrorMessage="*Enter Name" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
                
			
			
				<%--<input type="password" placeholder="Leave To" required="" id="pass" />--%>
                <p>Enter Date Of Birth:</p><asp:TextBox ID="dob"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black"  TextMode="Date" ToolTip="Enter Date of Birth">Date Of Birth</asp:TextBox><asp:RegularExpressionValidator ID="dob_vtr" runat="server" ErrorMessage="*Invalid Date Of Birth Format" ControlToValidate="dob" ForeColor="Red" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"></asp:RegularExpressionValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="dob_rfvtr" runat="server" ErrorMessage="*Enter Date Of Birth" ControlToValidate="dob" ForeColor="Red"></asp:RequiredFieldValidator>

			
			
				 <p>Enter Address:</p><asp:TextBox ID="add"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="add_rfvtr" runat="server" ErrorMessage="*Enter Address" ControlToValidate="add" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="desg_ddl" runat="server" Width="280px" Height="37px" BackColor="#CCCCCC" ForeColor="Black" OnSelectedIndexChanged="desg_ddl_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Select Designation</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Asst Manager</asp:ListItem>
                    <asp:ListItem>Section Officer</asp:ListItem>
                    <asp:ListItem>Assistant</asp:ListItem>
                    <asp:ListItem>Clerk</asp:ListItem>
                    <asp:ListItem>Peon</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="desg_vtr" runat="server" Text="*Select Correct Designation" ForeColor="Red"></asp:Label>
                				 <p>Enter Phone Number:</p><asp:TextBox ID="phno"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black" ></asp:TextBox><asp:RegularExpressionValidator ID="phno_vtr" runat="server" ErrorMessage="*Phone Number Incorrect Format" ControlToValidate="phno" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="phno_rfvtr" runat="server" ErrorMessage="*Enter Phone Number" ControlToValidate="phno" ForeColor="Red"></asp:RequiredFieldValidator>
                				 <p>Enter E-mail:</p><asp:TextBox ID="email"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black" ></asp:TextBox><asp:RegularExpressionValidator ID="email_vtr" runat="server" ErrorMessage="*Invalid E-mail Format" ControlToValidate="email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="email_rfvtr" runat="server" ErrorMessage="*Enter E-mail" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                				 <asp:TextBox ID="leavemonth"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black"  Visible="False"></asp:TextBox>
                				 <p>Enter Required Username:</p><asp:TextBox ID="username"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black" ></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="username_rfvtr" runat="server" ErrorMessage="*Username Required" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>
                				 <p>Enter Password:</p><asp:TextBox ID="pass"  runat="server" Width="278px" Height="37px" BackColor="#999999" ForeColor="Black" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="pass_rfvtr" runat="server" ErrorMessage="*Password Required" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>

			    <h3> <asp:Label ID="lstatus" runat="server" Text="Label" Visible="False"></asp:Label></h3>

			</div>
			
            <div>
				<%--<input type="submit" value="Submit" class="auto-style1" />--%>
                <asp:Button ID="submit" runat="server" Text="Submit" class="btn" CssClass="auto-style2" OnClick="submit_Click" BackColor="White" ForeColor="Black"  />
			    <br />
                <br />
                <br />
			</div>
		</form> </div>
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminmonthreport.aspx.cs" Inherits="adminmonthreport" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<form id="form1" runat="server">


<<!DOCTYPE html>
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
    <div class="fl_right"><%--<a class="btn" href="login.aspx">Logout</a>--%>  
      </div>
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
        <li><a href="adminempreport.aspx">Employee Report</a></li>
        <li><a href="#">Monthly Report</a>
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
       
        <li><a href="adminhome.aspx">Go Back</a></li>
        <%--<li><a href="#">Long Link Text</a></li>--%>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  
  </div>
    
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
    <p style="text-decoration: underline; font-size: medium; color: #FF3300; font-weight: bold; font-style: normal"> Employees Monthly Leave Statistics:</p>
    <p style="text-decoration: underline; font-size: medium; color: #FF3300; font-weight: bold; font-style: normal"> &nbsp;</p>
    <p style="text-decoration: underline; font-size: medium; color: #FF3300; font-weight: bold; font-style: normal"> &nbsp;</p>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" XValueMember="name" YValueMembers="leavestaken" YValuesPerPoint="2"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:easyleaveConnectionString %>" SelectCommand="SELECT [name], [leavestaken], [totaldays] FROM [report] ORDER BY [empid] DESC"></asp:SqlDataSource>
    <asp:Button ID="exportpdf_btn" runat="server" Text="Export As Pdf"  BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="37px" Width="176px" OnClick="exportpdf_btn_Click"  />
</form>
</body>
</html>
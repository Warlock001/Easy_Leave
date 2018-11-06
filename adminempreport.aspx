<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminempreport.aspx.cs" Inherits="adminempreport" %>

<style type="text/css">
    .auto-style1 {
        margin-right: 0px;
    }
</style>

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
        <li class="active"><a href="#">Employee Report</a></li>
        <li><a href="adminmonthreport.aspx">Monthly Report</a>
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
<h4 style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: medium; font-weight: normal; color: #CC3300; text-decoration: underline"> Employee Report</h4>

    <p>Select Employee:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="empname" DataValueField="empname" Height="35px" Width="194px" BackColor="#CCCCCC" ForeColor="Black"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:easyleaveConnectionString %>" SelectCommand="SELECT DISTINCT [empname] FROM [appstatus]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p> 
    <asp:Button ID="submit_btn" runat="server" Text="Submit" OnClick="submit_btn_Click" BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="37px" Width="176px" />
    <h3>&nbsp;</h3>
    <p style="font-size: medium; font-style: normal; text-decoration: underline">Individual Leave Details:</p>
    <asp:gridview ID="gridview1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="70px" Width="625px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField HeaderText="Emp-ID" DataField="empid" />
            <asp:BoundField HeaderText="Name" DataField="empname" />
            <asp:BoundField HeaderText="Leave From" DataField="lfrom" />
            <asp:BoundField HeaderText="Leave To" DataField="lto" />
            <asp:BoundField HeaderText="No. Of Days" DataField="nodays" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:gridview> 
    <asp:Button ID="exportpdf_btn" runat="server" Text="Export As Pdf"  BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="37px" Width="176px" OnClick="exportpdf_btn_Click" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:easyleaveConnectionString %>" SelectCommand="SELECT [empid], [empname], [lfrom], [lto], [nodays] FROM [appstatus] WHERE (([status] = @status) AND ([empname] = @empname))">
        <SelectParameters>
            <asp:Parameter DefaultValue="approve" Name="status" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="empname" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   <h3>&nbsp;</h3>
    <p style="font-size: medium; font-style: normal; text-decoration: underline">Total Leave Details:</p>
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="107px" Width="583px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
         <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="empid" HeaderText="Emp-ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="leavestaken" HeaderText="Total Leave Taken" />
            <asp:BoundField DataField="totaldays" HeaderText="Total Working Days" />
        </Columns>
         <FooterStyle BackColor="Tan" />
         <HeaderStyle BackColor="Tan" Font-Bold="True" />
         <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
         <SortedAscendingCellStyle BackColor="#FAFAE7" />
         <SortedAscendingHeaderStyle BackColor="#DAC09E" />
         <SortedDescendingCellStyle BackColor="#E1DB9C" />
         <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
        <asp:Button ID="exportpdfa_btn" runat="server" Text="Export As Pdf"  BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="37px" Width="176px" OnClick="exportpdfa_btn_Click" />

</form>

</body>
</html>
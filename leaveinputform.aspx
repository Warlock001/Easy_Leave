<%@ Page Language="C#" AutoEventWireup="true" CodeFile="leaveinputform.aspx.cs" Inherits="leaveinputform" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Leave Form</title>
  
  
  
      <link rel="stylesheet" href="stylea.css">
     <script src="indexa.js"></script>
  
    <style type="text/css">
        .auto-style2 {
            left: 20px;
            top: 0px;
            height: 54px;
            width: 7px;
            margin-bottom: 29px;
        }
        .auto-style3 {
            width: 363px;
            height: 66px;
        }
        .auto-style4 {
            left: 0px;
            top: 0px;
            height: 328px;
        }
        .auto-style5 {
            left: 13px;
            top: -32px;
        }
    </style>
  
</head>

<body>
<div class="container">
	<section id="content">
		<form id="form1"  autocomplete="off" runat="server" class="auto-style4">
			<h1>Leave Application</h1>
			<div>
				<%--<input type="text" placeholder="Leave From" required="" id="usernam" />--%>
                <p style="color: #666666; font-weight: bold;">Leave From:</p><asp:TextBox ID="lfrom" placeholder="Leave From [MM/DD/YY]" runat="server"  Width="338px" Height="31px" TextMode="Date"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*From Date Required" ControlToValidate="lfrom" ForeColor="Red"></asp:RequiredFieldValidator><%--<asp:RegularExpressionValidator ID="fromdatetime_revtr" runat="server" ErrorMessage="*Invalid From Date" ControlToValidate="lfrom" ForeColor="Red" ValidationExpression="^(?:0[1-9]|1[12])/(?:[0-2][0-9]|3[01])/[0-9]{4}"></asp:RegularExpressionValidator>--%>
                
			
			
                    <br />
                <p style="color: #666666; font-weight: bold">Leave To:</p><asp:TextBox ID="lto" placeholder="Leave To [MM/DD/YY]" runat="server" Width="338px" Height="31px" OnTextChanged="lto_TextChanged" TextMode="Date"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*To Date Required" ControlToValidate="lto" ForeColor="Red"></asp:RequiredFieldValidator><%--<asp:RegularExpressionValidator ID="todatetime_revtr" runat="server" ErrorMessage="*Invalid To Date" ControlToValidate="lto" ForeColor="Red" ValidationExpression="^(?:0[1-9]|1[12])/(?:[0-2][0-9]|3[01])/[0-9]{4}"></asp:RegularExpressionValidator>--%>

			
			
<%--				<asp:TextBox ID="noofdays" placeholder="Number of Days" runat="server" Width="16px" Height="16px" TextMode="Number" Visible="False"></asp:TextBox>--%>

                <br />
                <br />

<asp:Label ID="datelabel" runat="server" Text="*Invalid From Date" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="ltodatelabel" runat="server" Text="*Invalid To date" ForeColor="Red"></asp:Label>
			</div>
			
            <div class="auto-style3">
				<%--<input type="submit" value="Submit" class="auto-style1" />--%>
                <asp:Button ID="submit" runat="server" Text="Submit" class="auto-style1" CssClass="auto-style2" OnClick="submit_Click" />
				&nbsp;<br />
                <br />
                <asp:Button ID="goback_btn" runat="server" CssClass="auto-style5" Text="Go Back" OnClick="go_back_click" CausesValidation="False" />
                <br />
                <br />
            </div>
		</form>
        <!-- form -->
		<%--<div class="button">
			<a href="#">Download source file</a>
		</div>--%><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>


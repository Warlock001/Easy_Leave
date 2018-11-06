<%@ Page Language="C#" AutoEventWireup="true" CodeFile="leaveextension.aspx.cs" Inherits="leaveextension" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Leave Form</title>
  
  
  
      <link rel="stylesheet" href="stylea.css">
     <script src="indexa.js"></script>
  
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 196px;
        }
        .auto-style2 {
            height: 119px;
        }
        .auto-style3 {
            width: 358px;
            height: 78px;
        }
    </style>
  
</head>

<body>
<div class="container">
	<section id="content">
		<form id="form1"  autocomplete="off" runat="server">
			<h1>Leave Extension</h1>
			<div>
				<%--<input type="text" placeholder="Leave From" required="" id="usernam" />--%>
    <%--<asp:TextBox ID="lfrom" placeholder="Leave From" runat="server"></asp:TextBox>--%>
               <h4 class="auto-style2"> Select Leave To Extend: <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="lfrom" DataValueField="lfrom"></asp:DropDownList>--%>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:easyleaveConnectionString %>" SelectCommand="SELECT [lfrom] FROM [appstatus] WHERE ([empid] = @empid)">
                       <SelectParameters>
                           <asp:SessionParameter Name="empid" SessionField="empid" Type="Int32" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               
                   &nbsp;
                 
               <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="lto" DataValueField="lto" ></asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:easyleaveConnectionString %>" SelectCommand="SELECT [lto] FROM [appstatus] WHERE ([empid] = @empid)">
                       <SelectParameters>
                           <asp:SessionParameter Name="empid" SessionField="empid" Type="Int32" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               
               </h4>
                <p style="color: #666666; font-weight: bold">Extension Date:</p><asp:TextBox ID="lextend" placeholder="Extending to" runat="server" TextMode="Date" Width="278px" Height="37px" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="lextnd_vtr" runat="server" ErrorMessage="*Extend Date Required" ControlToValidate="lextend" ForeColor="Red"></asp:RequiredFieldValidator><%--<asp:RegularExpressionValidator ID="lextend_revtr" runat="server" ErrorMessage="*Invalid Extend Date" ControlToValidate="lextend" ForeColor="Red" ValidationExpression="^(?:0[1-9]|1[12])/(?:[0-2][0-9]|3[01])/[0-9]{4}"></asp:RegularExpressionValidator>--%>
			</div>
			<div class="auto-style3">
				<%--<asp:TextBox ID="noofdaysext" placeholder="Number of Days Extending" runat="server" Visible="False"></asp:TextBox>--%>

			    

			    <asp:Label ID="lextenderror" runat="server" Text="*Invalid Extension Date" ForeColor="Red"></asp:Label>

			    

				<%--<input type="submit" value="Request" class="auto-style1" />--%>
                <asp:Button ID="submit_btn" runat="server" Text="Request" CssClass="auto-style1" OnClick="submit_btn_Click" />
				&nbsp;<asp:Button ID="goback_btn" runat="server" Text="Go Back" CausesValidation="False" OnClick="goback_btn_Click" />

			    

			</div>
		</form>
	</section><!-- content -->
</div><!-- container -->
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploaddoc.aspx.cs" Inherits="uploaddoc" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Leave Form</title>
  
  
  
      <link rel="stylesheet" href="stylea.css">
     <script src="indexa.js"></script>
  
    <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 0px;
            height: 322px;
        }
    </style>
  
</head>

<body>
<div class="container">
	<section id="content">
		<form id="form1" runat="server" class="auto-style1">
			<h1>Upload Documents</h1>
			<div>
				<%--<input type="text" placeholder="Leave From" required="" id="usernam" />--%>
    <%--<asp:TextBox ID="lfrom" placeholder="Leave From" runat="server"></asp:TextBox>--%>
               <h4> Select related leave:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="lto" DataValueField="lto"></asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:easyleaveConnectionString %>" SelectCommand="SELECT [lto] FROM [appstatus] WHERE ([empid] = @empid2)">
                       <SelectParameters>
                           <asp:SessionParameter Name="empid2" SessionField="empid" Type="Int32" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                </h4>
			   <h5>Upload:<asp:FileUpload ID="FileUpload1" runat="server" /></h5><asp:RegularExpressionValidator ID="fileupload_revtr" runat="server" ErrorMessage="*Only Upload JPEG Images" ControlToValidate="FileUpload1" ValidationExpression="(.*\.([Jj][Pp][Gg])|.*\.([Jj][Pp][Ee][Gg])$)" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
			<div>
				<%--<input type="password" placeholder="Leave To" required="" id="pass" />--%>
<%--                    <asp:TextBox ID="lextend" placeholder="Extending to" runat="server"></asp:TextBox>--%>
                      
			</div>
			<div>
<%--				<asp:TextBox ID="noofdaysext" placeholder="Number of Days Extending" runat="server"></asp:TextBox>--%>

			    <h3> <asp:Label ID="lstatus" runat="server" Text="Label" Visible="False"></asp:Label></h3>

			</div>
            <div>
<%--				<input type="submit" value="Upload" class="auto-style1" />--%>
                <asp:Button ID="upload_btn" runat="server" Text="Upload" OnClick="upload_btn_Click" />
				&nbsp;
                <asp:Button ID="goback_btn" runat="server" Text="Go Back" OnClick="goback_btn_Click" CausesValidation="False" />
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


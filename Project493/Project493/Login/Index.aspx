<%@ Page Language="C#" AutoEventWireup="true"  UnobtrusiveValidationMode="None" CodeBehind="Index.aspx.cs" Inherits="Project493.Login.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welocme to Project493</title>
    <link rel="stylesheet" href="../Styles/index-style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav class="topBar">
        <span style="color:white;font-size:30px;">Project 493</span>
    </nav>
        <div class="centerDiv">
            <p>
                The all about project description goes here.           
                The all about project description goes here.
                The all about project description goes here.
                The all about project description goes here.
                The all about project description goes here.
                The all about project description goes here.
                The all about project description goes here.

            </p>
            <asp:Button runat="server" Text="Sign up" ID="signup" />
            <asp:Button runat="server" Text="Log in" ID="login" />
        </div>
         <div id="bottom" class="bottomDiv" hidden="hidden">
              <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt">
                  <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
        </div>
    </div>
       
      
            
      
    </form>
</body>
</html>

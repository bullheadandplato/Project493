<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="Index.aspx.cs" Inherits="Project493.Login.Index" %>

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
                <span style="color: white; font-size: 30px;">Project 493</span>
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
                <asp:ScriptManager ID="sm" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:Button runat="server" Text="Sign up" ID="signup" OnClientClick="javascript:signupVisible();"/>
                        <asp:Button runat="server" Text="Log in" ID="login" OnClientClick="javascript:loginVisible();"/>
                             </ContentTemplate>
                </asp:UpdatePanel>
                </div>
                       <div id="bottom" class="bottomDiv">
                            
                                            <table style="font-family:Verdana;font-size:100%; background-color:antiquewhite;">
                                                <tr>
                                                    <td align="center" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;">Sign Up for Your New Account</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" ValidateRequestMode="Enabled" ValidationGroup="signup" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="signup">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" ValidateRequestMode="Enabled" ValidationGroup="signup" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="signup">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ValidateRequestMode="Enabled" ValidationGroup="signup" ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="signup">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Email" ValidateRequestMode="Enabled" ValidationGroup="signup" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="signup">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Question" ValidateRequestMode="Enabled" ValidationGroup="signup" runat="server">What are you good at?</asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="signup">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Answer" ValidateRequestMode="Enabled" ValidationGroup="signup" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="signup">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <asp:RegularExpressionValidator ControlToValidate="Email" Display="Dynamic" runat="server" ErrorMessage="Please enter valid email address" ValidationExpression="^[_A-Za-z0-9-\+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$" ValidationGroup="signup" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="signup" ForeColor="#FF3300"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                            </table>
                           <asp:Button ValidationGroup="signup" runat="server" OnClick="signup_Click" CssClass="opButtons" Text="Create User" />
                        </div>
                <div id="loginDiv" class="bottomDiv">
                    <table style="font-family:Verdana;font-size:100%; background-color:antiquewhite;">
                                                <tr>
                                                    <td align="center" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;">Log in Your New Account</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ValidateRequestMode="Enabled" ValidationGroup="login" ID="loginUsername" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginUsername" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="login">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ValidateRequestMode="Enabled" ValidationGroup="login" ID="loginPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="login">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                        </table>
                    <asp:Button runat="server" ValidateRequestMode="Enabled" ValidationGroup="login" OnClick="login_Click" CssClass="opButtons" Text="Login" />
                </div>
            <div id="errorMessageDiv" class="bottomDiv">
                            <asp:Label CssClass="signupMessage" runat="server" ID="Error" ></asp:Label>
            </div>
        </div>
    </form>
</body>
<script>
    var signupDiv = document.getElementById("bottom");
    var loginDiv = document.getElementById("loginDiv");
    var errorMessageDiv = document.getElementById("errorMessageDiv");
    function init() {
        signupDiv.hidden = true;
        loginDiv.hidden = true;
        errorMessageDiv.hidden = false;
    }
    function loginVisible() {
        signupDiv.hidden = true;
        loginDiv.hidden = false;
        errorMessageDiv.hidden = true;
    }
    function signupVisible() {
        loginDiv.hidden = true;
        signupDiv.hidden = false;
        errorMessageDiv.hidden = true;
    }
        window.onload = init();
</script>
</html>

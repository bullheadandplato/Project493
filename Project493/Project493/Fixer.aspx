<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fixer.aspx.cs" Inherits="Project493.Fixer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="Styles/main-style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
            <div id="header">

                <nav class="headerNav">
                    <span id="openBtn" onclick="openNav()">&#9776; Menu</span>
                </nav>

            </div>
            <!-- The overlay -->
            <div id="myNav" class="overlay">

                <!-- Button to close the overlay navigation -->
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

                <!-- Overlay content -->
                <div class="overlay-content">
                    <a href="#">All Notes</a>
                    <a href="#">Calander</a>
                    <a href="#">Settings</a>
                    <a href="#">About</a>
                </div>

            </div>
        <div>
            <asp:ScriptManager runat="server">
            </asp:ScriptManager>

    </form>
</body>
    <script src="Scripts/main-script.js"></script>
</html>

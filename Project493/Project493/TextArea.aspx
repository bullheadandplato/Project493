<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Textarea.aspx.cs" Inherits="Project493.Textarea" %>

<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <link rel="stylesheet" href="Styles/TextPageStyle.css" />
                <CE:Editor id="Editor123" runat="server" onPostBackCommand="editor_save" align="center" class="Editor123" ContextMenuMode="normal" />  
    <div hidden="hidden">
                          <asp:TextBox  type="text" runat="server" id="titleBox"></asp:TextBox>

    </div>   
          
    <script>
       
        function CuteEditor_OnCommand(editor, command, ui, value) {
            if (command == "PostBack") {
                var box = document.getElementById("<%= titleBox.ClientID%>");
                box.value = prompt("Enter note title");
                if (box.value.length < 1) {
                    alert("please enter valid title");
                }
            }
        }

    </script>
                </asp:Content>


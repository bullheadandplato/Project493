<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Textarea.aspx.cs" Inherits="Project493.Textarea" %>

<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <link rel="stylesheet" href="Styles/TextPageStyle.css" />
    <CE:Editor id="Editor123" runat="server" onPostBackCommand="editor_save" align="center" />     

                </asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Allnotes.aspx.cs" Inherits="Project493.Allnotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Styles/allnotes-style.css" />
    <asp:Label Text="No note goto Editor to create notes" Visible="false" runat="server" CssClass="labelStyle" ID="noText"></asp:Label>
    <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server" BorderWidth="2px" CellPadding="2" CellSpacing="1" HorizontalAlign="Center" Width="100%">
        <HeaderStyle Font-Size="30px" ForeColor="#999999" />
        <RowStyle BorderColor="#663300" BorderWidth="1px" Font-Size="20pt" ForeColor="#666666" />
     
    </asp:GridView>
    <br />
    </asp:Content>

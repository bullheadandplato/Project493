<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Allnotes.aspx.cs" Inherits="Project493.Allnotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server">
        <EditRowStyle BackColor="#CCCCFF" />
        <HeaderStyle Font-Size="30px" ForeColor="#999999" />
        <RowStyle BackColor="#CCFF66" BorderColor="#663300" BorderWidth="5px" Font-Size="20pt" ForeColor="#666666" />
     
    </asp:GridView>
    <br />
    </asp:Content>

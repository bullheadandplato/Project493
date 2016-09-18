<%@ Page Title="Calendar events" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Calander.aspx.cs" Inherits="Project493.Calander" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Styles/calendar-style.css" />
     <asp:ScriptManager ID="ScriptManager1" runat="server">

              </asp:ScriptManager>
      <asp:updatepanel runat="server">
          <contenttemplate>
             
              <asp:Calendar ondayrender="dayRender" OnSelectionChanged="google" width="100%" ID="Calendar1" runat="server" BorderWidth="0px" CellPadding="5">
        <DayStyle CssClass="dayElse" />
        <TodayDayStyle CssClass="dayStyle" Font-Underline="False" ForeColor="White" />
       
    </asp:Calendar>
              <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
              <asp:GridView ID="GridView1" runat="server">
              </asp:GridView>
          </contenttemplate>
      </asp:updatepanel>
      

</asp:Content>


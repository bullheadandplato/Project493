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
              <div class="centerDiv">
                  <asp:Label CssClass="labelStyle" ID="Label1" runat="server"></asp:Label>
              <asp:GridView OnRowDataBound="GridView1_RowDataBound" ID="GridView1" runat="server" Font-Size="20pt" BorderWidth="5px" CellPadding="1" CellSpacing="1" HorizontalAlign="Center" Width="100%">
                  <RowStyle BorderWidth="5px" Font-Size="20pt" />
              </asp:GridView>
              </div>
              
          </contenttemplate>
      </asp:updatepanel>
      

</asp:Content>


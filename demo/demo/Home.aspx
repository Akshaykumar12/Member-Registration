<%@ Page Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="demo.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <div class="jumbotron text-center">
       <h1> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></h1>
       <h1> Welcome to the Group !!</h1>
   </div>
</asp:Content>


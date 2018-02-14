<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="demo.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="card hovercard">
            <div class="card-background">
                <img class="card-bkimg" alt="" src="http://lorempixel.com/100/100/people/9/">
            </div>
            <div class="useravatar">
                <img alt="" src="http://lorempixel.com/100/100/people/9/">
            </div>
            <div class="card-info">
                <span class="card-title">Profile</span>

            </div>
        </div>

    </div>

    <div class="list-group col-md-12">
                
                    
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="list-group-item"></asp:TextBox><br />
                        
                    
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="list-group-item"></asp:TextBox><br />
                     
                    
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="list-group-item"></asp:TextBox><br />
                  
              

  
    </div>
    <div class="text-center">
        <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary col-md-12" Text="Edit" OnClick="BtnEdit_Click" />
    </div>

</asp:Content>

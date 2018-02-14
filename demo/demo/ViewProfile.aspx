<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="demo.ViewProfile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
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


            <asp:label id="lblUserName" runat="server" text="Label" cssclass="list-group-item"></asp:label>
            <asp:label id="lblEmail" runat="server" text="Label" cssclass="list-group-item"></asp:label>
            <asp:label id="lblCounrty" runat="server" text="Label" cssclass="list-group-item"></asp:label>




        </div>



    </div>
</asp:Content>

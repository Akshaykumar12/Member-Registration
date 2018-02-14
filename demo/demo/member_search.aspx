<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="member_search.aspx.cs" Inherits="demo.member_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main role="main" class="container">
        <div class="jumbotron text-center">
            <h1>Search Member</h1>

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="input-group">
                        <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server" Text="Search &raquo;" OnClick="Button1_Click" />
                        </span>
                    </div>
                    <!-- /input-group -->
                </div>
                 <div class="col-md-2"></div>
            </div>

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                   <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="UserName">
                <ItemTemplate>
                    <%# Eval("UserName") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FullName">
                <ItemTemplate>
                    <%# Eval("FirstName") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <%# Eval("Email") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State/Province">
                <ItemTemplate>
                    <%# Eval("State") %>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
                    <%# Eval("Country") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <a href='<%# "ViewProfile.aspx?ID=" + Eval("MemberID") %>'>View</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                </div>
                <div class="col-md-2"></div>
                
            </div>
          
        </div>



    </main>
</asp:Content>

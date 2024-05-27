<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="ASOIU4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-right: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" ItemPlaceholderID="itemPlaceholder">
        <LayoutTemplate>
            <div>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div>
                <h2><%# Eval("Заголовок") %></h2>
                <p><%# Eval("Текст") %></p>
            </div>
        </ItemTemplate>
    </asp:ListView>

   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU4ConnectionString %>" SelectCommand="SELECT новости.Код_новости, новости.Заголовок, новости.Текст FROM новости ORDER BY новости.Код_новости DESC"></asp:SqlDataSource>

</asp:Content>


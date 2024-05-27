<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddAvto.aspx.cs" Inherits="ASOIU4.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin: 0 auto; /* Центрируем таблицу по горизонтали */
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            
            
        }
        .auto-style10 {
            height: 26px;
            
            
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            height: 26px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label2" runat="server" Text="Введите название представления:"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:Label ID="Label3" runat="server" Text="Введите цену представления:"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label5" runat="server" Text="Выберите театр:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource11" DataTextField="Название_театра" DataValueField="Код_театра">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU4ConnectionString %>" OnSelecting="SqlDataSource11_Selecting" SelectCommand="SELECT * FROM [театры]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Добавить" />
        </td>
    </tr>
</table>
</asp:Content>

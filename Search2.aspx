<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search2.aspx.cs" Inherits="ASOIU4.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        text-align: center;
    }
        .auto-style11 {
            text-align: center;
            height: 162px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU4ConnectionString %>" SelectCommand="SELECT * FROM [Представления]"></asp:SqlDataSource>
    <div class="auto-style10">
        <asp:Label ID="Label3" runat="server" Text="Выберите представление:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Название" DataValueField="Код_представления">
        </asp:DropDownList>
    </div>
</p>
<p class="auto-style10">
    <asp:Label ID="Label4" runat="server" Text="Выберите театр:"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="Название_театра" DataValueField="Код_театра">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU4ConnectionString %>" SelectCommand="SELECT * FROM [Театры]"></asp:SqlDataSource>
</p>
<p class="auto-style10">
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Фильтр по представлению" />
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Фильтр по театру" />
    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Фильтр по представлению и театру" />
    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Сбросить фильтр" />
</p>
<p>
    <div class="auto-style10">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Код_представления" DataSourceID="SqlDataSource8" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Код_представления" HeaderText="Код_представления" ReadOnly="True" SortExpression="Код_представления" Visible="False" />
                <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" Visible="False" />
                <asp:BoundField DataField="Цена_представления" HeaderText="Цена_представления" SortExpression="Цена_представления" Visible="False"  />
                <asp:BoundField DataField="Код_театра" HeaderText="Код_театра" SortExpression="Код_театра" Visible="False"/>
                <asp:BoundField DataField="Expr1" HeaderText="Название" SortExpression="Expr1" />
                <asp:BoundField DataField="Expr2" HeaderText="Театр" SortExpression="Expr2" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU4ConnectionString %>" SelectCommand="SELECT * FROM [View_1]"></asp:SqlDataSource>
</p>
<p>
    <div class="auto-style11">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Код_представления" DataSourceID="SqlDataSource9" Height="50px" Width="125px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
                <asp:BoundField DataField="Код_представления" HeaderText="Код_представления" ReadOnly="True" SortExpression="Код_представления" Visible="False" />
                <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" Visible="False" />
                <asp:BoundField DataField="Цена_представления" HeaderText="Цена_представления" SortExpression="Цена_представления" />
                <asp:BoundField DataField="Код_театра" HeaderText="Код_театра" SortExpression="Код_театра" Visible="False"/>
                <asp:BoundField DataField="Expr1" HeaderText="Название" SortExpression="Expr1" />
                <asp:BoundField DataField="Expr2" HeaderText="Театр" SortExpression="Expr2" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU4ConnectionString %>" SelectCommand="SELECT * FROM [View_1]"></asp:SqlDataSource>
</p>
<p>
    <asp:Label ID="Label2" runat="server"></asp:Label>
</p>
</asp:Content>
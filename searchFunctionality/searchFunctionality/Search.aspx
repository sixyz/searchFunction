<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="searchFunctionality.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <asp:Panel ID="panelSearch" runat="server" DefaultButton="ButtonSearch">
            <asp:TextBox ID="textboxSearch" runat="server"
                CssClass="textSearch"
                Text=""
                Width="350" />
            <asp:Button ID="buttonSearch" runat="server"
                CssClass="buttonSearch"
                Text="Search"
                OnClick="ButtonSearch_Click" />
        </asp:Panel>

        <br />

        <div>
            <asp:GridView ID="grdEmployees" runat="server"
                BorderColor="red"
                BorderStyle="Solid"
                BorderWidth="2px"
                CellPadding="5"
                ForeColor="#333333"
                GridLines="None"
                Width="450px" AutoGenerateColumns="False" DataSourceID="EmployeesDataSource">
                <AlternatingRowStyle BackColor="White" ForeColor="#008E14" />
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
                <EditRowStyle HorizontalAlign="Left" />
                <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:GridView>
            
            <asp:SqlDataSource ID="EmployeesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:searchDBConnectionString %>" SelectCommand="SELECT [Title], [Firstname], [Lastname], [Email] FROM [Employees]"></asp:SqlDataSource>
            
        </div>


    </div>
    </form>
</body>
</html>

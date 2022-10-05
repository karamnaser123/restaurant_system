<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="users_admin.aspx.cs" Inherits="ka.users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: 50pt;
        }
    </style>
    <link href="css/StyleSheet6.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center class="style1"><strong>إضافة أو حذف أو تعديل المستخدمين</strong></center>
<br /><br /><br />
<div class="content">
    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="UserID" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
        GridLines="Horizontal" style="font-weight: 700; font-size: 30pt">
        <EditItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" 
                Text='<%# Bind("Username") %>' />
            <br />
            UserPassword:
            <asp:TextBox ID="UserPasswordTextBox" runat="server" 
                Text='<%# Bind("UserPassword") %>' />
            <br />
            phonenumber:
            <asp:TextBox ID="phonenumberTextBox" runat="server" 
                Text='<%# Bind("phonenumber") %>' />
            <br />
            cardnumber:
            <asp:TextBox ID="cardnumberTextBox" runat="server" 
                Text='<%# Bind("cardnumber") %>' />
            <br />
            Expiration:
            <asp:TextBox ID="ExpirationTextBox" runat="server" 
                Text='<%# Bind("Expiration") %>' />
            <br />
            SecurityCode:
            <asp:TextBox ID="SecurityCodeTextBox" runat="server" 
                Text='<%# Bind("SecurityCode") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <InsertItemTemplate>
            اسم المستخدم:
            <asp:TextBox ID="UsernameTextBox" runat="server" 
                Text='<%# Bind("Username") %>' />
            <br />
            كلمة المرور:
            <asp:TextBox ID="UserPasswordTextBox" runat="server" 
                Text='<%# Bind("UserPassword") %>' />
            <br />
            رقم الهاتف:
            <asp:TextBox ID="phonenumberTextBox" runat="server" 
                Text='<%# Bind("phonenumber") %>' />
            <br />
            رقم البطاقة:
            <asp:TextBox ID="cardnumberTextBox" runat="server" 
                Text='<%# Bind("cardnumber") %>' />
            <br />
            تاريخ انتهاء البطاقة:
            <asp:TextBox ID="ExpirationTextBox" runat="server" 
                Text='<%# Bind("Expiration") %>' />
            <br />
            رمز الحماية:
            <asp:TextBox ID="SecurityCodeTextBox" runat="server" 
                Text='<%# Bind("SecurityCode") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="ادخل" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="الغي" />
        </InsertItemTemplate>
        <ItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            Username:
            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            UserPassword:
            <asp:Label ID="UserPasswordLabel" runat="server" 
                Text='<%# Bind("UserPassword") %>' />
            <br />
            phonenumber:
            <asp:Label ID="phonenumberLabel" runat="server" 
                Text='<%# Bind("phonenumber") %>' />
            <br />
            cardnumber:
            <asp:Label ID="cardnumberLabel" runat="server" 
                Text='<%# Bind("cardnumber") %>' />
            <br />
            Expiration:
            <asp:Label ID="ExpirationLabel" runat="server" 
                Text='<%# Bind("Expiration") %>' />
            <br />
            SecurityCode:
            <asp:Label ID="SecurityCodeLabel" runat="server" 
                Text='<%# Bind("SecurityCode") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBCS %>" 
        DeleteCommand="DELETE FROM [users] WHERE [UserID] = @UserID" 
        InsertCommand="INSERT INTO [users] ([Username], [UserPassword], [phonenumber], [cardnumber], [Expiration], [SecurityCode]) VALUES (@Username, @UserPassword, @phonenumber, @cardnumber, @Expiration, @SecurityCode)" 
        SelectCommand="SELECT * FROM [users]" 
        UpdateCommand="UPDATE [users] SET [Username] = @Username, [UserPassword] = @UserPassword, [phonenumber] = @phonenumber, [cardnumber] = @cardnumber, [Expiration] = @Expiration, [SecurityCode] = @SecurityCode WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="phonenumber" Type="Int32" />
            <asp:Parameter Name="cardnumber" Type="String" />
            <asp:Parameter Name="Expiration" Type="String" />
            <asp:Parameter Name="SecurityCode" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="phonenumber" Type="Int32" />
            <asp:Parameter Name="cardnumber" Type="String" />
            <asp:Parameter Name="Expiration" Type="String" />
            <asp:Parameter Name="SecurityCode" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
    CellPadding="3" CellSpacing="1" DataKeyNames="UserID" 
    DataSourceID="SqlDataSource3" GridLines="None" 
    style="font-weight: 700; font-size: 37pt">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" 
            ReadOnly="True" SortExpression="UserID" />
        <asp:BoundField DataField="Username" HeaderText="Username" 
            SortExpression="Username" />
        <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" 
            SortExpression="UserPassword" />
        <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" 
            SortExpression="phonenumber" />
        <asp:BoundField DataField="cardnumber" HeaderText="cardnumber" 
            SortExpression="cardnumber" />
        <asp:BoundField DataField="Expiration" HeaderText="Expiration" 
            SortExpression="Expiration" />
        <asp:BoundField DataField="SecurityCode" HeaderText="SecurityCode" 
            SortExpression="SecurityCode" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBCS %>" 
        DeleteCommand="DELETE FROM [users] WHERE [UserID] = @UserID" 
        InsertCommand="INSERT INTO [users] ([Username], [UserPassword], [phonenumber], [cardnumber], [Expiration], [SecurityCode]) VALUES (@Username, @UserPassword, @phonenumber, @cardnumber, @Expiration, @SecurityCode)" 
        SelectCommand="SELECT * FROM [users]" 
        UpdateCommand="UPDATE [users] SET [Username] = @Username, [UserPassword] = @UserPassword, [phonenumber] = @phonenumber, [cardnumber] = @cardnumber, [Expiration] = @Expiration, [SecurityCode] = @SecurityCode WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="phonenumber" Type="Int32" />
            <asp:Parameter Name="cardnumber" Type="String" />
            <asp:Parameter Name="Expiration" Type="String" />
            <asp:Parameter Name="SecurityCode" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="phonenumber" Type="Int32" />
            <asp:Parameter Name="cardnumber" Type="String" />
            <asp:Parameter Name="Expiration" Type="String" />
            <asp:Parameter Name="SecurityCode" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DBCS %>" 
    SelectCommand="SELECT * FROM [users]">

</asp:SqlDataSource>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="table_admin.aspx.cs" Inherits="ka.fgg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .style2
        {
            font-size: 20pt;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            font-size: 60pt;
        }
    </style>
    <link href="css/StyleSheet6.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center class="style4"><strong>إضافة أو حذف أو تعديل طاولة</strong></center>
<div class="content">
<br /><br /> <br /><br />
    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="TableId" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
        GridLines="Horizontal" style="font-weight: 700; font-size: 30pt">
        <EditItemTemplate>
            TableId:
            <asp:Label ID="TableIdLabel1" runat="server" Text='<%# Eval("TableId") %>' />
            <br />
            NoOfPeople:
            <asp:TextBox ID="NoOfPeopleTextBox" runat="server" 
                Text='<%# Bind("NoOfPeople") %>' />
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
            اضافة طاولة جديدة:
            <asp:TextBox ID="NoOfPeopleTextBox" runat="server" 
                Text='<%# Bind("NoOfPeople") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="ادخل" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="الغي" />
        </InsertItemTemplate>
        <ItemTemplate>
            TableId:
            <asp:Label ID="TableIdLabel" runat="server" Text='<%# Eval("TableId") %>' />
            <br />
            NoOfPeople:
            <asp:Label ID="NoOfPeopleLabel" runat="server" 
                Text='<%# Bind("NoOfPeople") %>' />
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
    <strong>
    <br class="style2" />
    &nbsp;&nbsp;
    <br /><br />
        <asp:Label ID="Label1" runat="server" Text="رفع صورة باسم الطاولة بصيغة (png)" 
            style="background-color: #FFFF00" CssClass="style2"></asp:Label> 
        <asp:FileUpload ID="uplod"  runat="server" CssClass="style2" />
    <br class="style2" /><br class="style2" />
    <span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span 
        class="style3"> </span>
    <asp:Button ID="Button1" runat="server" CssClass="style3" Text="رفع" 
        onclick="Button1_Click" />
        <br /><br /><br /><br />
    <br class="style2" /><br class="style2" />
    </strong>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBCS %>" 
        DeleteCommand="DELETE FROM [tblTable] WHERE [TableId] = @TableId" 
        InsertCommand="INSERT INTO [tblTable] ([NoOfPeople]) VALUES (@NoOfPeople)" 
        SelectCommand="SELECT * FROM [tblTable]" 
        UpdateCommand="UPDATE [tblTable] SET [NoOfPeople] = @NoOfPeople WHERE [TableId] = @TableId">
        <DeleteParameters>
            <asp:Parameter Name="TableId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NoOfPeople" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NoOfPeople" Type="String" />
            <asp:Parameter Name="TableId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <strong>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="TableId" DataSourceID="SqlDataSource1" 
        GridLines="Horizontal" CssClass="style4">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TableId" HeaderText="TableId" InsertVisible="False" 
                ReadOnly="True" SortExpression="TableId" />
            <asp:BoundField DataField="NoOfPeople" HeaderText="NoOfPeople" 
                SortExpression="NoOfPeople" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    </strong>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBCS %>" 
        DeleteCommand="DELETE FROM [tblTable] WHERE [TableId] = @TableId" 
        InsertCommand="INSERT INTO [tblTable] ([NoOfPeople]) VALUES (@NoOfPeople)" 
        SelectCommand="SELECT * FROM [tblTable]" 
        UpdateCommand="UPDATE [tblTable] SET [NoOfPeople] = @NoOfPeople WHERE [TableId] = @TableId">
        <DeleteParameters>
            <asp:Parameter Name="TableId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NoOfPeople" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NoOfPeople" Type="String" />
            <asp:Parameter Name="TableId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>
</asp:Content>

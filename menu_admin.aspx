<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="menu_admin.aspx.cs" Inherits="ka.menu_admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style1
        {
            font-weight: bold;
            font-size: x-large;
        }
        .style2
        {
            font-size: 50pt;
        }
    </style>
    <link href="css/StyleSheet6.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center class="style2"><strong>إضافة أو حذف أو تعديل الطعام</strong></center>
<div>



    <div class=center>
    <br />
        <asp:FormView  ID="FormView1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataKeyNames="MealId" DataSourceID="SqlDataSource1" 
            DefaultMode="Insert" GridLines="Both" 
            style="font-weight: 700; font-size: xx-large; text-align: justify;">
            <EditItemTemplate>
                MealId:
                <asp:Label ID="MealIdLabel1" runat="server" Text='<%# Eval("MealId") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                اسم الطعام:
                &nbsp &nbsp &nbsp &nbsp  &nbsp
                <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                السعر:
                &nbsp &nbsp &nbsp &nbsp  &nbsp 
                <asp:TextBox ID="PriceTextBox0" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                الوصف:
                <asp:TextBox ID="DescriptionTextBox0" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                مسار الصورة:
                <asp:TextBox ID="imageTextBox0" runat="server" Text='<%# Bind("image") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="ادخل" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="الغي" />
            </InsertItemTemplate>
            <ItemTemplate>
                MealId:
                <asp:Label ID="MealIdLabel" runat="server" Text='<%# Eval("MealId") %>' />
                <br />
                Name:
              
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                image: 
                <asp:Label ID="imageLabel" runat="server"  Text='<%# Bind("image") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="رفع صورة لطعام" 
            style="background-color: #FFFF00" CssClass="style1"></asp:Label> 
        <asp:FileUpload ID="uplod"   runat="server"  CssClass="style1" />
        <br />
          <br />  <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="رفع" 
            style="font-size: x-large; font-weight: 700" onclick="Button1_Click1" />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
            DeleteCommand="DELETE FROM [tblMeals] WHERE [MealId] = @MealId" 
            InsertCommand="INSERT INTO [tblMeals] ([Name], [Price], [Description], [image]) VALUES (@Name, @Price, @Description, @image)" 
            SelectCommand="SELECT * FROM [tblMeals]" 
            UpdateCommand="UPDATE [tblMeals] SET [Name] = @Name, [Price] = @Price, [Description] = @Description, [image] = @image WHERE [MealId] = @MealId">
            <DeleteParameters>
                <asp:Parameter Name="MealId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="MealId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="MealId" DataSourceID="SqlDataSource2" 
            ForeColor="#333333" GridLines="None" 
            style="font-weight: 700; font-size: xx-large">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MealId" HeaderText="MealId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="MealId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
            DeleteCommand="DELETE FROM [tblMeals] WHERE [MealId] = @MealId" 
            InsertCommand="INSERT INTO [tblMeals] ([Name], [Price], [Description], [image]) VALUES (@Name, @Price, @Description, @image)" 
            SelectCommand="SELECT * FROM [tblMeals]" 
            UpdateCommand="UPDATE [tblMeals] SET [Name] = @Name, [Price] = @Price, [Description] = @Description, [image] = @image WHERE [MealId] = @MealId">
            <DeleteParameters>
                <asp:Parameter Name="MealId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="MealId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>


    </div>
    <p>
        &nbsp;</p>

</asp:Content>

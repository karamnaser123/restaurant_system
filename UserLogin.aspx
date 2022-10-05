<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="ka.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div align="center">
        <h3 class="style1" style="height: 20px">
            تسجيل الدخول</h3>
    </div>
    <table id="tables" style="border:1px solid #ddd; margin-left: auto; margin-right: auto">
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="اسم المستخدم" 
                    style="font-size: xx-large"></asp:Label>
            </td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="يجب ان يكون اسم المستخدم موجود" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="كلمة المرور" 
                    style="font-size: xx-large"></asp:Label>
            </td>
            <td>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<br/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="يجب ملئ كلمة المرور" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
            <br/>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <br/>
                <asp:Button ID="btnLogin" runat="server" Text="تسجيل الدخول" BackColor="#FF6666" 
                    Style="border: solid 1px #ddd; font-weight: 700; font-size: x-large;" 
                    Height="40px" Width="200px" 
                    onclick="btnLogin_Click1"/>
                <br/>
            </td>
        </tr>
    </table>
</asp:Content>

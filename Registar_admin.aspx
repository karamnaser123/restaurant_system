<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Registar_admin.aspx.cs" Inherits="ka.Registar_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .style1
        {
            font-size: xx-large;
        direction: ltr;
    }
        .style2
        {
            height: 82px;
        }
        .style3
        {
            width: 403px;
        }
        .style5
        {
            width: 403px;
            height: 49px;
        }
        .style8
        {
            width: 403px;
            height: 48px;
        }
         .style9
         {
             width: 429px;
             height: 48px;
         }
         .style10
         {
             width: 429px;
         }
         .style11
         {
             width: 429px;
             height: 49px;
         }
    </style>
     <link href="css/StyleSheet6.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
        <h3 class="style1">
            تسجيل حساب ادمن</h3>
    </div>
    <table id="tables" style="border:1px solid #ddd; margin-left: auto; margin-right: auto">
        <tr>
            <td class="style1">
                <asp:Label ID="lblUsername" runat="server" Text="اسم المستخدم" 
                    style="font-weight: 700; font-size: xx-large"></asp:Label>
            </td>
            <td class="style9">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="يجب ان يكون اسم المستخدم موجود" 
                    ForeColor="#CC0000" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                </td>
        </tr>

        <tr>
            <td class="style1">
                <asp:Label ID="lblPassword" runat="server" Text="كلمة المرور" 
                    style="font-weight: 700; font-size: xx-large"></asp:Label>
            </td>
            <td class="style10">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<br/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:TextBox ID="txtPassword" TextMode="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="يجب ملئ كلمة المرور" 
                    ForeColor="#CC0000" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>

        <tr>
            <td class="style1">
                <asp:Label ID="lblConfirmPassword" runat="server"  Text="تأكيد كلمة المرور" 
                    style="font-weight: 700; font-size: xx-large"></asp:Label>
            </td>
            <td class="style11">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:TextBox ID="txtConfirmPassword" TextMode="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtConfirmPassword" ErrorMessage="يجب ملئ تأكيد كلمة المرور" 
                    ForeColor="#CC0000" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td class="style5">
                </td>
        </tr>

        <tr>
            <td class="style1">
                &nbsp;</td>
        </tr>

        <tr>
            <td align="center" colspan="2" class="style2">
            <br/>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                <br/>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#FF6666" 
                    Style="border: solid 1px #ddd" Height="40px" Width="200px" 
                    onclick="btnSubmit_Click" />
                <br/>
            </td>
            <td align="center" class="style2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

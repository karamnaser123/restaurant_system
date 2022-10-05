<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="ka.UserRegistration" %>
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
        .style4
        {
            height: 49px;
            width: 280px;
        }
        .style5
        {
            width: 403px;
            height: 49px;
        }
        .style6
        {
            height: 49px;
            font-size: xx-large;
            width: 280px;
            font-weight: 700;
        }
        .style7
        {
            height: 48px;
            width: 280px;
        }
        .style8
        {
            width: 403px;
            height: 48px;
        }
        .style9
        {
            width: 280px;
        }
        .style10
        {
            font-weight: bold;
        }
        .style11
        {
            width: 446px;
            height: 48px;
        }
        .style12
        {
            width: 446px;
        }
        .style13
        {
            width: 446px;
            height: 49px;
        }
    </style>
    <link href="css/StyleSheet6.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h3 class="style1">
            إنشاء حساب </h3>
    </div>
    <table id="tables" style="border:1px solid #ddd; margin-left: auto; margin-right: auto">
        <tr>
            <td class="style7">
                <asp:Label ID="lblUsername" runat="server" Text="اسم المستخدم" 
                    style="font-weight: 700; font-size: xx-large"></asp:Label>
            </td>
            <td class="style11">
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
            <td class="style9">
                <asp:Label ID="lblPassword" runat="server" Text="كلمة المرور" 
                    style="font-weight: 700; font-size: xx-large"></asp:Label>
            </td>
            <td class="style12">
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
            <td class="style4">
                <asp:Label ID="lblConfirmPassword" runat="server"  Text="تأكيد كلمة المرور" 
                    style="font-weight: 700; font-size: xx-large"></asp:Label>
            </td>
            <td class="style13">
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
            <td class="style6">
                <strong>رقم الهاتف&nbsp; (9 ارقام)</strong></td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtphone" type="number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="يجب ملئ رقم الهاتف" 
                    ForeColor="#CC0000" style="font-weight: 700"></asp:RequiredFieldValidator>
                &nbsp;
              
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>

        <tr>
            <td class="style6">
                <strong>رقم البطاقة&nbsp; (16 رقم)</strong></td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="card" type="number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="card" ErrorMessage="يجب ملئ رقم البطاقة" 
                    ForeColor="#CC0000" style="font-weight: 700"></asp:RequiredFieldValidator>
                &nbsp;
              
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <strong>انتهاء الصلاحية (mm/yy) </strong></td>
            <td class="style13">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="exp"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="exp" ErrorMessage="يجب ملئ تاريخ انتهاء صلاحية البطاقة" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;
              
            </strong>
              
            </td>
            <td class="style5">
                <strong></strong></td>
        </tr>
        <tr>
            <td class="style6">
            <strong>رمز الحماية&nbsp; (3 ارقام)</strong></td>
            <td class="style13">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="code" type="number" runat="server" CssClass="style10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="code" ErrorMessage="يجب ملئ رمز حماية البطاقة" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;
              
            </strong>
              
            </td>
            <td class="style5">
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

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="ka.login" %>
<style type="text/css">

        .style1
        {
            font-size: xx-large;
        }
    #tables
{
    font-family: "Trebuchet MS" , Arial, Helvetica, Sans-Serif;
    border-collapse: collapse;
    }
    
    #tables td, th
    {
        padding:8px;
    font-weight: 700;
    
}
        
    .style2
    {
        text-align: center;
    }
        
  </style>
  <div class="style2">
  <label><strong><span class="style1">Login</span></strong></label>
 </div>
 <div align="center">
        <h3 class="style1" style="height: 20px">
            &nbsp;</h3>
    </div>
    <table id="tables" style="border:1px solid #ddd; margin-left: auto; margin-right: auto">
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="Username OR Email" 
                    style="font-size: xx-large"></asp:Label>
            </td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="this field is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password" 
                    style="font-size: xx-large"></asp:Label>
            </td>
            <td>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<br/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="this field is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
            <br/>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <br/>
                <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#FF6666" 
                    Style="border: solid 1px #ddd" Height="40px" Width="200px" 
                    onclick="btnLogin_Click1"/>
                <br/>
            </td>
        </tr>
    </table>


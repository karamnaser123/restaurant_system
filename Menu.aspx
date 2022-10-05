<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="ka.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link href="css/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            font-size: xx-large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h3>
            <span class="style1">قائمة الطعام&nbsp;</span>&nbsp;&nbsp;
        </h3>
    </div>
    <table id="tables" style="margin-left: 20%; margin-right: 20%">
        <tr>
            <td colspan="2" align="center">
                <br />
                <div id="menuDiv">
                    <table>
                        <tr>
                            <th style="text-align: center">
                                القائمة لدينا
                            </th>
                        </tr>
                        <tr>
                            <td>
                           
                                <asp:Repeater ID="rpt" runat="server"  >
                                    <ItemTemplate>
                                        <table id="InLine">
                                            <tr class="zoom">
                                                <td class="mm">
                                                    <a  href="Item.aspx?id=<%# Eval("MealId") %>" class=ka   >
                                                        <img alt="" height="140px" width="140px" src='<%# Eval("image") %>'class=ka /></a>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' class=ka ></asp:Label><br />
                                                    $<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' class=ka ></asp:Label>
                                                </td>
                                               
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

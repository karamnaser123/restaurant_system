<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="ka.Item" %>
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
        <h3 class="style1">
            الطعام
        </h3>
    </div>
    <table id="tables" style="width: 50%; margin-left: auto; margin-right:auto; border: 1px solid #ddd">
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                
                <table style="width: 100%; padding: 0; margin: 0">
                <tr>
                <th style="text-align:center">
                    <b>تفاصيل الطعام</b>
                </th>
                </tr>
                <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" height="140px" width="140px" runat="server" ImageUrl='<%# Eval("image") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text="الاسم: "></asp:Label>&nbsp;
                                <asp:Label ID="lblDBname" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br/>
                                <br/>
                                <asp:Label ID="lblPrice" runat="server" Text="السعر: "></asp:Label>&nbsp;$
                                <asp:Label ID="lblDBPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br/><br/>
                                <asp:Label ID="lblDesciption" runat="server" Text="الوصف: "></asp:Label>&nbsp;
                                <asp:Label ID="lblDBDescription"  runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                </tr>
                </table>

                </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
        <td>
            <br/>
            
           

            <table align="center">
                <tr>

                
               
                    <td align="center">

                        <asp:Button ID="btnBuy" runat="server" Text="شراء" BackColor="#FF6666" Style="border: solid 1px #ddd; font-size: x-large; font-weight: 700;"
                                    Height="40px" Width="200px" onclick="btnBuy_Click" 
                            onClientClick = "return confirm('شراء هذا العنصر؟')"/>
                        <asp:Button ID="btnViewMyOrder" runat="server" Text="مشاهدة طلبيتي" 
                            BackColor="#FF6666" Style="border: solid 1px #ddd; font-weight: 700; font-size: x-large;"
                                    Height="40px" Width="200px" onclick="btnViewMyOrder_Click"/>

                    </td>
                </tr>
            </table>
        </td>
        </tr>
    </table>
</asp:Content>

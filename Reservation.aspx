<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="ka.Reservation" %>
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
 <table style="width: 92.5%; margin-left: auto; margin-right: auto;">
        <tr>
            <td>
                <div align="center">
                    <h3 class="style1">
                        حجز موعد</h3>
                </div>
                <div align="center">
                    <p class="style1">
                        &nbsp;</p>
                </div>
                <div style="float: right;">
                    <asp:Button ID="ViewMyReservations" runat="server" Text="مشاهدة الحجوزات" Style="border: solid 1px #ddd; color: #000000; font-weight: 700; font-size: large;"
                        Height="40px" Width="200px" BackColor="#FF6666" ForeColor="Lime" 
                        onclick="ViewMyReservations_Click" />
                </div>
            </td>
        </tr>
    </table>
    <table id="tables" style="border: 1px solid #ddd; margin-left: auto; margin-right: auto;">
        <tr>
            <td valign="top" style="border: 1px solid #ddd; width: 50%" charoff="&amp;gt;">
                <table style="height: 100%; width: 100%">
                    <tr>
                        <th align="center">
                            <b>الأوقات المتاحة</b>
                        </th>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblMessage" runat="server" Text=":الحجوزات "></asp:Label><br />
                            <asp:Label ID="lblDate" runat="server" Font-Bold="true"></asp:Label>
                            <asp:Label ID="lblTable" runat="server" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Repeater ID="rptAvailableTimes" runat="server" OnItemDataBound="rptAvailableTimes_ItemDataBound">
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblTimes" runat="server" Text='<%# Eval("RTimes") %>'></asp:Label>
                                                ->
                                                <asp:Label ID="lblTimeStatus" runat="server" Text='<%# Eval("TStatus") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="BtnViewAllAvailableTimes" runat="server" Text="عرض جميع الأوقات"
                                BackColor="#FF6666" Style="border: solid 1px #ddd; font-weight: 700; font-size: large;" 
                                Height="40px" Width="200px"
                                OnClick="BtnViewAllAvailableTimes_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top" style="width: 50%">
                <table>
                    <tr>
                        <th align="center" colspan="2">
                            <b>قم بإجراء الحجوزات</b>
                        </th>
                    </tr>
                    <tr style="border-bottom: solid 1px #ddd">
                        <td>
                            
                            <asp:Calendar ID="Calendar1" runat="server" EnableTheming="True" 
                                NextPrevFormat="ShortMonth" ShowGridLines="True" OnVisibleMonthChanged="theVisibleMonthChanged"
                                  OnDayRender="Calendar1_DayRender"
                                onselectionchanged="Calendar1_SelectionChanged1"></asp:Calendar>
                           
   

                        </td>
                        <td valign="top">
                            :بداية الحجز<br />
                            <asp:DropDownList ID="ddlTimeIn" Width="250px" BackColor="#99ffbb" ForeColor="#666666"
                                Height="35px" runat="server">
                                <asp:ListItem Value="-1">حدد وقت الدخول للمطعم</asp:ListItem>
                                <asp:ListItem Value="0">7:00 am</asp:ListItem>
                                <asp:ListItem Value="1">8:00 am</asp:ListItem>
                                <asp:ListItem Value="2">9:00 am</asp:ListItem>
                                <asp:ListItem Value="3">10:00 am</asp:ListItem>
                                <asp:ListItem Value="4">11:00 am</asp:ListItem>
                                <asp:ListItem Value="5">12:00 pm</asp:ListItem>
                                <asp:ListItem Value="6">01:00 pm</asp:ListItem>
                                <asp:ListItem Value="7">02:00 pm</asp:ListItem>
                                <asp:ListItem Value="8">03:00 pm</asp:ListItem>
                                <asp:ListItem Value="9">04:00 pm</asp:ListItem>
                                <asp:ListItem Value="10">05:00 pm</asp:ListItem>
                                <asp:ListItem Value="11">06:00 pm</asp:ListItem>
                                <asp:ListItem Value="12">07:00 pm</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                             :انتهاء الحجز<br />
                            <asp:DropDownList ID="ddlTimeOut" Width="250px" BackColor="#99ffbb" ForeColor="#666666"
                                Height="35px" runat="server">
                                <asp:ListItem Value="-1">حدد وقت الخروح من المطعم</asp:ListItem>
                                <asp:ListItem Value="0">7:00 am</asp:ListItem>
                                <asp:ListItem Value="1">8:00 am</asp:ListItem>
                                <asp:ListItem Value="2">9:00 am</asp:ListItem>
                                <asp:ListItem Value="3">10:00 am</asp:ListItem>
                                <asp:ListItem Value="4">11:00 am</asp:ListItem>
                                <asp:ListItem Value="5">12:00 pm</asp:ListItem>
                                <asp:ListItem Value="6">01:00 pm</asp:ListItem>
                                <asp:ListItem Value="7">02:00 pm</asp:ListItem>
                                <asp:ListItem Value="8">03:00 pm</asp:ListItem>
                                <asp:ListItem Value="9">04:00 pm</asp:ListItem>
                                <asp:ListItem Value="10">05:00 pm</asp:ListItem>
                                <asp:ListItem Value="11">06:00 pm</asp:ListItem>
                                <asp:ListItem Value="12">07:00 pm</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <br />
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DropDownList1" Width="250px" BackColor="#99ffbb" ForeColor="#666666"
                                        Height="35px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Image ID="tblImage" Width="200px" Height="200px" runat="server" />
                                    <br />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                            <br />
                            <div style="width: 450px">
                                <asp:Button ID="SubmitReservation" runat="server" Text="حجز" BackColor="#FF6666"
                                    Style="border: solid 1px #ddd; font-weight: 700; font-size: x-large;" Height="40px" 
                                    Width="200px" OnClick="SubmitReservation_Click" />
                                <asp:Button ID="btnCheckAvailability" runat="server" Text="فحص الوقت المتاح" BackColor="#FF6666"
                                    Style="border: solid 1px #ddd; font-weight: 700; font-size: large;" Height="40px" 
                                    Width="200px" OnClick="btnCheckAvailability_Click" />
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </asp:Content>

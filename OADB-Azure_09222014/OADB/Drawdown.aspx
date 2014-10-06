<%@ Page Title="" Language="C#" MasterPageFile="~/OADB.Master" AutoEventWireup="true" CodeBehind="Drawdown.aspx.cs" Inherits="OADB.Drawdown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Draw-downs</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td>
                <asp:GridView ID="gvDrawdownList" runat="server" AutoGenerateColumns="False"
                    CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                    ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle">
                    <AlternatingRowStyle CssClass="altRow" />
                    <Columns>
                        <asp:BoundField HeaderText="PR Number" DataField="PRNumber" HeaderStyle-Width="100px" HeaderStyle-ForeColor="White" />
                        <asp:BoundField HeaderText="Cumulative PR Amount" DataField="CumulativePRAmt" HeaderStyle-ForeColor="White" DataFormatString="{0:C0}"  />
                        <asp:BoundField HeaderText="Amount Expensed to Date" DataField="AmtExpensedToDate" HeaderStyle-ForeColor="White" DataFormatString="{0:C0}"/>
                        <asp:BoundField HeaderText="Cummulative PR Amount" DataField="PRamtRemaining" HeaderStyle-ForeColor="White" DataFormatString="{0:C0}"/>
                    </Columns>
                    <PagerStyle CssClass="gridViewPagerStyle" />
                    <RowStyle Font-Overline="False" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

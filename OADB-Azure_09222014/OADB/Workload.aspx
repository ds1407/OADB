<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workload.aspx.cs" Inherits="OADB.Workload" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Amy Shah's Actionable Workload</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="gvWorkload" runat="server" AutoGenerateColumns="False"
        CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
        ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle"
        Width="800px" DataSourceID="SqlDataSourceWorkload">
        <AlternatingRowStyle CssClass="altRow" />
        <Columns>
            <asp:BoundField HeaderText="" DataField="WorkloadId" HeaderStyle-Width="50px" HeaderStyle-ForeColor="White" ItemStyle-HorizontalAlign="Center" ReadOnly="True" />
            <asp:BoundField HeaderText="PR Number" DataField="PRNumber" HeaderStyle-Width="100px" HeaderStyle-ForeColor="White" />
            <asp:BoundField HeaderText="Action Required" DataField="ActionRequired" HeaderStyle-ForeColor="White" />
        </Columns>
        <PagerStyle CssClass="gridViewPagerStyle" />
        <RowStyle Font-Overline="False" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceWorkload" runat="server" ConnectionString="<%$ ConnectionStrings:OADBConnectionString %>" SelectCommand="select * from [dbo].[Workload] order by [Workloadid]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

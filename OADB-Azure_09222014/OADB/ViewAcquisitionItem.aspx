<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAcquisitionItem.aspx.cs" Inherits="OADB.ViewAcquisitionItem" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">View Acquisition Items</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td>
                <asp:GridView ID="gvAcqList" runat="server" AutoGenerateColumns="False"
                    CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                    ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle"
                    DataKeyNames="AcqId,AcqItem" OnRowCommand="gvAcqList_RowCommand" DataSourceID="AcqDataSource">
                    <AlternatingRowStyle CssClass="altRow" />
                    <Columns>
                        <asp:TemplateField HeaderText="Acquisition Item">
                            <ItemTemplate>
                                <asp:LinkButton Text='<%#Eval("AcqItem") %>' runat="server" CommandName="ACQITEM" CommandArgument='<%# Container.DataItemIndex %>' ></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="AcqDesc" HeaderText="Description" SortExpression="AcqDesc" />
                    </Columns>
                    <PagerStyle CssClass="gridViewPagerStyle" />
                    <RowStyle Font-Overline="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="AcqDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:OADBConnectionString %>" SelectCommand="SELECT * FROM [AcquisitionItem] ORDER BY [AcqItem]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>


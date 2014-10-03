<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskOrderModProfile.aspx.cs" Inherits="OADB.TaskOrderModProfile" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Task Orders</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table runat="server" id="tblTaskOrder" style="width: 800px; border: 1px solid black;">
        <tr style="height: 30px; vertical-align: middle; text-align: left">
            <td colspan="2" class="labelBold">Task Order Information (Read Only)</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblContractInfo" runat="server" class="labelBold"></asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Button runat="server" ID="btnViewInvoices" OnClick="btnViewInvoices_Click" Text="View Invoices" /></td>
        </tr>
        <tr>
            <td class="label" style="height: 30px; vertical-align: bottom;">Modification Number</td>
            <td class="label" style="height: 30px; vertical-align: bottom;">CO</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="ModificationNumber" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="CO" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label" style="height: 30px; vertical-align: bottom;">Task Order Number</td>
            <td class="label" style="height: 30px; vertical-align: bottom;">CS</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="ContractOrderNumber" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="CS" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label" style="height: 30px; vertical-align: bottom;">Obligated Amount of Modification</td>
            <td class="label" style="height: 30px; vertical-align: bottom;">COTR</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="ObligatedAmtOfMod" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="COTR" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label" style="height: 30px; vertical-align: bottom;">Effective Date</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="EffectiveDate" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" class="label" style="height: 30px; vertical-align: bottom;">Modification Description</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="ModDesc" runat="server" Width="600px" Height="75px" TextMode="MultiLine" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Panel ID="pnlInvoices" runat="server" Visible="false" Width="500" Height="200">
        <table>
            <tr>
                <td>
                    <asp:GridView ID="gvInvoiceList" runat="server" AutoGenerateColumns="False"
                        CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                        ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle" DataSourceID="SqlDataSourceInvoices">
                        <AlternatingRowStyle CssClass="altRow" />
                        <Columns>
                            <asp:BoundField HeaderText="Invoice Number" DataField="InvoiceNumber" />
                            <asp:BoundField HeaderText="Invoice Amount" ItemStyle-HorizontalAlign="Right" DataField="InvoiceAmount" DataFormatString="{0:c}" />
                            <asp:BoundField HeaderText="Invoice Date" ItemStyle-HorizontalAlign="Right" DataField="InvoiceDate" DataFormatString="{0:d}" />
                        </Columns>
                        <PagerStyle CssClass="gridViewPagerStyle" />
                        <RowStyle Font-Overline="False" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnCloseinvoice" runat="server" Text="Close" OnClick="btnCloseinvoice_Click" /></td>
            </tr>

            <asp:SqlDataSource ID="SqlDataSourceInvoices" runat="server" ConnectionString="<%$ ConnectionStrings:OADBConnectionString %>" SelectCommand="select * from [dbo].[Invoice] order by [Invoicedate]"></asp:SqlDataSource>
        </table>
    </asp:Panel>
</asp:Content>


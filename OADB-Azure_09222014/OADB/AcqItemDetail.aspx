<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcqItemDetail.aspx.cs" Inherits="OADB.AcqItemDetail" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Acquisition Item</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Acquisition Item:" CssClass="labelBold"></asp:Label>&nbsp;<asp:Label ID="lblAcqItem" runat="server" CssClass="label"></asp:Label></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Current Stage: " CssClass="labelBold"></asp:Label><asp:Label ID="Label3" runat="server" Text="Develop PR Package" CssClass="label"></asp:Label></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="white-space: nowrap">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/acq1c.png" /><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/acq2c.png" /><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/acq3.png" /><asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/acq4.png" />
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                <a runat="server" id="urlMail">Send for Review</a>&nbsp;&nbsp;<a runat="server">Submit PR</a></td>
        </tr>
    </table>
</asp:Content>

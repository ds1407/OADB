<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractorProfile.aspx.cs" Inherits="OADB.ContractorProfile" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Contractor Profile</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />

    <table style="width: 800px; border: solid; border-width: 1px">
        <tr>
            <td colspan="2" class="label">Name</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="ContractorName" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="label">Street Address</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="StreetAddress" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">City</td>
            <td class="label">State</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="City" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="State" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">Zip Code</td>
            <td class="label">Phone</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="ZIPCode" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="Phone" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="label">Email</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="Email" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="label">POC Name</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="POCName" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">POC Phone</td>
            <td class="label">POC Email</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="POCPhone" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="POCEmail" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="label">DUNS Number</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="DUNS" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

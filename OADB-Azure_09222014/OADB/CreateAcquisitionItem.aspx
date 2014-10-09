<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAcquisitionItem.aspx.cs" Inherits="OADB.CreateAcquisitionItem" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Create New Acquisition Item</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="&nbsp;&nbsp;Materials to create Acquistion Items:" CssClass="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 30px"></td>
            <td>
                <asp:LinkButton ID="btnCreateNew" runat="server">SOW Template</asp:LinkButton></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:LinkButton ID="btnViewAcquisition" runat="server">PWS Template</asp:LinkButton></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">SOO Template</asp:LinkButton></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server">PR Package Checklist</asp:LinkButton></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Upload Materials" /><asp:Button ID="Button4" runat="server" Text="Save" /></td>
        </tr>

    </table>
</asp:Content>

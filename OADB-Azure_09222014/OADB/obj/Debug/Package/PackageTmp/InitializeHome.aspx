<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InitializeHome.aspx.cs" Inherits="OADB.InitializeHome" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Initialize</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td style="width: 30px"></td>
            <td>
                <asp:LinkButton ID="btnCreateNew" runat="server" OnClick="btnCreateNew_Click">1. Create New Acquisition Item</asp:LinkButton></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:LinkButton ID="btnViewAcquisition" runat="server" OnClick="btnViewAcquisition_Click">2. View Existing Acquisition Item</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>


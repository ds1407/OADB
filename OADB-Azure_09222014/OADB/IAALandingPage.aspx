<%@ Page Title="" Language="C#" MasterPageFile="~/OADB.Master" AutoEventWireup="true" CodeBehind="IAALandingPage.aspx.cs" Inherits="OADB.IAALandingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Inter-Agency Agreements (IAA) </td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/OADB.Master" AutoEventWireup="true" CodeBehind="Budget.aspx.cs" Inherits="OADB.Budget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Budget Lifecycle Information </td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 50px;">&nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkBudgetFormulation" runat="server" >1. Budget Formulation</asp:LinkButton></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkBudgetPresentation" runat="server" >2. Budget Presentation</asp:LinkButton></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkBudgetExecution" runat="server" >3. Budget Execution</asp:LinkButton></td>
                
        </tr>
       
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

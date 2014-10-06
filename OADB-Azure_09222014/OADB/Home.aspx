<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OADB.Home" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <table style="border: none; padding: 6px; border-spacing: 8px; text-align: center">
        <tr>
            <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlPRList" runat="server" NavigateUrl="~/PRLandingPage.aspx" ForeColor="White">PRs</asp:HyperLink></td>
             <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlIAA" runat="server" NavigateUrl="~/IAALandingPage.aspx" ForeColor="White">IAA</asp:HyperLink></td>
            <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlContractsList" runat="server" NavigateUrl="~/ContractLandingPage.aspx" ForeColor="White">Contracts</asp:HyperLink></td>
            
        </tr>
        <tr>
            <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlDashboard" runat="server" ForeColor="White" NavigateUrl="~/Dashboard.aspx">Executive Dashboard/Reports</asp:HyperLink></td>
            <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlStatusChecker" runat="server" NavigateUrl="~/PRStatusChecker.aspx" ForeColor="White">PR Status Checker</asp:HyperLink></td>
            <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlAcquistionProf" runat="server" ForeColor="White" NavigateUrl="~/AcqProfLandingPage.aspx">Acquisition Professionals</asp:HyperLink></td>
           
        </tr>
        <tr>
             <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlWorkload" runat="server" ForeColor="White" NavigateUrl="~/Workload.aspx">Amy Shah's Actionable Workload</asp:HyperLink>
            </td>
            <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlBudget" runat="server" ForeColor="White" NavigateUrl="~/Budget.aspx">Budget Lifecycle Information</asp:HyperLink>
            </td>
            <td style="height: 40px; width: 300px; text-align: center; vertical-align: middle" class="HomePageCells">
                <asp:HyperLink ID="hlDrawdown" runat="server" ForeColor="White" NavigateUrl="~/Drawdown.aspx">Draw-Down</asp:HyperLink>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PRProfile.aspx.cs" Inherits="OADB.PRProfile" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">PR Profile</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /><asp:Button ID="Button6" runat="server" Text="Modify Profile" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="Button3" runat="server" Text="Contract" Width="90px" OnClick="Button3_Click" /><asp:Button ID="Button4" runat="server" Text="Assigned CO" Width="90px" /><asp:Button ID="Button5" runat="server" Text="Assigned CS" Width="90px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table style="width: 800px; border-width: 1px; border-style: solid; border-color: black;">
        <tr>
            <td>
                <table style="width: 800px">
                    <tr>
                        <td class="label">PR Number</td>
                        <td class="label">OA Status</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="PRNumber" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="OAStatus" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                </table>
                <br />
                <table style="width: 800px">
                    <tr>
                        <td class="label">OA Assigned To</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="OAAssignedTo" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <table style="width: 800px">
                    <tr>
                        <td class="label">Action Date</td>
                        <td class="label">Notification Lead Time</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ActionDate" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="NotificationLeadTime" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                </table>
                <table style="width: 800px">
                    <tr>
                        <td class="label">Notification Note</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="NotificationNote" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <table style="width: 800px">
                    <tr>
                        <td class="label">Requisitioning Office Information</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ReqOffInfo" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

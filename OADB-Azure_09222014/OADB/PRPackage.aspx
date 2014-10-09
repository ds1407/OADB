<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PRPackage.aspx.cs" Inherits="OADB.PRPackage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/OADBStyles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 800px">
                <tr>
                    <td class="PageHeader">PR Package</td>
                    <td style="text-align: right"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Acquisition Item:" CssClass="labelBold"></asp:Label>&nbsp;<asp:Label ID="lblAcqItem" runat="server" CssClass="label"></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Stage: " CssClass="labelBold"></asp:Label><asp:Label ID="lblStageName" runat="server" Text="Develop PR Package" CssClass="label"></asp:Label></td>
                </tr>
            </table>
            <br />
            <table>
                <tr>
                    <td class="labelBold" style="height: 25px">PMO must submit PR package to include:<br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="IT Acquisition Decision Memorandum (IT projects only)" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="IGCE" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="SOW/SOO/PWS" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Source Selection Plan (SSP)" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Acquisition Strategy" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Assigned COTR" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox7" runat="server" Text="Market Research" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox8" runat="server" Text="DHS Small Business Review form (if not small business procurement)" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox9" runat="server" Text="Nominees for Source Selection" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox10" runat="server" Text="Evaluation Board (SSEB)" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox12" runat="server" Text="DHS approval for IT projects, if required" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox13" runat="server" Text="Funds certified and routed to CO" /></td>
                </tr>
            </table>
            <br />
            <br />
            <table style="width: 450px">
                <tr>
                    <td style="text-align: left">
                        <asp:CheckBox ID="CheckBox11" runat="server" Text="Mark as Final" /></td>
                    <td style="text-align: right">
                        <asp:Button ID="Button3" runat="server" Text="Upload" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

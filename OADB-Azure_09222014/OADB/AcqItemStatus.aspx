<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcqItemStatus.aspx.cs" Inherits="OADB.AcqItemStatus" %>

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
                    <td class="PageHeader">Status of Acquisition Item</td>
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
                        <asp:Label ID="Label2" runat="server" Text="Stage: " CssClass="labelBold"></asp:Label><asp:Label ID="lblStageName" runat="server" CssClass="label"></asp:Label></td>
                </tr>
            </table>
            <br />
            <table>
                <tr>
                    <td colspan="2" class="labelBold">List of Documents:</td>
                </tr>
                <tr>
                    <td style="width: 30px"></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server">Document 001</asp:HyperLink></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server">Document 002</asp:HyperLink></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server">Document 003</asp:HyperLink></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server">Document 004</asp:HyperLink></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink5" runat="server">Document 005</asp:HyperLink></td>
                </tr>
            </table>
            <br />
            <br />
            <table style="width: 450px">
                <tr>
                    <td style="text-align: left">
                        <asp:CheckBox ID="CheckBox11" runat="server" Text="Mark as Final" Checked="true" /></td>
                    <td style="text-align: right">
                        <asp:Button ID="Button3" runat="server" Text="Upload" /></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>

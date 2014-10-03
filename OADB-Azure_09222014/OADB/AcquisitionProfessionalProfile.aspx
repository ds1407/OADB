<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcquisitionProfessionalProfile.aspx.cs" Inherits="OADB.AcquisitionProfessionalProfile" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Acquisition Professional Profile</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="Button3" runat="server" Text="Modify Profile" /><asp:Button ID="Button4" runat="server" Text="Assign Contract" /><asp:Button ID="Button5" runat="server" Text="Print" />
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td style="text-align: left; vertical-align: middle;">
                <asp:Label ID="RoleName" runat="server" Text="Name: " class="label"></asp:Label><asp:TextBox ID="Name" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;<a runat="server" id="urlMail"><asp:Image runat="server" Height="20" Width="20px" ImageUrl="~/Images/Mail-icon.png" BorderStyle="None" ImageAlign="Bottom" /></a></td>
            <td style="text-align: left"></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td style="text-align: center" class="labelBold">Acquisition Positions Held</td>
            <td style="text-align: center" class="labelBold">Acquisition Certifications Held</td>
        </tr>
        <tr>
            <td style="width: 50%">
                <table style="width: 100%; border-width: 1px; border-style: solid">
                    <tr>
                        <td style="text-align: right; width: 50%">
                            <asp:CheckBox ID="Position_CO" runat="server" Text="Contracting Officer" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>
                        <td style="text-align: right">
                            <asp:CheckBox ID="Position_PM" runat="server" Text="Program Manager" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>

                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:CheckBox ID="Position_CS" runat="server" Text="Contract Specialist" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>
                        <td style="text-align: right">
                            <asp:CheckBox ID="Position_OrdOff" runat="server" Text="Ordering Official" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:CheckBox ID="Position_COTR" runat="server" Text="COTR" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>
                        <td></td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align: top">
                <table style="width: 100%; border-width: 1px; border-style: solid">
                    <tr>
                        <td style="text-align: right; width: 50%">
                            <asp:CheckBox ID="Cert_COCS" runat="server" Text="CO/CS" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>
                        <td style="text-align: right">
                            <asp:CheckBox ID="Cert_PM" runat="server" Text="PM" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>

                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:CheckBox ID="Cert_COTR" runat="server" Text="COTR" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>
                        <td style="text-align: right">
                            <asp:CheckBox ID="Cert_OrdOff" runat="server" Text="Ordering Official" TextAlign="Left" class="label" CssClass="label" Enabled="False" /></td>
                    </tr>
                    <tr>
                        <td style="height: 20px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button6" runat="server" Text="Training" Width="150px" /></td>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button7" runat="server" Text="Assigned Contracts" Width="150px" /></td>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button8" runat="server" Text="CO/CS Summary" Width="150px" /></td>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button9" runat="server" Text="COTR Summary" Width="150px" /></td>
        </tr>
        <tr>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button10" runat="server" Text="..." Width="150px" /></td>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button11" runat="server" Text="Assigned PRs" Width="150px" /></td>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button12" runat="server" Text="PM Summary" Width="150px" /></td>
            <td style="text-align: center; width: 25%">
                <asp:Button ID="Button13" runat="server" Text="OO Summary" Width="150px" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td style="text-align: center" class="labelBold">Job Series Title</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="JobSeriesTitle" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

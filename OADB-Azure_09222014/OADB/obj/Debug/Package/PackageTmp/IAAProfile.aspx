<%@ Page Title="" Language="C#" MasterPageFile="~/OADB.Master" AutoEventWireup="true" CodeBehind="IAAProfile.aspx.cs" Inherits="OADB.IAAProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <table style="width: 800px">
        <tr>
            <td class="PageHeader">IAA Profile</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /><asp:Button ID="Button7" runat="server" Text="Modify Contract Profile" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td style="vertical-align: top; text-align: left">
                <asp:Button ID="Button4" runat="server" Text="Modifications" Width="125px" /><asp:Button ID="Button5" runat="server" Text="PRs" Width="125px" /><asp:Button ID="Button6" runat="server" Text="Contractors" Width="125px" OnClick="Button6_Click" /><br /><br /><br /><br /><asp:Button ID="Button3" runat="server" Text="View Task Orders" Width="150px" OnClick="Button3_Click" /></td>
            <td style="vertical-align: top; text-align: right">
                <asp:Button ID="Button_CO" runat="server" Text="Appointed CO" Width="125px" OnClick="Button_CO_Click" /><br />
                <asp:Button ID="Button_CS" runat="server" Text="Appointed CS" Width="125px" OnClick="Button_CS_Click" /><br />
                <asp:Button ID="Button_COTR" runat="server" Text="Appointed COTR" Width="125px" OnClick="Button_COTR_Click" /><br />
                <asp:Button ID="Button_PM" runat="server" Text="Assigned PM" Width="125px" OnClick="Button_PM_Click" />
            </td>
        </tr>
    </table>
    <br />
    <div style="width: 900px">
        <asp:Panel ID="pnlIAAWorkFlow1" runat="server" Visible="false">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/IAAWorkFlowAcceptIAA.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="lblPhase" runat="server" Text="<b>Current Phase:</b> Receiving Agency Accepts the IAA"></asp:Label>
                <br />
                <asp:Label ID="lblName" runat="server" Text="<b>POC:</b> Lori Mendes "></asp:Label>
                <asp:Label ID="lblDate" runat="server" Text="<b>Date:</b> 8/1/14"></asp:Label>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlIAAWorkFlow2" runat="server" Visible="false">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/IAAWorkFlowAcqStrategy.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label1" runat="server" Text="<b>Current Phase:</b> CO/CS Finalize Acq. Strategy w/ Mission"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="<b>POC:</b> Jane Smith "></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="<b>Date:</b> 7/16/14"></asp:Label>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlIAAWorkFlow3" runat="server" Visible="false">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/IAAWorkFlowDocsSent.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label4" runat="server" Text="<b>Current Phase:</b> IAA Docs sent to Receiving Agency"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="<b>POC:</b> Doug Jones "></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="<b>Date:</b> 2/16/14"></asp:Label>
            </div>
        </asp:Panel>
         <asp:Panel ID="pnlIAAWorkFlow4" runat="server" Visible="false">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/IAAWorkFlowPrepareDoc.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label7" runat="server" Text="<b>Current Phase:</b> CO/CS Prepares IAA Documents "></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="<b>POC:</b> Michelle Lee "></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="<b>Date:</b> 6/31/14"></asp:Label>
            </div>
        </asp:Panel>
         <asp:Panel ID="pnlIAAWorkFlow5" runat="server" Visible="false">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/IAAWorkFlowReviewPkg.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label10" runat="server" Text="<b>Current Phase:</b> CO/CS Review of PR Package "></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" Text="<b>POC:</b> Frankie Salazar "></asp:Label>
                <asp:Label ID="Label12" runat="server" Text="<b>Date:</b> 5/25/14"></asp:Label>
            </div>
        </asp:Panel>

    </div>

    <table style="width: 800px; border: 1px solid black">
        <tr style="height: 25px; vertical-align: middle">
            <td class="label" colspan="2">
                <asp:Label ID="lblPRNumber" runat="server" Text="PR Number: "></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 50%" class="label">IAA Number</td>
            <td style="width: 50%" class="label">Order Number</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="IaaNumber" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="OrderNumber" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%" class="label">Action Date</td>
            <td style="width: 50%" class="label">Notification Lead Time</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="ActionDate" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="NotificationLeadTime" runat="server" Width="300px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="label">Notification Note</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="NotificationNote" runat="server" Width="600px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

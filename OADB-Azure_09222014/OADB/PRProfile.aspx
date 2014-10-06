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
    <div style="width: 900px">
        <asp:Panel ID="pnlPR1WorkFlow1" runat="server" Visible="false">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/PRWorkFlowEvalProposals.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="lblPhase" runat="server" Text="<b>Current Phase:</b> Evaluate Proposal"></asp:Label>
                <br />
                <asp:Label ID="lblName" runat="server" Text="<b>POC:</b> Leroy Mendes "></asp:Label>
                <asp:Label ID="lblDate" runat="server" Text="<b>Date:</b> 9/1/14"></asp:Label>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlPR1WorkFlow2" runat="server" Visible="false">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/PRWorkFlowAcqStrategy.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label1" runat="server" Text="<b>Current Phase:</b> CO/CS Finalize Acq. Strategy w/ Mission"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="<b>POC:</b> John Smith "></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="<b>Date:</b> 8/16/14"></asp:Label>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlPR1WorkFlow3" runat="server" Visible="false">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/PRWorkFlowContractAwarded.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label4" runat="server" Text="<b>Current Phase:</b> Contract Awarded"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="<b>POC:</b> Debbie Jones "></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="<b>Date:</b> 3/16/14"></asp:Label>
            </div>
        </asp:Panel>
         <asp:Panel ID="pnlPR1WorkFlow4" runat="server" Visible="false">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/PRWorkFlowReviewPkg.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label7" runat="server" Text="<b>Current Phase:</b> CO/CS Review of PR Package"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="<b>POC:</b> Michael Lee "></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="<b>Date:</b> 7/31/14"></asp:Label>
            </div>
        </asp:Panel>
         <asp:Panel ID="pnlPR1WorkFlow5" runat="server" Visible="false">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/PRWorkFlowSolicitation.png" />
            <br />
            <div style="text-align: right">
                <asp:Label ID="Label10" runat="server" Text="<b>Current Phase:</b> Develop and Issue Solicitation"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" Text="<b>POC:</b> Fred Salazar "></asp:Label>
                <asp:Label ID="Label12" runat="server" Text="<b>Date:</b> 6/25/14"></asp:Label>
            </div>
        </asp:Panel>

    </div>

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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PRStatusChecker.aspx.cs" Inherits="OADB.PRStatusChecker" MasterPageFile="OADB.Master" %>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table style="width: 800px">
        <tr>
            <td class="PageHeader">PR Status Checker</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 70%; border: solid; border-width: 1px;">
        <tr style="background-color: lightgray; text-align: center">
            <td style="border: 1px solid #000000;" class="tableheader">Search for Purchase Request(s)</td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td style="text-align: center" class="message">Enter a PR Number or wildcard search criteria using * and click on the search button</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblErrorMessage" runat="server" CssClass="errorMessage"></asp:Label></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="PR Number or wildcard: " CssClass="label"></asp:Label>
                <asp:TextBox ID="txtPRNumberToFind" runat="server" Width="200px"></asp:TextBox><asp:Button ID="btSearch" runat="server" Text="Search" OnClick="btSearch_Click" />
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 70%; border: solid; border-width: 1px;">
        <tr style="background-color: lightgray; text-align: center">
            <td style="border: 1px solid #000000" colspan="2" class="tableheader">Purchase Request Search Results</td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="2">
                <table style="margin: auto; border: solid; border-width: 1px; text-align: center" border="1">
                    <tr>
                        <td>PR Number</td>
                        <td>OA Status</td>
                        <td>OA Division</td>
                        <td>CO Name/Phone</td>
                        <td>CS Name/Phone</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 70%">
        <tr>
            <td colspan="2" style="text-align: center" class="tableheader">Purchase Request Detail</td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="tableheaderNotBold">PR Number and OA Information</td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2">
                <table style="width: 100%">
                    <tr>
                        <td class="label">PR Number</td>
                        <td>
                            <asp:TextBox ID="txtPRNumber" runat="server" Width="200px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td class="label">OA Status</td>
                        <td>
                            <asp:TextBox ID="txtOAStatus" runat="server" Width="200px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">OA Division Assigned To</td>
                        <td colspan="3">
                            <asp:TextBox ID="txtOADiv" runat="server" Width="400px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">CO Name</td>
                        <td>
                            <asp:TextBox ID="txtCOName" runat="server" Width="200px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td class="label">CS Name</td>
                        <td>
                            <asp:TextBox ID="txtCSName" runat="server" Width="200px" CssClass="textboxReadOnly"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">CO Phone Number</td>
                        <td>
                            <asp:TextBox ID="txtCOPhone" runat="server" Width="200px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td class="label">CS Phone Number</td>
                        <td>
                            <asp:TextBox ID="txtCSPhone" runat="server" Width="200px" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td>
                <table style="width: 50%">
                    <tr>
                        <td style="text-align: center" colspan="3" class="tableheaderNotBold">PR Package Status</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: center" class="labelBold">Y/N</td>
                        <td style="text-align: center" class="labelBold">Date</td>
                    </tr>

                    <tr>
                        <td style="white-space: nowrap" class="label">Authorized in Acquistion Plan</td>
                        <td style="text-align: center">
                            <asp:CheckBox ID="AcqPlan" runat="server" Enabled="False" />
                        </td>
                        <td style="text-align: center">--</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">Acquisition Plan Version</td>
                        <td>
                            <asp:TextBox ID="AcqPlanVersionDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">Approved PR Received by OA</td>
                        <td>
                            <asp:TextBox ID="ApprPRReceivedbyOA" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">Statement of work Accepted</td>
                        <td>
                            <asp:TextBox ID="SOWAccepted" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">Market Research Accepted</td>
                        <td>
                            <asp:TextBox ID="MRAccepted" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">IGCE Accepted</td>
                        <td>
                            <asp:TextBox ID="IGCEAccepted" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">Evaluation Factors Accepted</td>
                        <td>
                            <asp:TextBox ID="EvalFactorsAccepted" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">Small Business Form 700-22 Approved</td>
                        <td>
                            <asp:TextBox ID="SMBApproved" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">TSAITBUY Approval Required</td>
                        <td>
                            <asp:CheckBox ID="TSABuyIT" runat="server" Enabled="False" /></td>
                        <td>
                            <asp:TextBox ID="TSABuyITDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap" class="label">DHSITBUY Approval Required</td>
                        <td>
                            <asp:CheckBox ID="DHSBuyIT" runat="server" Enabled="False" /></td>
                        <td>
                            <asp:TextBox ID="DHSBuyITDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="white-space: nowrap" class="label">PR Package Complete and Compliant</td>
                        <td>
                            <asp:TextBox ID="PRPackageCompleteDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">COTR required per CO</td>
                        <td>
                            <asp:CheckBox ID="COTRRequired" runat="server" Enabled="False" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="label">COTR Nominee Name</td>
                        <td>
                            <asp:TextBox ID="COTRNomineeName" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>

                </table>

            </td>
            <td style="vertical-align: top">
                <table style="width: 50%">
                    <tr>
                        <td colspan="4" style="white-space: nowrap; text-align: center" class="tableheaderNotBold">Procurement Milestones Applicable Dates</td>
                    </tr>
                    <tr>
                        <td style="text-align: center" class="labelBold">Milestone</td>
                        <td style="text-align: center" class="labelBold">N/A</td>
                        <td style="text-align: center" class="labelBold">Planned</td>
                        <td style="text-align: center" class="labelBold">Actual</td>
                    </tr>
                    <tr>
                        <td class="label">Industry Day</td>
                        <td>
                            <asp:CheckBox ID="IndustryDay" runat="server" Enabled="False" /></td>
                        <td>
                            <asp:TextBox ID="IndustryDayPlannedDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="IndustryDayActualDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">RFP/RFQ Issue</td>
                        <td>
                            <asp:CheckBox ID="RFPRFQIssue" runat="server" /></td>
                        <td>
                            <asp:TextBox ID="RFPRFQIssuePlannedDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="RFPRFQIssueActualDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap" class="label">Proposal/Quote Due</td>
                        <td>
                            <asp:CheckBox ID="PropQuoteDue" runat="server" Enabled="False" /></td>
                        <td>
                            <asp:TextBox ID="PropQuoteDuePlannedDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="PropQuoteDueActualDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">Evaluation Complete</td>
                        <td>
                            <asp:CheckBox ID="EvalComplete" runat="server" Enabled="False" /></td>
                        <td>
                            <asp:TextBox ID="EvalCompletePlannedDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="EvalCompleteActualDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap" class="label">Negotiations Complete</td>
                        <td>
                            <asp:CheckBox ID="NegotComplete" runat="server" Enabled="False" /></td>
                        <td>
                            <asp:TextBox ID="NegotCompletePlannedDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="NegotCompleteActualDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">Pre-Award Review</td>
                        <td>
                            <asp:CheckBox ID="PreAwardReview" runat="server" Enabled="False" /></td>
                        <td>
                            <asp:TextBox ID="PreAwardReviewPlannedDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="PreAwardReviewActualDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="label">Contract Award</td>
                        <td>
                            <asp:CheckBox ID="ContractAward" runat="server" Enabled="False" /></td>
                        <td></td>
                        <td>
                            <asp:TextBox ID="ContractAwardActualDate" runat="server" CssClass="textboxReadOnly" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>


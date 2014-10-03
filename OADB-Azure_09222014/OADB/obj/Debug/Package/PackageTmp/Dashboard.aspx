<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OADB.Dashboard" MasterPageFile="OADB.Master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">Execute Dashboard/Reports</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td style="width: 50px;">&nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkAdHocReports" runat="server" OnClick="lnkAdHocReports_Click">1. Ad-hoc Reports</asp:LinkButton></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkFYPRsBYOffice" runat="server" OnClick="lnkFYPRsBYOffice_Click">2. Number/Value of PRs by Office and Fiscal Year</asp:LinkButton></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkStatusofFYPRs" runat="server" OnClick="lnkStatusofFYPRs_Click">3. Number/Value of PRs by PR Status and Fiscal Year</asp:LinkButton>
                </asp:DropDownList></div></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="TopActiveContracts" runat="server" OnClick="TopActiveContracts_Click">4. Top 10 Active Contracts</asp:LinkButton></td>
        </tr>
    </table>
    <br />
    <br />
    <table runat="server" id="tblAdHoc">
        <tr>
            <td class="labelBold" style="height: 25px;">Ad-hoc Reports
                <div class="label">
                    Export to:
            <asp:DropDownList ID="ddlExportTo1" runat="server" CssClass="textbox">
                <asp:ListItem>Excel</asp:ListItem>
                <asp:ListItem>PDF</asp:ListItem>
            </asp:DropDownList>

                </div>
            </td>

        </tr>
        <tr>
            <td>
                <table style="border: 1px solid black; width: 800px;">
                    <tr>
                        <td colspan="6" class="label">Page Items:</td>
                    </tr>
                    <tr>
                        <td class="label">Fiscal Year</td>
                        <td style="width: 150px">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox">
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                            </asp:DropDownList></td>
                        <td class="label">OA Status</td>
                        <td style="width: 175px">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>Cancelled</asp:ListItem>
                                <asp:ListItem>Approval in Progress</asp:ListItem>
                                <asp:ListItem>Approved</asp:ListItem>
                            </asp:DropDownList></td>
                        <td class="label">OA Division Assigned To</td>
                        <td style="width: 150px">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="textbox">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>Division 1</asp:ListItem>
                                <asp:ListItem>Division 2</asp:ListItem>
                                <asp:ListItem>Division 3</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td class="label">Assigned CO</td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="textbox">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>CO 1</asp:ListItem>
                                <asp:ListItem>CO 2</asp:ListItem>
                                <asp:ListItem>CO 3</asp:ListItem>
                            </asp:DropDownList></td>
                        <td class="label">Assigned CS</td>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="textbox">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>CS 1</asp:ListItem>
                                <asp:ListItem>CS 2</asp:ListItem>
                                <asp:ListItem>CS 3</asp:ListItem>
                            </asp:DropDownList></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                <table style="width: 800px;">
                    <tr>
                        <td>
                            <asp:GridView ID="gvAdHocReport" runat="server" AutoGenerateColumns="False"
                                CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                                ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle"
                                DataKeyNames="" Width="800px">
                                <AlternatingRowStyle CssClass="altRow" />
                                <Columns>
                                    <asp:BoundField HeaderText="PR Number" DataField="Data1" HeaderStyle-Width="50px" />
                                    <asp:BoundField HeaderText="Amount Committed" DataField="Data1" HeaderStyle-Width="100px" />
                                    <asp:BoundField HeaderText="Approved PR Received by OA Date" DataField="Data1" HeaderStyle-Width="100px" />
                                    <asp:BoundField HeaderText="OA Status" DataField="Data1" HeaderStyle-Width="100px" />
                                    <asp:BoundField HeaderText="OA Division Assigned To" DataField="Data1" HeaderStyle-Width="100px" />
                                    <asp:BoundField HeaderText="Assigned CO" DataField="Data1" HeaderStyle-Width="100px" />
                                </Columns>
                                <PagerStyle CssClass="gridViewPagerStyle" />
                                <RowStyle Font-Overline="False" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>


    <table runat="server" id="tblByOffice" style="width: 800px">
        <tr>
            <td class="labelBold" colspan="5" style="height: 25px;">Number/Value of PRs by Office and Fiscal Year
                <div class="label">
                    Export to:
            <asp:DropDownList ID="ddlExportTo2" runat="server" CssClass="textbox">
                <asp:ListItem>Excel</asp:ListItem>
                <asp:ListItem>PDF</asp:ListItem>
            </asp:DropDownList>

                </div>

            </td>
        </tr>
        <tr>
            <td colspan="5" class="label">Fiscal Year :
                <asp:DropDownList ID="ddlByOfficeFY" runat="server" CssClass="textbox">
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="5" class="label">Office :
                <asp:DropDownList ID="ddlByOfficeOffice" runat="server" CssClass="textbox">
                    <asp:ListItem>Office 1</asp:ListItem>
                    <asp:ListItem>Office 2</asp:ListItem>
                    <asp:ListItem>Office 3</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 50%">
                <asp:GridView ID="gvByOffice" runat="server" AutoGenerateColumns="False"
                    CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                    ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle"
                    DataKeyNames="" Width="800px">
                    <AlternatingRowStyle CssClass="altRow" />
                    <Columns>
                        <asp:BoundField HeaderText="" DataField="Id" HeaderStyle-Width="50px" Visible="false" />
                        <asp:BoundField HeaderText="Month" DataField="Month" HeaderStyle-Width="100px" />
                        <asp:BoundField HeaderText="Calendar Year" DataField="CalYear" HeaderStyle-Width="100px" />
                        <asp:BoundField HeaderText="# of PRs Approved" DataField="Approved" HeaderStyle-Width="100px" />
                        <asp:BoundField HeaderText="# of PRs Obligated" DataField="Obligated" HeaderStyle-Width="100px" />
                    </Columns>
                    <PagerStyle CssClass="gridViewPagerStyle" />
                    <RowStyle Font-Overline="False" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceByOffice" Width="750px">
                    <Series>
                        <asp:Series Name="Approved" XValueMember="Month" YValueMembers="Approved" Legend="Approved"></asp:Series>
                        <asp:Series Name="Obligated" XValueMember="Month" YValueMembers="Obligated" Legend="Obligated"></asp:Series>
                    </Series>
                    <Legends>
                        <asp:Legend Name="Obligated" Docking="Right"></asp:Legend>
                        <asp:Legend Name="Approved" Docking="Right"></asp:Legend>
                    </Legends>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1" AlignmentStyle="All">
                            <AxisY Title="# of PRs"></AxisY>
                            <AxisX Interval="1" Title="Month"></AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSourceByOffice" runat="server" ConnectionString="<%$ ConnectionStrings:OADBConnectionString %>" SelectCommand="select * from [dbo].[PRByOffice] order by [Id]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

    <table runat="server" id="tblByStatus" style="width: 800px">
        <tr>
            <td class="labelBold" colspan="5" style="height: 25px;">Number/Value of PRs by PR Status and Fiscal Year
                <div class="label">
                    Export to:
            <asp:DropDownList ID="ddlExportTo3" runat="server" CssClass="textbox">
                <asp:ListItem>Excel</asp:ListItem>
                <asp:ListItem>PDF</asp:ListItem>
            </asp:DropDownList>

                </div>
            </td>
        </tr>
        <tr>
            <td colspan="5" class="label">Fiscal Year :
                <asp:DropDownList ID="ddlByStatusFY" runat="server" CssClass="textbox">
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="5" class="label">Office :
                <asp:DropDownList ID="ddlByStatusOffice" runat="server" CssClass="textbox">
                    <asp:ListItem>Office 1</asp:ListItem>
                    <asp:ListItem>Office 2</asp:ListItem>
                    <asp:ListItem>Office 3</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 50%; vertical-align: top">
                <asp:GridView ID="gvByStatus" runat="server" AutoGenerateColumns="False"
                    CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                    ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle"
                    DataKeyNames="Id" Width="500px" DataSourceID="SqlDataSourceByStatus">
                    <AlternatingRowStyle CssClass="altRow" />
                    <Columns>
                        <asp:BoundField HeaderText="" DataField="Id" HeaderStyle-Width="50px" ReadOnly="True" Visible="false" />
                        <asp:BoundField HeaderText="OA Status" DataField="Status" HeaderStyle-Width="100px" />
                        <asp:BoundField HeaderText="# of PRs" DataField="PRCount" HeaderStyle-Width="100px" />
                    </Columns>
                    <PagerStyle CssClass="gridViewPagerStyle" />
                    <RowStyle Font-Overline="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceByStatus" runat="server" ConnectionString="<%$ ConnectionStrings:OADBConnectionString %>" SelectCommand="select * from [dbo].[PRByStatus] order by [Id]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSourceByStatus" Width="250px" Height="250px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="Status" YValueMembers="PRCount" ChartType="Pie"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
        </tr>
    </table>

    <table runat="server" id="tblTopContracts" style="width: 800px">
        <tr>
            <td class="labelBold" colspan="5" style="height: 25px;">Top 10 Active Contracts <div class="label">
                    Export to:
            <asp:DropDownList ID="ddlExportTo4" runat="server" CssClass="textbox">
                <asp:ListItem>Excel</asp:ListItem>
                <asp:ListItem>PDF</asp:ListItem>
            </asp:DropDownList>

                </div></td>
        </tr>
        <tr>
            <td colspan="5" class="label">Fiscal Year :
                <asp:DropDownList ID="ddlTopActiveFY" runat="server" CssClass="textbox">
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="5" class="label">Office :
                <asp:DropDownList ID="ddlTopActiveOffice" runat="server" CssClass="textbox">
                    <asp:ListItem>Office 1</asp:ListItem>
                    <asp:ListItem>Office 2</asp:ListItem>
                    <asp:ListItem>Office 3</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 50%; vertical-align: top">
                <asp:GridView ID="gvTopContracts" runat="server" AutoGenerateColumns="False"
                    CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                    ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle"
                    Width="800px" DataSourceID="SqlDataSourceTopContract" AllowSorting="true">
                    <AlternatingRowStyle CssClass="altRow" />
                    <Columns>
                        <asp:BoundField HeaderText="Contractor Name" DataField="ContractorName" HeaderStyle-Width="100px" HeaderStyle-ForeColor="White" ReadOnly="True" SortExpression="ContractorName" />
                        <asp:BoundField HeaderText="Contract Number" DataField="ContractNumber" HeaderStyle-Width="100px" HeaderStyle-ForeColor="White" SortExpression="ContractNumber" />
                        <asp:BoundField HeaderText="Contract Ceiling" DataField="ContractCeiling" HeaderStyle-Width="100px" HeaderStyle-ForeColor="White" SortExpression="ContractCeiling" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="right" />
                        <asp:BoundField HeaderText="Cumulative Amount Obligated" DataField="CumAmtObligated" HeaderStyle-Width="100px" HeaderStyle-ForeColor="White" SortExpression="CumAmtObligated" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="right" />
                    </Columns>
                    <PagerStyle CssClass="gridViewPagerStyle" />
                    <RowStyle Font-Overline="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceTopContract" runat="server" ConnectionString="<%$ ConnectionStrings:OADBConnectionString %>" SelectCommand="select * from [dbo].[TopContracts] order by [ContractCeiling] desc"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSourceTopContract" Width="750px">
                    <Series>
                        <asp:Series Name="ContractCeiling" XValueMember="ContractNumber" YValueMembers="ContractCeiling" Legend="ContractCeiling"></asp:Series>
                        <asp:Series Name="CumAmtObligated" XValueMember="ContractNumber" YValueMembers="CumAmtObligated"></asp:Series>
                    </Series>
                    <Legends>
                        <asp:Legend Name="ContractCeiling" Docking="Right"></asp:Legend>
                        <asp:Legend Name="CumAmtObligated" Docking="Right"></asp:Legend>
                    </Legends>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1" AlignmentStyle="All">
                            <AxisY Title="US $"></AxisY>
                            <AxisX Interval="1" Title="Month"></AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>

            </td>
        </tr>
    </table>

</asp:Content>

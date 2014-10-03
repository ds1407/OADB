<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PRLandingPage.aspx.cs" Inherits="OADB.PRLandingPage" MasterPageFile="OADB.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 800px">
        <tr>
            <td class="PageHeader">PRs</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <table style="width: 800px">
        <tr>
            <td>
                <asp:GridView ID="gvPRList" runat="server" AutoGenerateColumns="False"
                    CssClass="gridViewStyle" GridLines="None" AlternatingRowStyle-CssClass="altRow"
                    ShowHeaderWhenEmpty="True" PagerStyle-CssClass="gridViewPagerStyle"
                    DataKeyNames="PRId,PRNumber" OnRowCommand="gvPRList_RowCommand">
                    <AlternatingRowStyle CssClass="altRow" />
                    <Columns>
                        <asp:TemplateField HeaderText="PR Number">
                            <ItemTemplate>
                                <asp:LinkButton Text='<%#Eval("PRNumber") %>' runat="server" CommandName="PRPROFILE" CommandArgument='<%# Container.DataItemIndex %>' ></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle CssClass="gridViewPagerStyle" />
                    <RowStyle Font-Overline="False" />
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>


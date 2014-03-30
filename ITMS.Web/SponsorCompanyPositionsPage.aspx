<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="SponsorCompanyPositionsPage.aspx.cs" Inherits="ITMS.Web.SponsorCompanyPositionsPage" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1><strong style="font-size: smaller" class="newStyle1">MANAGE POSITION(S) PAGE</strong></h1>
<asp:Panel runat="server" HorizontalAlign="Left" Width="463px" CssClass="inlineBlock">
    <table runat="server">
        <tr>
            <td class="auto-style3">
                <h2><strong style="text-align: center; font-size: larger;">ADD AN INTERNSHIP POSITION</strong></h2>
            </td>
        </tr>
        </table>
    <table runat="server">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Text="Your Manager ID is: "></asp:Label>
                <asp:Label ID="ManagerID_Label" runat="server" Text="ID"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Position Type</td>
            <td>
                <asp:DropDownList ID="PositionDropDownList" runat="server" AutoPostBack="True">
                    <asp:ListItem>Paid</asp:ListItem>
                    <asp:ListItem>Volunteer</asp:ListItem>
                    <asp:ListItem>Credit</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Position Title</td>
            <td>
                <asp:TextBox ID="PositionTitleTextBox" runat="server" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Description of Position</td>
            <td>
                <asp:TextBox ID="PositionDescriptionTextBox" runat="server" Height="49px" TextMode="MultiLine" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Target Skill Set and Requirement </td>
            <td>
                <asp:TextBox ID="PosSkillSetTextBox" runat="server" Height="42px" TextMode="MultiLine" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="Work Hours Required"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PosWorkHoursTextBox" runat="server" TextMode="Number" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Number of Work Days<br /> (per Week)</td>
            <td>
                <asp:TextBox ID="PosWorkDaysTextBox" runat="server" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Position" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear Form" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Panel>

<asp:Panel runat="server" HorizontalAlign="Right" Width="460px" CssClass="inlineBlock" Height="319px">
    <table runat="server">
        <tr>
            <td class="auto-style7">
                <asp:GridView ID="PositionGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PO_ID" DataSourceID="ITMSDBPositionGridView" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="376px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="PO_ID" HeaderText="PO_ID" InsertVisible="False" ReadOnly="True" SortExpression="PO_ID" />
                        <asp:BoundField DataField="PO_Title" HeaderText="PO_Title" SortExpression="PO_Title" />
                        <asp:BoundField DataField="PO_Desc" HeaderText="PO_Desc" SortExpression="PO_Desc" />
                        <asp:BoundField DataField="PO_Type" HeaderText="PO_Type" SortExpression="PO_Type" />
                        <asp:BoundField DataField="PO_Skills" HeaderText="PO_Skills" SortExpression="PO_Skills" />
                        <asp:BoundField DataField="PO_Hours" HeaderText="PO_Hours" SortExpression="PO_Hours" />
                        <asp:BoundField DataField="PO_Days" HeaderText="PO_Days" SortExpression="PO_Days" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="ITMSDBPositionGridView" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ITMSDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Position]"></asp:SqlDataSource>
            </td>
            
        </tr>
    </table>


</asp:Panel>


</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .newStyle1 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style3 {
            width: 885px;
            height: 27px;
        }
        .auto-style6 {
            width: 150px;
            text-align: right;
        }
        .auto-style7 {
            height: 198px;
        }
    </style>
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" 
    CodeBehind="SponsorCompanyPositionsPage.aspx.cs" Inherits="ITMS.Web.SponsorCompanyPositionsPage" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1><strong style="font-size: smaller" class="newStyle1">MANAGE POSITION(S) PAGE</strong></h1>
    <div class="panel panel-default">
        <asp:Panel runat="server" HorizontalAlign="Left" Width="525px" CssClass="inlineBlock">
            <table class="table table-bordered" runat="server">
                <tr>
                    <td class="auto-style3">
                        <h2><strong style="text-align: center; font-size: larger;">ADD AN INTERNSHIP POSITION</strong></h2>
                    </td>
                </tr>
            </table>
            <table class="table table-bordered" runat="server">
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Your ManagerID is: "></asp:Label>
                        <asp:Label ID="ManagerID_Label" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                        <asp:Label ID="Label4" runat="server" Text="Your Position ID is :"></asp:Label>
                        <asp:Label ID="Position_ID_Label" runat="server"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">Position Type</td>
                    <td colspan="2">
                        <asp:DropDownList ID="PositionDropDownList" runat="server" AutoPostBack="True">
                            <asp:ListItem>Paid</asp:ListItem>
                            <asp:ListItem>Volunteer</asp:ListItem>
                            <asp:ListItem>Credit</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="color: #FF0000" class="auto-style8">*</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">Position Title</td>
                    <td colspan="2">
                        <asp:TextBox ID="PositionTitleTextBox" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">*</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">Description of Position</td>
                    <td colspan="2">
                        <asp:TextBox ID="PositionDescriptionTextBox" runat="server" Height="49px" TextMode="MultiLine" Width="185px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">*</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">Target Skill Set and Requirement </td>
                    <td colspan="2">
                        <asp:TextBox ID="PosSkillSetTextBox" runat="server" Height="42px" TextMode="MultiLine" Width="185px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">*</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="Work Hours Required"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="PosWorkHoursTextBox" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">*</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">Number of Work Days<br />
                        (per Week)</td>
                    <td colspan="2">
                        <asp:TextBox ID="PosWorkDaysTextBox" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">*</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="AddNew_PositionButton" runat="server" OnClick="AddNew_PositionButton_Click" Text="Register Position" style="text-align: center" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Position_Edit_Button" runat="server" style="text-align: center" Text="Edit" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear Form" style="text-align: center" />
                    </td>
                    <td>
                        <asp:Button ID="Position_Remove_Button" runat="server" style="text-align: center" Text="Remove" ToolTip="Position is no longer available" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>
    </div>
    <div class="panel panel-default">
        <asp:Panel runat="server" HorizontalAlign="Right" Width="604px" CssClass="inlineBlock" Height="319px">
            <table runat="server">
                <tr>
                    <td >
                        <asp:GridView ID="PositionGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="PositionId" DataSourceID="ITMSDBPositionGridView" CssClass="table table-hover table-striped" GridLines="None" ForeColor="#333333" Width="533px" AllowPaging="True" Style="font-size: small" Height="272px" OnSelectedIndexChanged="PositionGridView_SelectedIndexChanged" CellSpacing="3" EmptyDataText="Data is not Available!!">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="PositionId" HeaderText="PositionId" InsertVisible="False" ReadOnly="True" SortExpression="PositionId" />
                                <asp:BoundField DataField="PositionType" HeaderText="PositionType" SortExpression="PositionType" />
                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                <asp:BoundField DataField="JobDescription" HeaderText="JobDescription" SortExpression="JobDescription" />
                                <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" />
                                <asp:BoundField DataField="WorkHours" HeaderText="WorkHours" SortExpression="WorkHours" />
                                <asp:BoundField DataField="WorkDays" HeaderText="WorkDays" SortExpression="WorkDays" />
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
                        <asp:SqlDataSource ID="ITMSDBPositionGridView" runat="server" ConnectionString="<%$ ConnectionStrings:SponsorPositionGridViewConnString %>" SelectCommand="usp_Position_GetAll" InsertCommand="usp_Position_Insert" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure">
                            <InsertParameters>
                                <asp:Parameter Direction="InputOutput" Name="PostionID" Type="Int32" />
                                <asp:Parameter Name="ManagerId" Type="Int32" />
                                <asp:Parameter Name="Title" Type="String" />
                                <asp:Parameter Name="Duties" Type="String" />
                                <asp:Parameter Name="Type" Type="String" />
                                <asp:Parameter Name="Skills" Type="String" />
                                <asp:Parameter Name="WorkHours" Type="Decimal" />
                                <asp:Parameter Name="WorkDays" Type="Decimal" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="1" Name="ManagerId" QueryStringField="@ManagerId" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>

                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </asp:Panel>

    </div>
    

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
        .inlineBlock {}
        .auto-style8 {
            width: 16px;
        }
        .auto-style9 {
            color: #FF0000;
            width: 16px;
        }
        .auto-style10 {
            width: 57px;
        }
        .auto-style11 {
            width: 154px;
            text-align: right;
        }
        .auto-style12 {
            width: 47px;
            text-align: right;
        }
    </style>
</asp:Content>

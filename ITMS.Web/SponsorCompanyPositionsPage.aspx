<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="SponsorCompanyPositionsPage.aspx.cs" Inherits="ITMS.Web.SponsorCompanyPositionsPage" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1><strong style="font-size: smaller" class="newStyle1">MANAGE POSITION(S) PAGE</strong></h1>

    <asp:HiddenField ID="hdnPositionId" runat="server" />
    <asp:Label ID="ManagerID_Label" runat="server" Visible="false"></asp:Label>

    <div class="row">
        <div class="form-horizontal">

            <div class="form-group">
                <label class="col-sm-2 control-label">Position Type</label>
                <div class="col-sm-4">

                    <asp:DropDownList ID="PositionDropDownList" runat="server" AutoPostBack="True" CssClass="form-control">
                        <asp:ListItem>Paid</asp:ListItem>
                        <asp:ListItem>Volunteer</asp:ListItem>
                        <asp:ListItem>Credit</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="PositionDropDownList" ErrorMessage="Position Type is required"></asp:RequiredFieldValidator>
                </div>

            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Position Title</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="PositionTitleTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="PositionTitleTextBox" ErrorMessage="Title is Required"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Description of Postion</label>
                <div class="col-sm-6">
                    <asp:TextBox CssClass="form-control" ID="PositionDescriptionTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ControlToValidate="PositionDescriptionTextBox" ErrorMessage="Description is required"></asp:RequiredFieldValidator>
                </div>
            </div>



            <div class="form-group">
                <label class="col-sm-2 control-label">Target Skill Set and Requirement</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="PosSkillSetTextBox" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ControlToValidate="PosSkillSetTextBox" ErrorMessage="Skill Set is Required"></asp:RequiredFieldValidator>
                </div>
            </div>



            <div class="form-group">
                <label class="col-sm-2 control-label">Work Hours Required</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="PosWorkHoursTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ControlToValidate="PosWorkHoursTextBox" ErrorMessage="Work hours are Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator CssClass="form-control" Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ControlToValidate="PosWorkHoursTextBox" ErrorMessage="Numbers only please" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    <asp:RangeValidator CssClass="form-control" Display="Dynamic" ID="RangeValidator1" runat="server" ControlToValidate="PosWorkHoursTextBox" ErrorMessage="Work hours between 1 and 40" MaximumValue="40" MinimumValue="1"></asp:RangeValidator>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">Number of Work Days (per week)</label>
                <div class="col-sm-6">
                    <asp:TextBox CssClass="form-control" ID="PosWorkDaysTextBox" runat="server" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ControlToValidate="PosWorkDaysTextBox" ErrorMessage="Work Days are Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator CssClass="form-control" Display="Dynamic" ID="RegularExpressionValidator2" runat="server" ControlToValidate="PosWorkDaysTextBox" ErrorMessage="Only numbers Please" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    <asp:RangeValidator CssClass="form-control" Display="Dynamic" ID="RangeValidator2" runat="server" ControlToValidate="PosWorkDaysTextBox" ErrorMessage="Work days between 1 and 7" MaximumValue="7" MinimumValue="1"></asp:RangeValidator>

                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-2">
                    <asp:Button ID="AddNew_PositionButton" runat="server" OnClick="AddNew_PositionButton_Click" Text="Save" CssClass="btn btn-primary" />

                </div>

                <div class="col-sm-2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear Form" CssClass="btn" />

                </div>
                <%--                        <asp:Button ID="Position_Edit_Button" runat="server" Style="text-align: center" Text="Edit" Visible="False" />
                        <asp:Button ID="Position_Remove_Button" runat="server" Style="text-align: center" Text="Remove" ToolTip="Position is no longer available" Visible="False" />--%>
            </div>
        </div>
    </div>
    <div class="row">
        <asp:GridView class="table" ID="PositionGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="PositionId" CssClass="table table-hover table-striped" GridLines="None" ForeColor="#333333" Width="533px" AllowPaging="True" OnSelectedIndexChanged="PositionGridView_SelectedIndexChanged" CellSpacing="3" EmptyDataText="Data is not Available!!">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PositionId" HeaderText="PositionId" InsertVisible="False" ReadOnly="True" SortExpression="PositionId" />
                <asp:BoundField DataField="PositionType" HeaderText="PositionType" SortExpression="PositionType" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Duties" HeaderText="JobDescription" SortExpression="JobDescription" />
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

    </div>




</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

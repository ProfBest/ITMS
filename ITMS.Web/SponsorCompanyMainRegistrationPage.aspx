<%@ Page Title="Sponsor Registration Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="True"
    CodeBehind="SponsorCompanyMainRegistrationPage.aspx.cs" Inherits="ITMS.Web.SponsorCompanyMainRegistrationPage" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  
    <h1 class="newStyle1"><strong>Sponsor Registration Page </strong></h1>

    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label>Company Name:</label>
                <asp:TextBox CssClass="form-control" ID="NewCompRegNameTextBox" runat="server" ToolTip="Sponsor Company Name"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="form-control" ID="CompNameRequiredFieldValidator" runat="server" ControlToValidate="NewCompRegNameTextBox" ErrorMessage="Company's Name is required" Style="color: #FF0000" Display="Dynamic"></asp:RequiredFieldValidator>


                <label>Address</label>
                <asp:TextBox ID="CompAddressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CompAddressRequiredFieldValidator" runat="server" ControlToValidate="CompAddressTextBox" ErrorMessage="Address is required" Style="color: #FF0000" CssClass="form-control" Display="Dynamic"></asp:RequiredFieldValidator>

                <label>City</label>
                <asp:TextBox ID="CompCityTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="CityRequiredFieldValidator" runat="server" ControlToValidate="CompCityTextBox" ErrorMessage="A City name is required"></asp:RequiredFieldValidator>


                <label>State</label>
                <asp:DropDownList ID="StateDropDownList" runat="server" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>NY</asp:ListItem>
                    <asp:ListItem>NJ</asp:ListItem>
                    <asp:ListItem>CT</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="StateRequiredFieldValidator" runat="server" ControlToValidate="StateDropDownList" ErrorMessage="A State name is Required" Style="color: #FF0000" CssClass="form-control" Display="Dynamic"></asp:RequiredFieldValidator>

                <label>Zip</label>
                <asp:TextBox ID="CompZIPTextBox" runat="server" MaxLength="5" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CompZIPTextBox" ErrorMessage="A Postal code is Required" Style="color: #FF0000" CssClass="form-control" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CompZIPTextBox" ErrorMessage="Zip Code format is incorrect" Style="color: #FF0000" ValidationExpression="\d{5}(-\d{4})?" CssClass="form-control" Display="Dynamic"></asp:RegularExpressionValidator>


                <label>Phone</label>
                <asp:TextBox ID="CompPhoneTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CompPhoneTextBox" ErrorMessage="A Phone number is Required" Style="color: #FF0000" CssClass="form-control" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator CssClass="form-control" Display="Dynamic" ID="RegularExpressionValidator2" runat="server" ControlToValidate="CompPhoneTextBox" ErrorMessage="Telephone format is incorrect" Style="color: #FF0000" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>



            </div>

        </div>
    </div>


    <h2>Add Manager</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">

                <label>First Name</label>
                <asp:TextBox ID="CompAddManFNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="form-control" Display="None" ID="RequiredFieldValidator5" runat="server" ControlToValidate="CompAddManFNameTextBox" ErrorMessage="Manager Name is a Required Field"></asp:RequiredFieldValidator>

                <label>Last Name</label>
                    <asp:TextBox ID="CompAddManLNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ControlToValidate="CompAddManLNameTextBox" ErrorMessage="Manager Last Name is a Required Field"></asp:RequiredFieldValidator>
                
                <label>Title</label>
                <asp:DropDownList ID="CompAddManTitleDropList" runat="server" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Sir</asp:ListItem>
                        <asp:ListItem>Mr.</asp:ListItem>
                        <asp:ListItem>Ms.</asp:ListItem>
                        <asp:ListItem>Miss</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ControlToValidate="CompAddManTitleDropList" ErrorMessage="Title is a Required Field" Style="color: #FF0000"></asp:RequiredFieldValidator>

                <label>Department</label>
                    <asp:TextBox ID="CompAddManDeptmntTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ControlToValidate="CompAddManDeptmntTextBox" ErrorMessage="Departament is a Required Field"></asp:RequiredFieldValidator>

                <label>Organization</label>
                    <asp:TextBox ID="CompAddManOrgTextBox" runat="server" CssClass="form-control" ></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ControlToValidate="CompAddManOrgTextBox" ErrorMessage="Organization is a Required Field"></asp:RequiredFieldValidator>

                <label>Address</label>
                    <asp:TextBox ID="CompAddManAddressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ControlToValidate="CompAddManAddressTextBox" ErrorMessage="Address is a Required Field"></asp:RequiredFieldValidator>

                <label>City</label>
                    <asp:TextBox ID="CompAddManCityTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ControlToValidate="CompAddManCityTextBox" ErrorMessage="City is a Required Field"></asp:RequiredFieldValidator>
                
                <label>State</label>
                 <asp:DropDownList ID="CompAddManStateDropDown" runat="server" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>NJ</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>CT</asp:ListItem>
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ControlToValidate="CompAddManStateDropDown" ErrorMessage="State is a Required Field"></asp:RequiredFieldValidator>

                <label>Zip Code</label>
                    <asp:TextBox ID="CompAddManZIPTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ControlToValidate="CompAddManZIPTextBox" ErrorMessage="Zip Code is a Required Field"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  CssClass="form-control" Display="Dynamic" ID="RegularExpressionValidator3" runat="server" ControlToValidate="CompAddManZIPTextBox" ErrorMessage="Zip Code format is incorrect" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>

                <label>Telephone</label>
                    <asp:TextBox CssClass="form-control" ID="CompAddManPhoneTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ControlToValidate="CompAddManPhoneTextBox" ErrorMessage="Telephone is a Required Field"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator CssClass="form-control" Display="Dynamic" ID="RegularExpressionValidator4" runat="server" ControlToValidate="CompAddManPhoneTextBox" ErrorMessage="Telephone Format is incorrect" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>


                <label>Cell Phone (optional)</label>
                    <asp:TextBox CssClass="form-control" ID="CompAddManCELLTextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="form-control" Display="Dynamic" ID="RegularExpressionValidator5" runat="server" ControlToValidate="CompAddManCELLTextBox" ErrorMessage="Cell Phone format is incorrect" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>

                <label>Email Address</label>
                    <asp:TextBox CssClass="form-control" ID="CompAddManEMailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="form-control" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ControlToValidate="CompAddManEMailTextBox" ErrorMessage="Email is a Required Field"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator CssClass="form-control" Display="Dynamic" ID="RegularExpressionValidator6" runat="server" ControlToValidate="CompAddManEMailTextBox" ErrorMessage="Email format is incorrect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


            </div>
        </div>
    </div>
       
    <div class="row">
        <div class="col-md-3">
                    <asp:Button CssClass="btn btn-primary" ID="CompAddPositionButton" runat="server" OnClick="CompAddPositionButton_Click" Text="Add a Position" />

        </div>

        <div class="col-md-3">
                    <asp:Button CssClass="btn" ID="AddManagerPanelClearButton" runat="server" OnClick="AddManagerPanelClearButton_Click" Text="Clear" />

            </div>
    </div>


</asp:Content>

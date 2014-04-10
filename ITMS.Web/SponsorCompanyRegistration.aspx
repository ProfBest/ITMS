<%@ Page Title="Sponsor Registration Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="SponsorCompanyRegistration.aspx.cs" Inherits="ITMS.Web.SponsorCompanyRegistrationPage" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            width: 91px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <h2>Sponsor Registration Page
    </h2>
    <asp:Panel ID="Panel2" runat="server" Height="375px">
        <p class="auto-style1">
            <strong>Add Manager to Existing Sponsor Company</strong></p>
        <p class="auto-style1">
            Your Company&#39;s name is :&nbsp;
            <asp:Label ID="CompanyID_Label" runat="server"></asp:Label>
        </p>
        <asp:Panel ID="PanelManInfo" runat="server">
             <table style="width: 622px">
                <tr>
                    <td class="auto-style2">
                        First Name:            
                    </td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server" Width="127px" style="margin-left: 0px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="A First Name is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Last Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server" Width="127px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="A Last Name is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Title:
                    </td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server"  Width="155px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTitle" ErrorMessage="A Title is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Department:
                    </td>
                    <td>
                        <asp:TextBox ID="txtDept" runat="server" Width="157px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDept" ErrorMessage="Departmet is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Organization:
                    </td>
                    <td>
                        <asp:TextBox ID="txtOrg" runat="server" Width="115px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOrg" ErrorMessage="An Organizition is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Office Phone:</td>
                    <td>
                        <asp:TextBox ID="txt1OP" runat="server" Width="153px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt1OP" ErrorMessage="Office Phone is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CellPhone:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txt1CP" runat="server" style="margin-left: 0px" Width="127px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td designer:mapid="23" class="auto-style2">Email:</td>
                    <td designer:mapid="24">
                        <asp:TextBox ID="txt1Email" runat="server" Style="margin-left: 0px" Width="182px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt1Email" ErrorMessage="Email is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt1Email" ErrorMessage="You must enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="color: #FF0000"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                     <td class="auto-style2">Street:</td>
                     <td>
                         <asp:TextBox ID="txt1Street" runat="server" Width="195px" style="margin-left: 0px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt1Street" ErrorMessage="Street is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>

        </asp:Panel>



    </asp:Panel>
       
         

</asp:Content>

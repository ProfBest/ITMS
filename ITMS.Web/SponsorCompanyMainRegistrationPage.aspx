<%@ Page Title="Sponsor Registration Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="SponsorCompanyMainRegistrationPage.cs" Inherits="ITMS.Web.SponsorCompanyMainRegistrationPage" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style3 {
            width: 195px;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style5 {
            color: #FF0000;
            width: 195px;
        }
        .auto-style8 {
            text-align: right;
            width: 122px;
        }
        .auto-style9 {
            width: 122px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <h2>Sponsor Registration Page
    </h2>
    <asp:Panel ID="Panel2" runat="server" Height="278px">
        <p class="auto-style1">
            <strong>Add New Internship Sponsor Company</strong></p>
        <asp:Panel ID="Panel3" runat="server" Height="211px" Width="579px">
           <table>
               <tr>
                   <td class="auto-style8"><asp:Label ID="CompNameLabel" runat="server" Text="Company's Name  "></asp:Label></td>
                   <td><asp:TextBox ID="NewCompRegNameTextBox" runat="server" ToolTip="Sponsor Company Name" Width="215px"></asp:TextBox></td>
                   <td class="auto-style3"> <span class="auto-style4">* </span>
                       <asp:RequiredFieldValidator ID="CompNameRequiredFieldValidator" runat="server" ControlToValidate="NewCompRegNameTextBox" ErrorMessage="Company's Name is required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style8"><asp:Label ID="CompAddressLabel" runat="server" Text="Address"></asp:Label></td>
                   <td> <asp:TextBox ID="CompAddressTextBox" runat="server" Width="211px"></asp:TextBox></td> 
                   <td class="auto-style3"><span class="auto-style4">*&nbsp;</span><asp:RequiredFieldValidator ID="CompAddressRequiredFieldValidator" runat="server" ControlToValidate="CompAddressTextBox" ErrorMessage="Address is required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>                  
               </tr>
               <tr>
                   <td class="auto-style8"><asp:Label ID="CompCityLabel" runat="server" Text="City"></asp:Label></td>
                   <td><asp:TextBox ID="CompCityTextBox" runat="server" Width="161px"></asp:TextBox></td>
                   <td class="auto-style5">*&nbsp;<asp:RequiredFieldValidator ID="CityRequiredFieldValidator" runat="server" ControlToValidate="CompCityTextBox" ErrorMessage="A City name is required"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align: right" class="auto-style9"><asp:Label ID="CompStateLabel" runat="server" Text="State"></asp:Label></td>
                   <td><asp:DropDownList ID="StateDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem>NY</asp:ListItem>
                <asp:ListItem>NJ</asp:ListItem>
                <asp:ListItem>CT</asp:ListItem>
                       <asp:ListItem>PA</asp:ListItem>
            </asp:DropDownList></td>
                   <td class="auto-style3">     <span class="auto-style4">*&nbsp;<asp:RequiredFieldValidator ID="StateRequiredFieldValidator" runat="server" ControlToValidate="StateDropDownList" ErrorMessage="A State name is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                       </span>
                   </td>
              </tr>
               <tr>
                   <td class="auto-style8"> <asp:Label ID="CompZipLabel" runat="server" Text="ZIP"></asp:Label></td>
                   <td> <asp:TextBox ID="CompZIPTextBox" runat="server" MaxLength="5" Width="61px"></asp:TextBox></td>
                   <td class="auto-style3">    <span class="auto-style4">*&nbsp;</span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CompZIPTextBox" ErrorMessage="A postal code is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align: right" class="auto-style9">    
                       <asp:Label ID="CompPhoneLabel" runat="server" Text="Telephone"></asp:Label>                       
                   </td>
                   <td><asp:TextBox ID="CompPhoneTextBox" runat="server" TextMode="Phone" Width="104px"></asp:TextBox></td>
                   <td> <span class="auto-style4"> * </span><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CompPhoneTextBox" ErrorMessage="A Phone number is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align: right" class="auto-style9">&nbsp;</td>
                   <td>&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td style="text-align: right" class="auto-style9">
                       <asp:Button ID="CompSubmitButton" runat="server" OnClick="CompSubmitButton_Click" style="text-align: center" Text="Register Company" Width="121px" />
                   </td>
                   <td style="text-align: center">
                       <asp:Button ID="CompAddManagerButton" runat="server" Text="Add Manager" Width="96px" OnClick="CompAddManagerButton_Click" />
                       &nbsp;&nbsp;
                       <asp:Button ID="CompClearButton0" runat="server" Text="Clear Form" Width="82px" />
                   </td>
                   <td>
                       &nbsp;&nbsp;&nbsp;
                   </td>
               </tr>
           </table>

            <table>


            </table>
                  
            
           
        </asp:Panel>
    </asp:Panel>
    

</asp:Content>

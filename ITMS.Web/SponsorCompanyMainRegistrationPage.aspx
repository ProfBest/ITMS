<%@ Page Title="Sponsor Registration Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="True"
    CodeBehind="SponsorCompanyMainRegistrationPage.aspx.cs" Inherits="ITMS.Web.SponsorCompanyMainRegistrationPage" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style5 {
            color: #FF0000;
            width: 241px;
        }
        .auto-style8 {
            text-align: right;
            width: 122px;
        }
        .auto-style9 {
        }
        .auto-style10 {
            color: #003399;
        }
        .auto-style11 {
            color: #696969;
            text-decoration: underline;
        }
        .auto-style13 {
            width: 226px;
        }
        .auto-style14 {
            width: 125px;
        }
        .auto-style15 {
            width: 125px;
            height: 13px;
        }
        .auto-style16 {
            height: 13px;
        }
        .auto-style17 {
            width: 226px;
            height: 13px;
        }
        .auto-style18 {
            width: 338px;
        }
        .auto-style22 {
            width: 140px;
        }
        .newStyle1 {
            font-weight: bold;
        }
        .auto-style24 {
            color: #3366CC;
        }
        .auto-style25 {
            width: 159px;
            height: 27px;
        }
        .auto-style27 {
            width: 129px;
            height: 27px;
        }
        .auto-style28 {
            width: 290px;
        }
        .auto-style30 {
            width: 223px;
        }
        .auto-style31 {
            width: 241px;
        }
        .auto-style32 {
            width: 290px;
            height: 27px;
        }
        .auto-style33 {
            width: 140px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <h1 class="newStyle1"><strong>Sponsor Registration Page </strong>
    </h1>
    <asp:Panel ID="Panel2" runat="server" Height="217px" Width="737px">
        <p class="auto-style1">
            <strong>Add New Internship Sponsor Company</strong></p>
        <asp:Panel ID="Panel3" runat="server" Height="178px" Width="704px">
           <table style="width: 613px">
               <tr>
                   <td class="auto-style8"><asp:Label ID="CompNameLabel" runat="server" Text="Company's Name  "></asp:Label></td>
                   <td class="auto-style30"><asp:TextBox ID="NewCompRegNameTextBox" runat="server" ToolTip="Sponsor Company Name" Width="210px"></asp:TextBox></td>
                   <td class="auto-style31"> <span class="auto-style4">* </span>
                       <asp:RequiredFieldValidator ID="CompNameRequiredFieldValidator" runat="server" ControlToValidate="NewCompRegNameTextBox" ErrorMessage="Company's Name is required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style8"><asp:Label ID="CompAddressLabel" runat="server" Text="Address"></asp:Label></td>
                   <td class="auto-style30"> <asp:TextBox ID="CompAddressTextBox" runat="server" Width="211px"></asp:TextBox></td> 
                   <td class="auto-style31"><span class="auto-style4">*&nbsp;</span><asp:RequiredFieldValidator ID="CompAddressRequiredFieldValidator" runat="server" ControlToValidate="CompAddressTextBox" ErrorMessage="Address is required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>                  
               </tr>
               <tr>
                   <td class="auto-style8"><asp:Label ID="CompCityLabel" runat="server" Text="City"></asp:Label></td>
                   <td class="auto-style30"><asp:TextBox ID="CompCityTextBox" runat="server" Width="211px"></asp:TextBox></td>
                   <td class="auto-style5">*&nbsp;<asp:RequiredFieldValidator ID="CityRequiredFieldValidator" runat="server" ControlToValidate="CompCityTextBox" ErrorMessage="A City name is required"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align: right" class="auto-style9"><asp:Label ID="CompStateLabel" runat="server" Text="State"></asp:Label></td>
                   <td class="auto-style30"><asp:DropDownList ID="StateDropDownList" runat="server" AutoPostBack="True">
                       <asp:ListItem></asp:ListItem>
                <asp:ListItem>NY</asp:ListItem>
                <asp:ListItem>NJ</asp:ListItem>
                <asp:ListItem>CT</asp:ListItem>
                       <asp:ListItem>PA</asp:ListItem>
            </asp:DropDownList></td>
                   <td class="auto-style31">     <span class="auto-style4">*&nbsp;<asp:RequiredFieldValidator ID="StateRequiredFieldValidator" runat="server" ControlToValidate="StateDropDownList" ErrorMessage="A State name is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                       </span>
                   </td>
              </tr>
               <tr>
                   <td class="auto-style8"> <asp:Label ID="CompZipLabel" runat="server" Text="ZIP"></asp:Label></td>
                   <td class="auto-style30"> <asp:TextBox ID="CompZIPTextBox" runat="server" MaxLength="5" Width="61px"></asp:TextBox></td>
                   <td class="auto-style31">    <span class="auto-style4">*&nbsp;</span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CompZIPTextBox" ErrorMessage="A postal code is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align: right" class="auto-style9">    
                       <asp:Label ID="CompPhoneLabel" runat="server" Text="Telephone"></asp:Label>                       
                   </td>
                   <td class="auto-style30"><asp:TextBox ID="CompPhoneTextBox" runat="server" Width="104px"></asp:TextBox></td>
                   <td class="auto-style31"> <span class="auto-style4"> * </span><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CompPhoneTextBox" ErrorMessage="A Phone number is Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr class="auto-style24">
                   <td colspan="2">&nbsp;</td>
                       <td>&nbsp;</td>
                       
               </tr>                 
                             
           </table>           
            &nbsp;</asp:Panel>

    </asp:Panel>
    &nbsp
       
    <asp:Panel ID="CompAddManagerPanel" runat="server" Width="742px">
        <table>
            <tr>
                <td style="text-align: left" class="auto-style10" colspan="3">
                    <p>
                        <span class="auto-style11"><strong>Add a Manager to the Compan</strong></span>y</p>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">                    
                    First Name</td>
                <td>
                    <asp:TextBox ID="CompAddManFNameTextBox" runat="server" Width="183px"></asp:TextBox>
                </td>
                <td class="auto-style13">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CompAddManFNameTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style14">Last Name</td>
                <td>
                    <asp:TextBox ID="CompAddManLNameTextBox" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CompAddManLNameTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Title</td>
                <td class="auto-style16">
                    <asp:DropDownList ID="CompAddManTitleDropList" runat="server" AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Sir</asp:ListItem>
                        <asp:ListItem>Mr.</asp:ListItem>
                        <asp:ListItem>Ms.</asp:ListItem>
                        <asp:ListItem>Miss</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CompAddManTitleDropList" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Departament</td>
                <td>
                    <asp:TextBox ID="CompAddManDeptmntTextBox" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CompAddManDeptmntTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Organization</td>
                <td>
                    <asp:TextBox ID="CompAddManOrgTextBox" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="CompAddManOrgTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Address</td>
                <td>
                    <asp:TextBox ID="CompAddManAddressTextBox" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="CompAddManAddressTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">City</td>
                <td>
                    <asp:TextBox ID="CompAddManCityTextBox" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="CompAddManCityTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">State</td>
                <td>
                    <asp:DropDownList ID="CompAddManStateDropDown" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>NJ</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>CT</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="CompAddManStateDropDown" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">ZIP Code</td>
                <td>
                    <asp:TextBox ID="CompAddManZIPTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="CompAddManZIPTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Telephone</td>
                <td>
                    <asp:TextBox ID="CompAddManPhoneTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="CompAddManPhoneTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Cellphone(Optional)</td>
                <td>
                    <asp:TextBox ID="CompAddManCELLTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">Email Address</td>
                <td>
                    <asp:TextBox ID="CompAddManEMailTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="CompAddManEMailTextBox" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>           
        </table>
    </asp:Panel>

            &nbsp;<asp:Panel ID="CompButtonPanel" runat="server" Width="742px" >
                <table>
                <tr>
                   <td style="text-align: left" class="auto-style10" colspan="4">What would you like to do next?</td>
               </tr>
                 <tr>
                   <td style="text-align: center" class="auto-style25">
                       <asp:Button ID="CompAddMOREManagerButton" runat="server" Text="Add Another Manager" OnClick="CompAddMOREManagerButton_Click" style="text-align: justify" Width="148px" />
                       &nbsp;
                   </td>
                     <td class="auto-style27" style="text-align: left">
                         <asp:Button ID="CompAddPositionButton" runat="server" OnClick="CompAddPositionButton_Click" Text="Add a Position" />
                     </td>
                   <td class="auto-style32">
                       &nbsp;<asp:Button ID="AddManagerPanelSaveButton" runat="server" OnClick="AddManagerPanelSaveButton_Click" Text="Save" Width="93px" />
                       &nbsp;
                       <asp:Button ID="AddManagerPanelClearButton" runat="server" Text="Clear" OnClick="AddManagerPanelClearButton_Click" />
                       </td>
                   <td class="auto-style33">
                       &nbsp;&nbsp;&nbsp;
                       </td>
               </tr>

                    <tr>
                        <td class="auto-style18" style="text-align: right" colspan="2">&nbsp;</td>
                        <td class="auto-style28" style="text-align: center">&nbsp;</td>
                        <td class="auto-style22">&nbsp;</td>
                    </tr>

            </table>
          </asp:Panel>

</asp:Content>

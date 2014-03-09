<%@ Page Title="Sponsor Registration Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="SponsorCompanyRegistration.aspx.cs" Inherits="ITMS.Web.SponsorCompanyMainRegistrationPage" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
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
            <strong>Add New Internship Sponser Company</strong></p>
        <asp:Panel ID="Panel3" runat="server" Height="211px">
            <asp:Label ID="Label1" runat="server" Text="Company's Name  "></asp:Label>
            <asp:TextBox ID="NewCompRegNameTextBox" runat="server" ToolTip="Sponsor Company Name" Width="241px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </asp:Panel>
    </asp:Panel>
    

</asp:Content>

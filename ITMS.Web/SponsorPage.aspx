<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SponsorPage.aspx.cs" Inherits="ITMS.Web.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: center;
            font-size: large;
        }
        .style5
        {
            text-align: justify;
        }
        .style6
        {
            text-align: justify;
            font-size: small;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="style4"> <strong>Sponsor Company Internship Services</strong></h3>
<p class="style4"> &nbsp;</p>
   <p class="style6"> The CST Department offers an internship program to help students build a bridge between
        education and real applications. The objective of the intersnship is to give students the opportunity to:
         Interact with knowledgeable and experienced professionals, gain hands-on 
         experience on their chosen fields, and develop professional relationships.</p>
    <p class="style5"> &nbsp;</p>
<p class="style5"> &nbsp;</p>
<p class="style5"> &nbsp;</p>
<p class="style5"> &nbsp;</p>
    <asp:HyperLink ID="HyperLink1" runat="server" style="color: #FFFFFF" 
        NavigateUrl="~/SponsorCompanyRegistration.aspx">Please, Click here for Sponsor Company new Registration.</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" style="color: #FFFFFF">Please, Click here to edit already registered Company, Add Managers or Positions.</asp:HyperLink>
    </asp:Content>

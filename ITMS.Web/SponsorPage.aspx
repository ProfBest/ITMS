<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SponsorPage.aspx.cs" Inherits="ITMS.Web.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style4
        {
            text-align: center;
            font-size: large;
            width: 927px;
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
        .newStyle1 {
            font-weight: bold;
            color: #000000;
        }
        .newStyle2 {
            font-weight: bold;
            color: #000000;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="style4"> <strong>Sponsor Company Internship Services</strong></h3>
<p class="style4"> The CST Department offers an internship program to help students build a bridge between
        education and real applications. The objective of the intersnship is to give students the opportunity to:
         Interact with knowledgeable and experienced professionals, gain hands-on 
         experience in their chosen fields, and develop professional relationships.</p>
    <p class="style4"> 
        &nbsp;</p>
   <p class="style6"> 
    <asp:HyperLink ID="HyperLink1" runat="server" style="color: #000000; font-size: medium;" 
        NavigateUrl="~/SponsorCompanyMainRegistrationPage.aspx">Please, Click here for NEW Sponsor Company Registration.</asp:HyperLink>
    </p>
    <p class="style5"> 
    <asp:HyperLink ID="HyperLink2" runat="server" style="color: #000000; text-align: center;" NavigateUrl="~/SponsorCompanyRegistration.aspx">Please, Click here to edit already registered Company, Add Managers or Positions.</asp:HyperLink>
    </p>
<p class="style5"> 
    &nbsp;</p>
<p class="style5"> &nbsp;</p>
<p class="style5"> &nbsp;</p>
    <br />
    <br />
    </asp:Content>

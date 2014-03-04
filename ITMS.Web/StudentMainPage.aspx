<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentMainPage.aspx.cs" 
Inherits="ITMS.Web.WebForm1" %>




<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
        .style2
        {
            height: 21px;
            color: #FFFFFF;
        }
    </style>
    
    

</asp:Content>

    

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



 <table style="width:100%;">
        <tr>
            <td>

               <center><b><font size="3">Student Internship Services</font></b></center>
                
                </td>
        </tr>
        </table>





    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#cccccc" class="style1">

                First time students applying for the internship program, please use the 
                registration link to fill out your application.
                <br />
                <br />
                If you have already been registered and wish to check your current status, 
                please click on the status link below to verify if all application requirements 
                have been met or if you have been accepted to the program.</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
        </tr>
    </table>

    <br />

    
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            <a href="StudentRegistration.aspx"> Click here for Student Registration</a>
               </td>
        </tr>
            <tr>
            <td>
                Click here for Status on your Student Registration Process</td>
        </tr>
            <tr>
            <td>
                &nbsp;</td>
        </tr>

        <tr>
            <td class="style1">
                </td>
        </tr>
    </table>


    
</asp:Content>

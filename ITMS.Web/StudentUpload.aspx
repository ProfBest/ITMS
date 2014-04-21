﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="StudentUpload.aspx.cs" Inherits="RegSkillUploadPage._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
        }
        #Button1
        {
            width: 241px;
        }
        .style3
        {
            width: 494px;
        }
        .style4
        {
            width: 100%;
        }
        .style6
        {
            font-size: large;
        }
        .style7
        {
            width: 175px;
            
        }
        .style9
        {
            width: 129px;
            font-size: large;
        }
        .style10
        {
            width: 170px;
        }
        #Checkbox1
        {
            width: 25px;
            height: 25px;
        }
        #Checkbox2
        {
            width: 24px;
            height: 17px;
        }
        .style12
        {
            font-size: medium;
        }
        .style13
        {
            width: 175px;
            font-size: large;
        }
        #TextArea1
        {
            width: 312px;
        }
        #TextArea2
        {
            width: 311px;
        }
        .style14
        {
            width: 290px;
        }
        #TextArea3
        {
            width: 629px;
            height: 80px;
            margin-top: 0px;
        }
        .style15
        {
            width: 1076px;
        }
        .style16
        {
            width: 1076px;
            font-size: medium;
        }
        #TextArea4
        {
            width: 630px;
            height: 77px;
        }
        .style17
        {
            width: 6px;
            font-size: large;
        }
        .style18
        {
            width: 11px;
            font-size: large;
        }
        .style20
        {
            width: 12px;
            font-size: large;
        }
        .style21
        {
            width: 11px;
        }
        .auto-style1 {
            width: 175px;
            height: 222px;
        }
        .auto-style2 {
            width: 11px;
            height: 222px;
        }
        .auto-style3 {
            width: 129px;
            font-size: large;
            height: 222px;
        }
        .auto-style4 {
            width: 12px;
            font-size: large;
            height: 222px;
        }
        .auto-style5 {
            width: 170px;
            height: 222px;
        }
        .auto-style6 {
            height: 222px;
        }
        </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function TextArea3_onclick() {

        }

        function Submit1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
        <center><font size="4"><b>Student Internship Registration Document</b></font></center>
    
    <p class="style12">
        <strong>Please upload the following documents: </strong>
    </p>

 
            <div>
           
            <table style="width: 100%;">
                <tr>
                    <td class="style15">
                        &nbsp;<span class="style12"><strong> Please
                        Upload Resume</strong></span></td>
                    <td class="style3">
                        &nbsp;<asp:TextBox ID="txtResumeFormContent" runat="server" Height="134px" TextMode="MultiLine" Width="599px"></asp:TextBox>
&nbsp;</td>
                    <td>
                        &nbsp;
                        <asp:FileUpload ID="ResumeUpload" runat="server" Width="355px" />
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="3">
                        &nbsp;
                        &nbsp;
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;<strong>Please Upload Transcript</strong></td>
                    <td class="style3">
                        &nbsp;
                        <asp:TextBox ID="txtTranscriptFormContent" runat="server" Height="134px" TextMode="MultiLine" Width="599px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:FileUpload ID="TranscriptUpload" runat="server" Width="355px" />
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;
                    </td>
                    <td class="style3">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>

                   
        </div>

            

        <p class="style6">

            <strong><font size="Large">Based on your resume, select your Technical Skill Sets:</font>
         </strong>
         </p>

            

        <div>        
       
            <table class="style4">
                <tr>
                    <td class="style17" rowspan="3">
                        &nbsp;</td>
                    <td class="style13">
                        <strong>Networking</strong></td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style9">
                        <strong>Security</strong></td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style10">
                        <span class="style6"><strong>Programming</strong></span></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style6">
                        <span class="style6"><strong>Database</strong></span></td>
                </tr>
              
                <tr>
                    <td class="auto-style1">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Class="ckbNetworking">
                            <asp:ListItem>Cisco Router</asp:ListItem>
                            <asp:ListItem>WAN</asp:ListItem>
                            <asp:ListItem>TCP/IP</asp:ListItem>

                        </asp:CheckBoxList>
                        <asp:Button ID="myb" runat="server" Text="Testing" OnClick="myb_Click" />
                    </td>
                    <td class="auto-style2">
                        </td>
                    <td class="auto-style3">
                        <asp:CheckBoxList ID="CheckBoxList2" runat="server" CssClass="ckbSecurity" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Font-Size="Small" Width="108px">
                            <asp:ListItem>Data</asp:ListItem>
                            <asp:ListItem>Network</asp:ListItem>

                        </asp:CheckBoxList>
                        </td>
                    <td class="auto-style4">
                        </td>
                    <td class="auto-style5">
                        <span class="style12"><strong>
                        <asp:CheckBoxList ID="CheckBoxList3" runat="server" cssClass="ckbProgramming" classAutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Font-Size="Small" Width="108px">
                            <asp:ListItem>Java</asp:ListItem>
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Vilnet</asp:ListItem>
                            <asp:ListItem>C++</asp:ListItem>
                            <asp:ListItem>PHP</asp:ListItem>
                            <asp:ListItem>ASP.NET</asp:ListItem>

                        </asp:CheckBoxList>
                        </strong></span></td>
                    <td class="auto-style2">
                        </td>
                    <td class="auto-style6">
                        <asp:CheckBoxList ID="CheckBoxList4" runat="server" CssClass="ckbDatabase" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                            <asp:ListItem>SQL</asp:ListItem>
                            <asp:ListItem>Oracle</asp:ListItem>
                            <asp:ListItem>MySQL</asp:ListItem>

                        </asp:CheckBoxList>
                        </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>   
           </div>
           
           <p></p>

          
           <div>          
               <table style="width:100%;">
                   <tr>
                       <td class="style14">
                           <br />
                           <span class="style12"><strong>Please Enter Other Technical Skills:</strong></span></td>
                       <td id="txtTextAreTechSkillFormContent">
                           <asp:TextBox ID="txtAreaTechSkill" runat="server" Height="134px" TextMode="MultiLine" Width="599px"></asp:TextBox>
                       </td>
                   </tr>
               </table>         
           </div>

           <p></p>

           <div>
           <table style="width:100%;">
                   <tr>
                       <td class="style14">
                           <br />
                           <strong><span class="style12">Work Experience From Resume</span></strong></td>
                       <td>
                           <asp:TextBox ID="txtAreaWorkExpFormContent" runat="server" Height="64px" TextMode="MultiLine" Width="599px"></asp:TextBox>
                       </td>
                   </tr>
               </table>
           </div>
           
           <p>
               <asp:Label ID="lblTestingErrors" runat="server" Text="Label"></asp:Label>
        </p>

           <div align="center">
                     
               &nbsp;<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Your Uploaded Documents" />
               
            </div>
           </asp:Content>   
           
           
           
           
           
           
           
       



    
   


    



    
   




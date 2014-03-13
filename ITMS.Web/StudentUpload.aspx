<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
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
                        &nbsp;
                        <textarea id="txtAreaUploadResume" name="S1" rows="4" cols="50"></textarea></td>
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
                        <textarea id="txtAreaUploadTranscript" name="S2" rows="4" cols="50"></textarea></td>
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
                    <td class="style17" rowspan="8">
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
                    <td class="style7">
                        <input id="CheckboxRouter" type="checkbox" /><span class="style12"><strong>Cisco Routers</strong></span></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style9">
                        <input id="CheckboxData" type="checkbox" /><span class="style12"><strong>Data</strong></span></td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style10">
                        <input id="CheckboxJava" type="checkbox" /><span class="style12"><strong>Java</strong></span></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        <input id="CheckboxSQL" type="checkbox" /><span class="style12"><strong>SQL</strong></span></td>
                  </tr>
                <tr>
                    <td class="style7">
                        <input id="CheckboxWAN" type="checkbox" /><span class="style12"><strong>WAN</strong></span></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style9">
                        <input id="CheckboxNetwork" type="checkbox" /><span class="style12"><strong>Network</strong></span></td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style10">
                        <input id="CheckboxCSharp" type="checkbox" /><span class="style12"><strong>C#</strong></span></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        <input id="CheckboxOracle" type="checkbox" /><span class="style12"><strong>Oracle</strong></span></td>
                </tr>
                <tr>
                    <td class="style7">
                        <input id="CheckboxTCPIP" type="checkbox" /><span class="style12"><strong> TCP/IP</strong></span></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style10">
                        <input id="CheckboxVilnet" type="checkbox" /><strong>Vilnet</strong></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        <input id="CheckboxMySQL" type="checkbox" /><span class="style12"><strong>MySQL</strong></span></td>
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
                        <input id="CheckboxC++" type="checkbox" /><strong>C++</strong></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
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
                        <input id="CheckboxPHP" type="checkbox" /><span class="style12"><strong>PHP</strong></span></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
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
                        <input id="CheckboxASPNET" type="checkbox" /><strong><span class="style12">ASP.NET</span></strong></td>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
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
                       <td>
                           <textarea id="TextAreaTechSkill" name="S3" rows="7" cols="50" onclick="return TextArea3_onclick()"></textarea></td>
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
                           <textarea id="TextAreaWorkExp" name="S3" cols="50"
                               onclick="return TextArea3_onclick()"></textarea></td>
                   </tr>
               </table>
           </div>
           
           <p></p>

           <div align="center">
                     
               &nbsp;<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Your Uploaded Documents" />
               
            </div>
           </asp:Content>   
           
           
           
           
           
           
           
       



    
   


    



    
   




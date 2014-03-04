<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="ITMS.Web.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        #TextArea1
        {
            height: 86px;
            width: 764px;
            margin-left: 9px;
        }
        .style2
        {
            width: 309px;
        }
        #LimitationsYes
        {
            width: 816px;
        }
        .style3
        {
            width: 886px;
        }
        .style4
        {
            width: 171px;
        }
        #txtboxLimitationsYes
        {
            width: 668px;
            margin-left: 0px;
        }
        </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function TextArea1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1><b>Enter student personal information:</b></h1>
<table>
    <tr>
        <td> First ID</td>
        <td>
            <asp:TextBox ID="txtCUNYID" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Last 4 SSN</td>
        <td><asp:TextBox ID="txtLast4SSN" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>First Name:</td>
        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Last Name:</td>
        <td>
            <asp:TextBox runat="server" ID="txtLastName"></asp:TextBox>
        <td>*</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>Street</td>
        <td><asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>City</td>
        <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>State</td>
        <td><asp:DropDownList runat="server" ID="ddlState">
            <asp:ListItem Text="NY" />
            <asp:ListItem Text="NJ" />
            <asp:ListItem Text="PA" />
        </asp:DropDownList>
        </td>
        <td>*</td>
        <td>Zip</td>
        <td>
            <asp:TextBox runat="server" ID="txtZip" /></td>
            <td>*</td>
    </tr>
    <tr>
        <td>Day Phone</td>
        <td><asp:TextBox ID="txtDayPhone" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Evening Phone</td>
        <td>
            <asp:TextBox runat="server" ID="txtEveningPhone"/></td>
        <td>*</td>
        <td>Cell Phone</td>
        <td><asp:TextBox runat="server" ID="txtCellPhone" /></td>
        <td>*</td>
        <td>Email</td>
        <td><asp:TextBox runat="server" ID="txtEmail" /></td>
        <td>*</td>

    </tr>
</table>

<h2><i>Enter Student Profile Information:</i></h2>

<table>
    <tr>
        <td>Current Semester</td>
        <td><asp:DropDownList runat="server" ID="ddlCurrentSemester">
            <asp:ListItem Text="Fall" />
            <asp:ListItem Text="Spring" />
            <asp:ListItem Text="Summer" />
            <asp:ListItem Text="Winter" />
        </asp:DropDownList></td>
        <td>*</td>
        <td>GPA:</td>
        <td>
            <asp:TextBox runat="server" ID="txtGPA"  /></td>
        <td>*</td>
        <td>Graduation Date:</td>
        <td><asp:TextBox runat="server" ID="txtGradDate" /></td>
        <td>*</td>
    </tr>


    <tr>
        <td>Module 1</td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule1">
                <asp:ListItem Text="Advanced Database Systems Design" />
                <asp:ListItem Text="Project Management" />
                 <asp:ListItem Text="Local Area Networks" />
                  <asp:ListItem Text="Programming Design" />
                   <asp:ListItem Text="Client/Server Technology" />
                    <asp:ListItem Text="Web Design and Implementation" />
                     <asp:ListItem Text="Information Security" />
            </asp:DropDownList>
        </td>
        <td>*</td>

        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>

    </tr>


    <tr>
        <td>Module 2</td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule2">
                        <asp:ListItem Text="Advanced Database Systems Design" />
                <asp:ListItem Text="Project Management" />
                 <asp:ListItem Text="Local Area Networks" />
                  <asp:ListItem Text="Programming Design" />
                   <asp:ListItem Text="Client/Server Technology" />
                    <asp:ListItem Text="Web Design and Implementation" />
                     <asp:ListItem Text="Information Security" />
            </asp:DropDownList>
        </td>
        <td>*</td>

        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>


        
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>

    </tr>


    <tr>
        <td>Module 3</td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule3">
                    <asp:ListItem Text="Advanced Database Systems Design" />
                <asp:ListItem Text="Project Management" />
                 <asp:ListItem Text="Local Area Networks" />
                  <asp:ListItem Text="Programming Design" />
                   <asp:ListItem Text="Client/Server Technology" />
                    <asp:ListItem Text="Web Design and Implementation" />
                     <asp:ListItem Text="Information Security" />
            </asp:DropDownList>
        </td>
        <td>*</td>

        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>


        
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>

    </tr>

</table>


<h2><i>Enter Student Internship Requirment Information:</i></h2>
   <table>
    <tr>
        <td class="style4">Student Internship Program</td>
        <td rowspan ="2" class="style2">
            <asp:RadioButton ID="rbtnCST4900" runat="server" Text="CST4900" 
                oncheckedchanged="rbtnCST4900_CheckedChanged" AutoPostBack="True" /><br />
            <asp:RadioButton ID="rbtnCST4905" runat="server" Text="CST4905" 
                oncheckedchanged="rbtnCST4905_CheckedChanged" AutoPostBack="True"/> <br />
             *Select CST4905 only if currently employed and cannot engaged in company sponsored internship program.
        </td>
        <td>Programming</td>
        <td>&nbsp;</td>
        <td>Web Design</td>
        <td>&nbsp;</td>
        <td>DataBase</td>
        <td>&nbsp;</td>
        <td>Networking</td>
        <td>&nbsp;</td>
        <td>Web Design</td>
</tr>
<tr>
<td class="style4"></td>
<td>
                    <asp:DropDownList ID="ddlProgramming" runat="server">
                    <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
                    </asp:DropDownList>
                </td>
<td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlWebDesign" runat="server">
                    <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlDatabase" runat="server" Width="33px">
                    <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlNetworking" runat="server">
                    <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlWebdesign2" runat="server">
                    <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
                    </asp:DropDownList>
                </td>

</tr>
    </table>
    

      <asp:Panel ID="CST4900Panel" runat="server" Height="300px" Width="945px">
                             
    <table>
        <tr>
             <td>
               
             </td>
             <td></td>
             <td></td>
        </tr>
         <tr>
             <td>
                 
                 <asp:Label ID="Label1" runat="server" Text="Do you have a Driver's license?"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlDriverLicense" runat="server">
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>

             <td></td>
        </tr>
         <tr>
             <td>
                 
                 Do You Own a Car?</td>
             <td>
                 <asp:DropDownList ID="ddlOwnAcar" runat="server">
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>

             <td></td>
        </tr>
        <tr>
             <td>
                 
                 Are You Willing to Travel to NJ?</td>
             <td>
                 <asp:DropDownList ID="ddlTravelToNJ" runat="server">
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>

             <td></td>
        </tr>
        <tr>
             <td>
                 
                 Willing to Travel to Westchester NY?</td>
             <td>
                 <asp:DropDownList ID="ddlTravelToWestchester" runat="server">
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>

             <td></td>
        </tr>
        <tr>
             <td>
                 
                 Do you have any limitations in the Internship Program?</td>
             <td>
                 <asp:DropDownList ID="ddlLimitations" runat="server">
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>

             <td></td>
       </table>
       <table>
        <tr>
             <td class="style3">If yes, please explain your limitations.<textarea 
                     id="txtboxLimitationsYes" name="S1" rows="6"></textarea> </td>


        </tr>
     
      
    </table>
     </asp:Panel>



    <asp:Panel ID="CST4905Panel" runat="server" Height="300px" Width="945px">
  
    <h2><i>CST 4905 Student Employer Information - Section to be filled out by CST4905 Students Only!!!</i></h2>
    <table>
    <tr>
        <td> Employer Name</td>
        <td>
            <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Title</td>
        <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Department</td>
        <td><asp:TextBox ID="txtDept" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>Manager Name</td>
        <td>
            <asp:TextBox ID="TxtMgrName" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Manager Phone</td>
        <td>
            <asp:TextBox ID="txtMgrPhone" runat="server" ></asp:TextBox>
        <td>*</td>
        <td>Work Phone</td>
        <td>
            <asp:TextBox runat="server" ID="txtworkPhone"></asp:TextBox>
        <td>*</td>
        <td></td>
        <td></td>

     </tr>
     <tr>
        <td>Street</td>
        <td><asp:TextBox ID="txtStreet1" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>City</td>
        <td>
            <asp:TextBox runat="server" ID="txtCity1"></asp:TextBox>
        <td>*</td>
        <td>State</td>
        <td><asp:DropDownList runat="server" ID="ddLState2">
            <asp:ListItem Text="NY" />
            <asp:ListItem Text="NJ" />
            <asp:ListItem Text="PA" />
        </asp:DropDownList>
        </td>
        <td>Zip</td>
        <td>
            <asp:TextBox runat="server" ID="txtZipCode"></asp:TextBox>
        <td>*</td>
        </tr>
    </table>

    <h2><i>Please Provide a Brief Job Description Below:</i></h2>
    <table>
    <tr>
    <td><textarea id="txtJobDescript" cols="100" name="S1" rows="6"></textarea><br />
        <br />
        </td>
      
    </tr>
    </table>
    
   </asp:Panel>



    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="SubmitStudentBtn" runat="server" 
                    Text="Submit Student Information..." 
                    style="font-weight: 700; color: #0000FF; background-color: #C0C0C0" 
                    onclick="SubmitStudentBtn_Click" />
            </td>
            <td>
                <asp:Button ID="ClearStudentBtn" runat="server" Text="Clear Form..." 
                    style="font-weight: 700; color: #0000FF; background-color: #C0C0C0" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
               <a href="StudentUpload.aspx"> Link to test student upload page</a>
               </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

   


    <asp:Panel ID="StudentTestPanel1" runat="server">
  

    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label><br />
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label><br />



        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
        
        



      </asp:Panel>



  
</asp:Content>

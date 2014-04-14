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
        .errorlabel
{
    font-size: 1.2em;
    color: Red;
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
<%-- rm commented out summary
    <br />
<asp:ValidationSummary
HeaderText="You must enter a value in the following fields:"
DisplayMode="BulletList"
EnableClientScript="true"
 CssClass="failureNotification"
runat="server"/>
    --%>
<table>
    <tr>
        <td class="auto-style8"><asp:Label ID="lblCunyID" runat="server" Text="First ID" AssociatedControlID="txtCUNYID" ></asp:Label> 
           </td>
       
        <td>
            <asp:TextBox ID="txtCUNYID" runat="server"></asp:TextBox></td>
        <td>*
          
        </td>
        <%--
        <td>
                <asp:RequiredFieldValidator ControlToValidate="txtCUNYID"  CssClass="failureNotification bold" runat="server" Display="Dynamic"
                    ErrorMessage="Please enter your EMPLID" > </asp:RequiredFieldValidator>
        </td>
            --%>
           
       <%-- <td>Last 4 SSN</td>  --%>
        <td class="auto-style8"><asp:Label ID="lblLast4SSN" runat="server" Text="Last 4 SSN" AssociatedControlID="txtLast4SSN"></asp:Label>
            </td>  
        <td><asp:TextBox ID="txtLast4SSN" runat="server"></asp:TextBox></td>
        <td>*</td>
             <%--
        <td>
        <asp:RequiredFieldValidator ControlToValidate="txtLast4SSN" CssClass="failureNotification" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter last 4 digits of Social Security Number"> </asp:RequiredFieldValidator>
        </td>
             --%>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td></td>
         <td colspan="3">
                <asp:RequiredFieldValidator ControlToValidate="txtCUNYID"  CssClass="failureNotification bold" runat="server" Display="Dynamic"
                    ErrorMessage="Please enter your EMPLID">
                </asp:RequiredFieldValidator>
             <%--       ValidationLabel="CunyIDLabel" ValidationLabelStyle="errorlabel" > --%>
             
        </td>
        

       <td colspan="5">
        <asp:RequiredFieldValidator ControlToValidate="txtLast4SSN" CssClass="failureNotification" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter last 4 digits of Social Security Number"> </asp:RequiredFieldValidator>
           
        </td>
       
    </tr>
    <tr>
        <%-- <td>First Name:</td>  --%>
        <td class="auto-style8"><asp:Label ID="lblFirstName" runat="server" Text="First Name" AssociatedControlID="txtFirstName"></asp:Label>
            </td>  
        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        <td>*</td>
          
       <%-- <td>Last Name:</td> --%>
         <td class="auto-style8"><asp:Label ID="lblLastName" runat="server" Text="Last Name" AssociatedControlID="txtLastName"></asp:Label>
            </td>  
        <td>
            <asp:TextBox runat="server" ID="txtLastName"></asp:TextBox>
        </td>
        <td>*</td>
              
        <td></td>
        <td></td>

    </tr>
         <tr>
             <td></td>
             <td colspan="3">
              <asp:RequiredFieldValidator ControlToValidate="txtFirstName" CssClass="failureNotification" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your First Name"> </asp:RequiredFieldValidator>
              </td>
             
             <td colspan="5">
                  <asp:RequiredFieldValidator ControlToValidate="txtLastName" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Last Name"> </asp:RequiredFieldValidator>
                 </td>
          </tr>
    <tr>
         <%--<td>Street</td> --%>
         <td class="auto-style8"><asp:Label ID="lblStreet" runat="server" Text="Street" AssociatedControlID="txtStreet"></asp:Label>
             </td>
        <td><asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
        <td>*</td>
         
        <%--<td>City</td>--%>
         <td class="auto-style8"><asp:Label ID="lblCity" runat="server" Text="City" AssociatedControlID="txtCity"></asp:Label>
             </td>
        <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
        <td>*</td>
        
        <%--<td>State</td>--%>
             <td class="auto-style8"><asp:Label ID="lblState" runat="server" Text="State" AssociatedControlID="ddlState"></asp:Label>
                 </td>
        <td><asp:DropDownList runat="server" ID="ddlState">
            <asp:ListItem Text=" " />
            <asp:ListItem Text="NY" />
            <asp:ListItem Text="NJ" />
            <asp:ListItem Text="PA" />
        </asp:DropDownList>
        </td>
        <td>*</td>
        
        <%--<td>Zip</td>--%>
             <td class="auto-style8"><asp:Label ID="lblZip" runat="server" Text="Zip" AssociatedControlID="txtZip"></asp:Label>
                 </td>
        <td>
            <asp:TextBox runat="server" ID="txtZip" /></td>
            <td>*</td>
         
    </tr>
    <tr>
             <td></td>
        <td colspan="3">
         <asp:RequiredFieldValidator ControlToValidate="txtStreet" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a Valid Street Address"> </asp:RequiredFieldValidator>
        </td>
        <td>
             <asp:RequiredFieldValidator ControlToValidate="txtCity" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a your City"> </asp:RequiredFieldValidator>
        </td>
        <td></td>
        <td colspan="3">
            <asp:RequiredFieldValidator ControlToValidate="ddlState" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select your State"> </asp:RequiredFieldValidator>
        </td>
        <td colspan="2">
            <asp:RequiredFieldValidator ControlToValidate="txtZip" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a valid Zip code"> </asp:RequiredFieldValidator>
        </td>
     </tr>
    <tr>
       
        <%--
            <td><asp:TextBox ID="txtDayPhone"  PromptChar="_" Mask="(###) ###-#####" runat="server"></asp:TextBox></td>
            --%>
        <%-- <td>Day Phone</td>  --%>
             <td class="auto-style8"><asp:Label ID="lblDayPhone" runat="server" Text="Day Phone" AssociatedControlID="txtDayPhone"></asp:Label>
                 </td>
        <td><asp:TextBox ID="txtDayPhone"  runat="server"></asp:TextBox></td>
        <td>*</td>
        
       <%-- <td>Evening Phone</td> --%>
             <td class="auto-style8"><asp:Label ID="lblEveningPhone" runat="server" Text="Evening Phone" AssociatedControlID="txtEveningPhone"></asp:Label>
                 </td>
        <td>
            <asp:TextBox runat="server" ID="txtEveningPhone"/></td>
        <td>*</td>
        
        <%--<td>Cell Phone</td> --%>
             <td class="auto-style8"><asp:Label ID="lblCellPhone" runat="server" Text="Cell Phone" AssociatedControlID="txtCellPhone"></asp:Label>
                 </td>
        <td><asp:TextBox runat="server" ID="txtCellPhone" /></td>
        <td>*</td>
        
        <%--<td>Email</td> --%>
             <td class="auto-style8"><asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
                 </td>
        <td><asp:TextBox runat="server" ID="txtEmail" /></td>
        <td>*</td>
        
        </tr>
    <tr>
             <td></td>
            <td colspan="3">
            <asp:RequiredFieldValidator ControlToValidate="txtDayPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Day phone"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtDayPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Day phone in a valid format e.g., (555) 555-1234"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
            </td>
            <td>
             <asp:RequiredFieldValidator ControlToValidate="txtEveningPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Evening phone"> </asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ControlToValidate="txtEveningPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Evening phone in a valid format e.g., (555) 555-1234"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
            </td>
            <td></td>
            <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtCellPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Cell phone"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtCellPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Cell phone in a valid format e.g., (555) 555-1234"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
            </td>
            <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtEmail" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your E-mail Address"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtEmail" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your E-mail Address in a valid format e.g., user@domain.com"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
            </td>

            
    </tr>
</table>

<h2><i>Enter Student Profile Information:</i></h2>

<table>
    <tr>
        <%--<td>Current Semester</td>--%>
             <td class="auto-style8"><asp:Label ID="lblCurrentSemester" runat="server" Text="Current Semester" AssociatedControlID="ddlCurrentSemester"></asp:Label>
                 </td>
        <td><asp:DropDownList runat="server" ID="ddlCurrentSemester">
            <asp:ListItem Text=" " />
            <asp:ListItem Text="Fall" />
            <asp:ListItem Text="Spring" />
            <asp:ListItem Text="Summer" />
            <asp:ListItem Text="Winter" />
        </asp:DropDownList></td>
        <td>*</td>
        
         <%--<td>GPA:</td>--%>
             <td class="auto-style8"><asp:Label ID="lblGPA" runat="server" Text="GPA:" AssociatedControlID="txtGPA"></asp:Label>
                 </td>
        <td>
            <asp:TextBox runat="server" ID="txtGPA"  /></td>
        <td>*</td>
         
  <%--   
       commented out GPA is decimal RangeValidator works for double, integer
  <asp:RangeValidator ControlToValidate="txtGPA" MinimumValue="1.000" MaximumValue="4.000" Type="double" EnableClientScript="false"
            Text="The value must be from 1.000 to 4.000!" runat="server" />
        
   --%>
     <%--<td>Graduation Date:</td>--%>
             <td class="auto-style8"><asp:Label ID="lblGradDate" runat="server" Text="Graduation Date:" AssociatedControlID="txtGradDate"></asp:Label>
                 </td>
        <td><asp:TextBox runat="server" ID="txtGradDate" /></td>
        <td>*</td>
       

    </tr>

    <%--
    <tr>
             <td></td>
            <td>
             <asp:RequiredFieldValidator ControlToValidate="txtGradDate" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your expected graduation date"> </asp:RequiredFieldValidator>
            </td>
            <td>
 </tr>
       --%>
   <tr>

             <td></td>
         <td colspan="3">
             <asp:RequiredFieldValidator ControlToValidate="ddlCurrentSemester" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select a semester"> </asp:RequiredFieldValidator>
             </td>
         <td>
             <asp:RequiredFieldValidator ControlToValidate="txtGPA" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your GPA"> </asp:RequiredFieldValidator>
             </td>
         <td></td>
            <td colspan="3">
             <asp:RequiredFieldValidator ControlToValidate="txtGradDate" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your expected graduation date"> </asp:RequiredFieldValidator>
             
              
    <asp:CompareValidator ID="CompareValidatorDate" CssClass="failureNotification" runat="server" Display="Dynamic"
	ErrorMessage="not a valid date mm/dd/yyyy" ControlToValidate="txtGradDate"
	Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
       </tr>
 
    <tr>
        <%--<td>Module 1</td>--%>
             <td class="auto-style8"><asp:Label ID="lblModule1" runat="server" Text="Module 1" AssociatedControlID="ddlModule1"></asp:Label>
                 </td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule1">
                <asp:ListItem Text=" " />
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
         <td colspan="4"><asp:RequiredFieldValidator ControlToValidate="ddlModule1" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>
             </td>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>

    </tr>


    <tr>
        <%--<td>Module 2</td>--%>
             <td class="auto-style8"><asp:Label ID="lblModule2" runat="server" Text="Module 2" AssociatedControlID="ddlModule2"></asp:Label>
                 </td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule2">
                <asp:ListItem Text=" " />
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
         <td colspan="4"><asp:RequiredFieldValidator ControlToValidate="ddlModule2" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>
             </td>
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
        <%--<td>Module 3</td>--%>
             <td class="auto-style8"><asp:Label ID="lblModule3" runat="server" Text="Module 3" AssociatedControlID="ddlModule3"></asp:Label>
                 </td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule3">
                <asp:ListItem Text=" " />
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
         <td colspan="4"><asp:RequiredFieldValidator ControlToValidate="ddlModule3" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>
             </td>
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
        <td rowspan ="2" class="style2" colspan="1">

          <%--  <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" ValidationGroup="test">
                <asp:ListItem Text="CST4900" Value="True" />
                <asp:ListItem Text="CST4905" Value="True" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" ValidationGroup="test" runat="server" ErrorMessage="Missing Selection">Please select a radio button</asp:RequiredFieldValidator>
                </div>
          --%>
            <%-- rm 04/14/2014 commented out needed to validate field
            <asp:RadioButton ID="rbtnCST4900" runat="server" Text="CST4900" 
                oncheckedchanged="rbtnCST4900_CheckedChanged" AutoPostBack="True" /><br />
            <asp:RadioButton ID="rbtnCST4905" runat="server" Text="CST4905" 
                oncheckedchanged="rbtnCST4905_CheckedChanged" AutoPostBack="True"/> <br />
             *Select CST4905 only if currently employed and cannot engaged in company sponsored internship program.
        </td>
        <td>
            --%>
            <asp:DropDownList runat="server" ID="DropDownListCST"
                OnSelectedIndexChanged="CheckCST" AutoPostBack="True">
                <asp:ListItem Text=" " />
                    <asp:ListItem Text="CST4900"  />
                <asp:ListItem Text="CST4905"   />
            </asp:DropDownList> <br />
            *Select CST4905 only if currently employed and cannot engaged in company sponsored internship program.
        </td>
       
    
        <%--<td>Programming</td></td>--%>
             <td class="auto-style8"><asp:Label ID="lblProgramming" runat="server" Text="Programming" AssociatedControlID="ddlProgramming"></asp:Label>
                 </td>
        <td>&nbsp;</td>
        <%--<td>Web Design</td>--%>
             <td class="auto-style8"><asp:Label ID="lblWebDesign" runat="server" Text="Web Design" AssociatedControlID="ddlWebDesign"></asp:Label>
                 </td>
        <td>&nbsp;</td>
        <%--<td>DataBase</td>--%>
             <td class="auto-style8"><asp:Label ID="lblDatabase" runat="server" Text="DataBase" AssociatedControlID="ddlDatabase"></asp:Label>
                 </td>
        <td>&nbsp;</td>
        <%--<td>Networking</td>>--%>
             <td class="auto-style8"><asp:Label ID="lblNetworking" runat="server" Text="Networking" AssociatedControlID="ddlNetworking"></asp:Label>
                 </td>
        <td>&nbsp;</td>
        <%--<td>Web Design</td>--%>
             <td class="auto-style8"><asp:Label ID="lblSecurity" runat="server" Text="Security" AssociatedControlID="ddlSecurity"></asp:Label>
                 </td>
</tr>
<tr>
<td class="style4"></td>
<td>
                    <asp:DropDownList ID="ddlProgramming" runat="server">
                        <asp:ListItem Text="" />
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
                     <asp:ListItem Text="" />
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
                        <asp:ListItem Text="" />
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
                        <asp:ListItem Text="" />
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
                    <asp:DropDownList ID="ddlSecurity" runat="server">
                        <asp:ListItem Text="" />
                    <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
                    </asp:DropDownList>
                </td>
    
</tr>
          <tr>
             <td></td>
              <td colspan="1"><asp:RequiredFieldValidator ControlToValidate="DropDownListCST" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please check one option"> </asp:RequiredFieldValidator>
             </td>
          <td>
             <asp:RequiredFieldValidator ControlToValidate="ddlProgramming" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
             </td>
         <td></td>
         <td>
             <asp:RequiredFieldValidator ControlToValidate="ddlWebDesign" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
             </td>
         <td></td>
            <td>
             <asp:RequiredFieldValidator ControlToValidate="ddlDatabase" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
             </td>
          <td></td>
              <td>
                 <asp:RequiredFieldValidator ControlToValidate="ddlNetworking" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
              </td>
           <td></td>
              <td>
                  <asp:RequiredFieldValidator ControlToValidate="ddlSecurity" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
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
                 
                 <asp:Label ID="lblDriverLicense" runat="server" Text="Do you have a Driver's license?" AssociatedControlID="ddlDriverLicense"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlDriverLicense" runat="server">
                     <asp:ListItem Text="" />
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>
             <td><asp:RequiredFieldValidator ControlToValidate="ddlDriverLicense" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
                 </td>
             <td></td>
        </tr>
         <tr>
             <%--<td> Do You Own a Car?</td>--%>
             <td><asp:Label ID="lblOwnAcar" runat="server" Text="Do You Own a Car?" AssociatedControlID="ddlOwnAcar"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlOwnAcar" runat="server">
                     <asp:ListItem Text="" />
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>
             <td>
                <asp:RequiredFieldValidator ControlToValidate="ddlOwnAcar" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
                 </td>
             <td></td>
        </tr>
        <tr>
             <%--<td>
                 
                 Are You Willing to Travel to NJ?</td>>--%>
             <td><asp:Label ID="lblTravelToNJ" runat="server" Text="Are You Willing to Travel to NJ?" AssociatedControlID="ddlTravelToNJ"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlTravelToNJ" runat="server">
                     <asp:ListItem Text="" />
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>
             <td><asp:RequiredFieldValidator ControlToValidate="ddlTravelToNJ" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
                 </td>
             <td></td>
        </tr>
        <tr>
             <%--<td>
                 
                 Willing to Travel to Westchester NY?</td>--%>
             <td><asp:Label ID="lblTravelToWestchester" runat="server" Text="Willing to Travel to Westchester NY?" AssociatedControlID="ddlTravelToWestchester"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlTravelToWestchester" runat="server">
                     <asp:ListItem Text="" />
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>
            <td>
            <asp:RequiredFieldValidator ControlToValidate="ddlTravelToWestchester" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
            </td>
             <td></td>
        </tr>
        <%--   commented out immigration status
         <tr>
             <td>
                 
                 Immigration/residency status. You have a choice of:</td>

             <td><asp:Label ID="lblResidence" runat="server" Text="Immigration/residency status. You have a choice of:" AssociatedControlID="ddlResidence"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlResidence" runat="server">
                     <asp:ListItem Text="" />
                 <asp:ListItem Text="Citizen" />
                <asp:ListItem Text="Permanent Resident" />
                <asp:ListItem Text="International Student" />
                <asp:ListItem Text="Other" />
                 </asp:DropDownList>
             </td>
             <td>
            <asp:RequiredFieldValidator ControlToValidate="ddlResidence" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
             </td>
             <td></td>
        </tr>
            --%>
        <tr>
             <%-- <td>
                 
                 Do you have any limitations in the Internship Program?</td>--%>
             <td><asp:Label ID="lblLimitations" runat="server" Text="Do you have any limitations in the Internship Program?" AssociatedControlID="ddlLimitations"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlLimitations" runat="server">
                     <asp:ListItem Text="" />
                 <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
                 </asp:DropDownList>
             </td>
            <td><asp:RequiredFieldValidator ControlToValidate="ddlLimitations" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
             </td>
             <td></td>
            </tr>
       </table>
       <table>
        <tr>
             <td class="style3">If yes, please explain your limitations. <textarea 
                     id="txtboxLimitationsYes" name="S1" rows="6"></textarea> </td>


        </tr>
     
      
    </table>
     </asp:Panel>



    <asp:Panel ID="CST4905Panel" runat="server" Height="300px" Width="945px">
  
    <h2><i>CST 4905 Student Employer Information - Section to be filled out by CST4905 Students Only!!!</i></h2>
    <table>
    <tr>
        <%--<td> Employer Name</td>--%>
             <td><asp:Label ID="lblEmpName" runat="server" Text="Employer Name" AssociatedControlID="txtEmpName"></asp:Label>
                 
             </td>
        <td>
            <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox></td>
        <td>*</td>
         
        <%--<td>Title</td>--%>
             <td><asp:Label ID="lblTitle" runat="server" Text="Title" AssociatedControlID="txtTitle"></asp:Label>
                 
             </td>
        <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
        <td>*</td>
        
        <%--<td>Department</td>--%>
             <td><asp:Label ID="lblDept" runat="server" Text="Department" AssociatedControlID="txtDept"></asp:Label>
                 
             </td>
        <td><asp:TextBox ID="txtDept" runat="server"></asp:TextBox></td>
        <td>*</td>
        
        <td></td>
        <td></td>

    </tr>
        <tr>
             
            <td colspan="3">
            <asp:RequiredFieldValidator ControlToValidate="txtEmpName" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please enter the name of the firm"> </asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
             <asp:RequiredFieldValidator ControlToValidate="txtTitle" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select your title"> </asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtDept" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Department"> </asp:RequiredFieldValidator>
            </td>
           

            
    </tr>
    <tr>
        <%--<td>Manager Name</td>--%>
             <td><asp:Label ID="lblMgrName" runat="server" Text="Manager Name" AssociatedControlID="TxtMgrName"></asp:Label>
                 
             </td>
        <td>
            <asp:TextBox ID="TxtMgrName" runat="server"></asp:TextBox></td>
        <td>*</td>
       
       <%-- <td>Manager Phone</td>--%>
             <td><asp:Label ID="lblMgrPhone" runat="server" Text="Manager Phone" AssociatedControlID="txtMgrPhone"></asp:Label>
                 
             </td>
        <td>
            <asp:TextBox ID="txtMgrPhone" runat="server" ></asp:TextBox>
         </td>
        <td>*</td>
             
         <%--<td>Work Phone</td>
             <td><asp:Label ID="lblworkPhone" runat="server" Text="Work Phone" AssociatedControlID="txtworkPhone"></asp:Label>
                 
             </td>
        <td>
            <asp:TextBox runat="server" ID="txtworkPhone"></asp:TextBox>
        </td>
        <td>*</td>
             --%>
        <td></td>
        <td></td>

     </tr>
        <tr>
             
           <td colspan="3">
             <asp:RequiredFieldValidator ControlToValidate="TxtMgrName" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please enter the name of your Supervisor"> </asp:RequiredFieldValidator>
               </td>
             <td colspan="2">
           <asp:RequiredFieldValidator ControlToValidate="txtMgrPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a contact number for the company"> </asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ControlToValidate="txtMgrPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a contact number for the company in a valid format e.g., (555) 555-1234"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
                </td>
            <%-- rm04/12/2014 commented out no employer work phone
            <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtworkPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your work number"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtworkPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your work number in a valid format e.g., (555) 555-1234"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
                </td>
           --%>

            
    </tr>
     <tr>
        <%--<td>Street</td>--%>
             <td><asp:Label ID="lblStreet1" runat="server" Text="Street" AssociatedControlID="txtStreet1"></asp:Label>
                 
             </td>
        <td><asp:TextBox ID="txtStreet1" runat="server"></asp:TextBox></td>
        <td>*</td>
          
        <%--<td>City</td>--%>
             <td><asp:Label ID="lblCity1" runat="server" Text="City" AssociatedControlID="txtCity1"></asp:Label>
                 
             </td>
        <td>
            <asp:TextBox runat="server" ID="txtCity1"></asp:TextBox>
            </td>
        <td>*</td>
            
        <%--<td>State</td>--%>
             <td><asp:Label ID="lblState2" runat="server" Text="State" AssociatedControlID="ddLState2"></asp:Label>
                 
             </td>
        <td><asp:DropDownList runat="server" ID="ddLState2">
            <asp:ListItem Text="" />
            <asp:ListItem Text="NY" />
            <asp:ListItem Text="NJ" />
            <asp:ListItem Text="PA" />
        </asp:DropDownList>
        </td>
            <td>*</td>
              
        <%--<td>Zip</td>--%>
             <td><asp:Label ID="lblZipCode" runat="server" Text="Zip" AssociatedControlID="txtZipCode"></asp:Label>
                 
             </td>
        <td>
            <asp:TextBox runat="server" ID="txtZipCode"></asp:TextBox>
        
             
        </td>
        </tr>
          <tr>
             
            <td colspan="3">
            <asp:RequiredFieldValidator ControlToValidate="txtStreet1" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a valid Street address"> </asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
               <asp:RequiredFieldValidator ControlToValidate="txtCity1" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your City"> </asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td colspan="3">
          <asp:RequiredFieldValidator ControlToValidate="ddlState2" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your State"> </asp:RequiredFieldValidator>
            </td>
              <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtZipCode" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a valid Zip code"> </asp:RequiredFieldValidator>
            </td>
           

            
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

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
// ]]>
        function TextArea1_onclick() {

        }
        //    function ValidateSemesterYr  current year + 4 
        //       example check for cuur yr 2014 to 2018
        function ValidateSemesterYr(sender, args) {
            args.IsValid = false;

            // need current year (added 4 for future years)
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!
            var yyyy = today.getFullYear(); //currentyear
            var futureyr = today.getFullYear() + 4;//added 4 more years 
           // alert((today.getMonth() + 1) + '/' + today.getDate() + '/' + today.getFullYear());

            if (args.Value != null) {
                var varSemesYr = args.Value;

                if ((varSemesYr >= yyyy) && (varSemesYr <= futureyr)) {
                    args.IsValid = true;

                };
            }; // end of if stmt

        } // end of ValidateSemesterYr


   
        //            Function ValidateGPA to Validate GPA      
        function ValidateGPA(sender, args) {
            args.IsValid = false;

            if (args.Value != null) {
                var varGpa = args.Value;
                var GPA = (parseFloat(varGpa));

                if ((GPA >= 1) && (GPA <= 4)) {
                    args.IsValid = true;

                };
            }; // end of if stmt

        }
        //            Function ValidateModules duplicate modules validation
        function ValidateModules(sender, args) {
            args.IsValid = false;

            // check to see if duplicate modules were chosen 
            // be careful - object modules and "MainContent_"
            var customValidator1 = document.getElementById('MainContent_CustomValidatorMod1');
            var customValidator2 = document.getElementById('MainContent_CustomValidatorMod2');
            var customValidator = document.getElementById('MainContent_CustomValidatorMod');
            // check for undefined or null because it will cause exception
            if ((customValidator1 != null) &&
                (customValidator2 != null) &&
                (customValidator != null)) {
                var Object1 = document.getElementById('MainContent_ddlModule1');
                var Object2 = document.getElementById('MainContent_ddlModule2');
                var Object3 = document.getElementById('MainContent_ddlModule3');
                //alert('inside ValidateModulesmods Object1=' + Object1
                //                     + " Object2=" + Object2 + " Object3=" + Object3);
                var Module1 = Object1.options[Object1.selectedIndex].value;
                var Module2 = Object2.options[Object2.selectedIndex].value;
                var Module3 = Object3.options[Object3.selectedIndex].value;
                //alert('inside ValidateModulesmods Module1=' + Module1
                //                     + " Module2=" + Module2 + " Module3=" + Module3);

                if (((Module1 != null) && (Module1 != "")) &&
                 ((Module2 != null) && (Module2 != "")) &&
                 ((Module3 != null) && (Module3 != ""))) {
                    if ((Module1 == Module2) ||
                     (Module1 == Module3) ||
                     (Module2 == Module3)) {
                        if (Module1 == Module2) {
                            customValidator1.isvalid = false;
                            customValidator1.style.visibility = "visible";
                            customValidator2.isvalid = false;
                            customValidator2.style.visibility = "visible";
                        };
                        if (Module1 == Module3) {
                            customValidator1.isvalid = false;
                            customValidator1.style.visibility = "visible";
                            customValidator.isvalid = false;
                            customValidator.style.visibility = "visible";
                        };
                        if (Module2 == Module3) {
                            customValidator2.isvalid = false;
                            customValidator2.style.visibility = "visible";
                            customValidator.isvalid = false;
                            customValidator.style.visibility = "visible";
                        };

                        //     alert('inside ValidateModulesmods are eq Module1=' + Module1
                        //          + " Module2=" + Module2 + " Module3=" + Module3);
                        args.IsValid = false;
                        args.visbility = "visible";

                    }// end of if stmt to see any modules are equal
                    else {
                        args.IsValid = true;
                        args.visbility = "hidden";
                        customValidator1.isvalid = true;
                        customValidator1.style.visibility = "hidden";
                        customValidator2.isvalid = true;
                        customValidator2.style.visibility = "hidden";
                        customValidator.isvalid = true;
                        customValidator.style.visibility = "hidden";
                    }

                } // end of if stmt not null
                else {
                    args.IsValid = true;
                    args.visbility = "hidden";
                    customValidator1.isvalid = true;
                    customValidator1.style.visibility = "hidden";
                    customValidator2.isvalid = true;
                    customValidator2.style.visibility = "hidden";
                    customValidator.isvalid = true;
                    customValidator.style.visibility = "hidden";
                }
            } // end of if stmt not nulls
        } // end of function ValidateModules
        //              Function ReValidateMod duplicate module validation

        function ReValidateMod() {
            // check to see if duplicate modules were chosen 
            var customValidator1 = document.getElementById('MainContent_CustomValidatorMod1');
            var customValidator2 = document.getElementById('MainContent_CustomValidatorMod2');
            var customValidator = document.getElementById('MainContent_CustomValidatorMod');
            // check for undefined or null because it will cause exception
            if ((customValidator1 != null) &&
                (customValidator2 != null) &&
                (customValidator != null)) {
                var Object1 = document.getElementById('MainContent_ddlModule1');
                var Object2 = document.getElementById('MainContent_ddlModule2');
                var Object3 = document.getElementById('MainContent_ddlModule3');
                //alert('inside ReValidateMod Object1=' + Object1
                //                     + " Object2=" + Object2 + " Object3=" + Object3);
                var Module1 = Object1.options[Object1.selectedIndex].value;
                var Module2 = Object2.options[Object2.selectedIndex].value;
                var Module3 = Object3.options[Object3.selectedIndex].value;
                //alert('inside ReValidateMod Module1=' + Module1
                //                     + " Module2=" + Module2 + " Module3=" + Module3);
                if ((Module1 != null) &&
               (Module2 != null) &&
               (Module3 != null)) {
                    if ((Module1 == Module2) ||
                     (Module1 == Module3) ||
                     (Module2 == Module3)) {
                        if (Module1 == Module2) {
                            customValidator1.isvalid = false;
                            customValidator1.style.visibility = "visible";
                            customValidator2.isvalid = false;
                            customValidator2.style.visibility = "visible";
                        };
                        if (Module1 == Module3) {
                            customValidator1.isvalid = false;
                            customValidator1.style.visibility = "visible";
                            customValidator.isvalid = false;
                            customValidator.style.visibility = "visible";
                        };
                        if (Module2 == Module3) {
                            customValidator2.isvalid = false;
                            customValidator2.style.visibility = "visible";
                            customValidator.isvalid = false;
                            customValidator.style.visibility = "visible";
                        };
                        // customValidator.isvalid = false;
                        // customValidator.style.visibility = "visible";
                    }// end of if stmt to see any modules are equal
                    else {
                        customValidator1.isvalid = true;
                        customValidator1.style.visibility = "hidden";
                        customValidator2.isvalid = true;
                        customValidator2.style.visibility = "hidden";
                        customValidator.isvalid = true;
                        customValidator.style.visibility = "hidden";

                        //   alert('inside ReValidateMod hidden customValidator.isvalid=' + customValidator.isvalid
                        //      + " Visbility=" + customValidator.style.visibility);
                    }
                } // end of if stmt not null
            } // end of if stmt not nulls
        } // end of function ReValidateMod


        //                End of Function ReValidateMod

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
        <td></td>
         <td colspan="3">
                <asp:RequiredFieldValidator ControlToValidate="txtCUNYID"  CssClass="failureNotification bold" runat="server" Display="Dynamic"
                    ErrorMessage="Please enter your EMPLID">
                </asp:RequiredFieldValidator>
             <%--       ValidationLabel="CunyIDLabel" ValidationLabelStyle="errorlabel" > --%>
             <asp:RegularExpressionValidator ID="RegExpCUNYID"  ControlToValidate="txtCUNYID" CssClass="failureNotification bold" runat="server"  Display="Dynamic"   
              ErrorMessage="EMPLID length must be 8 characters"
              ValidationExpression="^[a-zA-Z0-9\s]{8,8}$" >
              </asp:RegularExpressionValidator>
             
        </td>
        

       <td colspan="5">
        <asp:RequiredFieldValidator ControlToValidate="txtLast4SSN" CssClass="failureNotification" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter last 4 digits of Social Security Number"> </asp:RequiredFieldValidator>

         <asp:CompareValidator ID="CompareValidatorSSN" ControlToValidate="txtLast4SSN" CssClass="failureNotification" runat="server" Display="Dynamic"
	        ErrorMessage="Last 4 SSN must be an integer" 
	        Operator="DataTypeCheck" Type="Integer">
         </asp:CompareValidator>  
        </td>
       
    </tr>
    <tr>
        <td>First Name:</td>
        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Last Name:</td>
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

             <asp:RegularExpressionValidator ControlToValidate="txtZip" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Zip code should be 5 or 9 digits"
                    ValidationExpression="^(\d{5}|\d{5}\-\d{4})$">
                </asp:RegularExpressionValidator>
        </td>
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
     <tr>
             <td></td>
            <td colspan="3">
            <asp:RequiredFieldValidator ControlToValidate="txtDayPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Day phone"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtDayPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Day phone in a valid format e.g., (999) 999-9999"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
            </td>
            <td>
             <asp:RequiredFieldValidator ControlToValidate="txtEveningPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Evening phone"> </asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ControlToValidate="txtEveningPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Evening phone in a valid format e.g., (999) 999-9999"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
            </td>
            <td></td>
            <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtCellPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Cell phone"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtCellPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Cell phone in a valid format e.g., (999) 999-9999"
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
        <td>Current Semester</td>
        <td><asp:DropDownList runat="server" ID="ddlCurrentSemester">
            <asp:ListItem Text="" />
            <asp:ListItem Text="Fall" />
            <asp:ListItem Text="Spring" />
            <asp:ListItem Text="Summer" />
            <asp:ListItem Text="Winter" />
            </asp:DropDownList>
            </td>
        <td> Year</td>
          <td>  <asp:TextBox runat="server" ID="txtSemesterYear"></asp:TextBox>
        </td>
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

             <td>
             <asp:RequiredFieldValidator ControlToValidate="ddlCurrentSemester" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select a semester"> </asp:RequiredFieldValidator>
             </td>
          <td> </td>
           <td></td>
         <td  colspan="2">
             <asp:RequiredFieldValidator ControlToValidate="txtSemesterYear" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select a semester year"> </asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidatorSemes"  ControlToValidate="txtSemesterYear" CssClass="failureNotification bold" runat="server"  Display="Dynamic"   
              ErrorMessage="Semester year length must be 4 integers yyyy."
              ValidationExpression="^[0-9\d]{4,4}$" > 
              </asp:RegularExpressionValidator> 
         <asp:CompareValidator ID="CompareSmesterYear" ControlToValidate="txtSemesterYear" CssClass="failureNotification" runat="server" Display="Dynamic"
	        ErrorMessage=" Semester Year must be an integer." 
	        Operator="DataTypeCheck" Type="Integer">
         </asp:CompareValidator> 
             <%-- 
              <asp:CompareValidator ID="CompValidatorSemesterYear" CssClass="failureNotification" runat="server" Display="Dynamic"
	ErrorMessage="Semester year is less than today's " ControlToValidate="txtSemesterYear" Type="Date" Operator="GreaterThanEqual">
       </asp:CompareValidator>
             --%>
             <asp:CustomValidator id="CustomValidatorSemesYr" CssClass="failureNotification" runat="server" Display="Dynamic"
                 ControlToValidate="txtSemesterYear" EnableClientScript="true"
                 ClientValidationFunction="ValidateSemesterYr"  
                  ErrorMessage="Invalid year">
                </asp:CustomValidator>
              
        </td> 
         <td></td>
     
         <td colspan="1">
             <asp:RequiredFieldValidator ControlToValidate="txtGPA" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your GPA"> </asp:RequiredFieldValidator>

               <asp:RegularExpressionValidator ID="RegularExpressionValidatorGPA"  ControlToValidate="txtGPA" CssClass="failureNotification bold" runat="server"  Display="Dynamic"   
              ErrorMessage="Invalid format  ex 1.1"
              ValidationExpression="^[0-9]{1,1}(?:\.[0-9]{1,1})?$" > 
              </asp:RegularExpressionValidator> 
            
             <asp:CustomValidator id="CustomValidatorGPA" CssClass="failureNotification" runat="server" Display="Dynamic"
                 ControlToValidate="txtGPA" EnableClientScript="true"
                 ClientValidationFunction="ValidateGPA"  
                  ErrorMessage=" The value must be from 1.000 to 4.000!">
                </asp:CustomValidator>
             <%--<asp:CompareValidator ID="CompareValidatorGPA2" ControlToValidate="txtGPA" CssClass="failureNotification" runat="server" Display="Dynamic"
	        ErrorMessage=" GPA must be an integer" 
	        Operator="DataTypeCheck" Type="Integer"> 
         </asp:CompareValidator>
             --%>
             </td>
         <%-- <td></td> --%>
          <td></td>
          <td></td>
            <td colspan="1">
             <asp:RequiredFieldValidator ControlToValidate="txtGradDate" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your expected graduation date"> </asp:RequiredFieldValidator>
             
              
    <asp:CompareValidator ID="CompareValidatorDate" CssClass="failureNotification" runat="server" Display="Dynamic"
	ErrorMessage="not a valid date mm/dd/yyyy" ControlToValidate="txtGradDate"
	Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
      
       <asp:CompareValidator ID="CompValidatorGradDte2" CssClass="failureNotification" runat="server" Display="Dynamic"
	ErrorMessage="grad date is less than today's date" ControlToValidate="txtGradDate" Type="Date" Operator="GreaterThanEqual">
       </asp:CompareValidator>
                     
 


                

                

            </td>
       </tr>

    <tr>
        <td>Module 1</td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule1" OnSelectedIndexChanged="ddlModule1_SelectedIndexChangedX">
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
         <td colspan="3"><asp:RequiredFieldValidator ControlToValidate="ddlModule1" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>
             </td>
        <td>
           <%-- rm commented out temporarily need to check code 
           <asp:Label ID="ddlModule1Label"  runat="server" Visible="false" Font-Bold="true" Text ="error message if duplicates" ></asp:Label>
           --%>
            
    <asp:CustomValidator id="CustomValidatorMod1"  
        ClientValidationFunction="ValidateModules" 
       EnableClientScript="true"
        
  ControlToValidate="ddlModule1" CssClass="failureNotification" runat="server" Display="Dynamic"
        ErrorMessage="Duplicate modules chosen. Please select different ones.">
   </asp:CustomValidator>
        </td>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        
       

    </tr>


    <tr>
        <td>Module 2</td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule2" OnSelectedIndexChanged="ddlModule2_SelectedIndexChanged">
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
         <td colspan="3"><asp:RequiredFieldValidator ControlToValidate="ddlModule2" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>
             </td>
         <td>
      
    <asp:CustomValidator id="CustomValidatorMod2"  
        ClientValidationFunction="ValidateModules"
         EnableClientScript="true"
        
   ControlToValidate="ddlModule2" CssClass="failureNotification" runat="server" Display="Dynamic"
      ErrorMessage="Duplicate modules chosen. Please select different ones.">
  </asp:CustomValidator>	
       
            &nbsp;
        </td>

        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>


        
        <td>&nbsp;</td>
       
        

    </tr>


    <tr>
        <td>Module 3</td>
        <td>
            <asp:DropDownList runat="server" ID="ddlModule3" OnSelectedIndexChanged="ddlModule3_SelectedIndexChanged" >
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
          <td colspan="3"><asp:RequiredFieldValidator ControlToValidate="ddlModule3" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>
             </td>
        <td>
        <asp:CustomValidator id="CustomValidatorMod"  
        ClientValidationFunction="ValidateModules" 
             EnableClientScript="true"
           
  ControlToValidate="ddlModule3" CssClass="failureNotification" runat="server" Display="Dynamic"
  ErrorMessage="Duplicate modules chosen. Please select different ones.">
</asp:CustomValidator>	

            &nbsp;</td>

        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>


        
        <td>&nbsp;</td>
        
        

    </tr>

</table>


<h2><i>Enter Student Internship Requirment Information:</i></h2>
   <table>
    <tr>
        <td class="style4">Student Internship Program</td>
        <td rowspan ="2" class="style2">
            <%--
            <asp:RadioButton ID="rbtnCST4900" runat="server" Text="CST4900" 
                oncheckedchanged="rbtnCST4900_CheckedChanged" AutoPostBack="True" /><br />
            <asp:RadioButton ID="rbtnCST4905" runat="server" Text="CST4905" 
                oncheckedchanged="rbtnCST4905_CheckedChanged" AutoPostBack="True"/> <br />
             *Select CST4905 only if currently employed and cannot engaged in company sponsored internship program.
        </td>
           --%>
            <asp:DropDownList runat="server" ID="DropDownListCST"
                OnSelectedIndexChanged="CheckCST" AutoPostBack="True">
                <asp:ListItem Text=" " />
                    <asp:ListItem Text="CST4900"  />
                <asp:ListItem Text="CST4905"   />
            </asp:DropDownList> <br />
            *Select CST4905 only if currently employed and cannot be engaged in company sponsored internship program.
        </td>
        <td>Programming</td>
        <td>&nbsp;</td>
        <td>Web Design</td>
        <td>&nbsp;</td>
        <td>DataBase</td>
        <td>&nbsp;</td>
        <td>Networking</td>
        <td>&nbsp;</td>
        <td>Security</td>
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
                    <asp:DropDownList ID="ddlSecurity" runat="server">
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
                 
                 <asp:Label ID="Label1" runat="server" Text="Do you have a Driver's license?"></asp:Label>
                 
             </td>
             <td>
                 <asp:DropDownList ID="ddlDriverLicense" runat="server">
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
             <td>
                 
                 Do You Own a Car?</td>
             <td>
                 <asp:DropDownList ID="ddlOwnAcar" runat="server">
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
             <td>
                 
                 Are You Willing to Travel to NJ?</td>
             <td>
                 <asp:DropDownList ID="ddlTravelToNJ" runat="server">
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
             <td>
                 
                 Willing to Travel to Westchester NY?</td>
             <td>
                 <asp:DropDownList ID="ddlTravelToWestchester" runat="server">
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
        <tr>
             <td>
                 
                 Do you have any limitations in the Internship Program?</td>
             <td>
                 <asp:DropDownList ID="ddlLimitations" runat="server">
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
             <td class="style3">If yes, please explain your limitations.
                 
                 <asp:TextBox runat="server" ID ="txtLimitations" TextMode="MultiLine" Rows="6"></asp:TextBox>
                 </td>


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
        <td><asp:TextBox ID="txtEmployeeTitle" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Department</td>
        <td><asp:TextBox ID="txtEmployeeDept" runat="server"></asp:TextBox></td>
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
             <asp:RequiredFieldValidator ControlToValidate="txtEmployeeTitle" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please select your title"> </asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtEmployeeDept" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your Department"> </asp:RequiredFieldValidator>
            </td>
           

            
    </tr>
    <tr>
        <td>Manager Name</td>
        <td>
            <asp:TextBox ID="TxtMgrName" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>Manager Phone</td>
        <td>
            <asp:TextBox ID="txtMgrPhone" runat="server" ></asp:TextBox></td>
        <td>*</td>
            <%--
        <td>Work Phone</td>
        <td>
            <asp:TextBox runat="server" ID="txtEmployeeWorkPhone"></asp:TextBox>
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
                   ErrorMessage="Please Enter a contact number for the company in a valid format e.g., (999) 999-9999"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
                </td>
            <%-- rm04/12/2014 commented out no employer work phone
            <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtworkPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your work number"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtworkPhone" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your work number in a valid format e.g., (999) 999-9999"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
                </td>
           --%>

            
    </tr>
     <tr>
        <td>Street</td>
        <td><asp:TextBox ID="txtEmployerStreet" runat="server"></asp:TextBox></td>
        <td>*</td>
        <td>City</td>
        <td>
            <asp:TextBox runat="server" ID="txtEmployerCity"></asp:TextBox></td>
        <td>*</td>
        <td>State</td>
        <td><asp:DropDownList runat="server" ID="ddlEmployerState">
            <asp:ListItem Text="NY" />
            <asp:ListItem Text="NJ" />
            <asp:ListItem Text="PA" />
        </asp:DropDownList>
        </td>
        <td>Zip</td>
        <td>
            <asp:TextBox runat="server" ID="txtEmployerZip"></asp:TextBox></td>
        <td>*</td>
        </tr>
         <tr>
             
            <td colspan="3">
            <asp:RequiredFieldValidator ControlToValidate="txtEmployerStreet" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a valid Street address"> </asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
               <asp:RequiredFieldValidator ControlToValidate="txtEmployerCity" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your City"> </asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td colspan="3">
          <asp:RequiredFieldValidator ControlToValidate="ddlEmployerState" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter your State"> </asp:RequiredFieldValidator>
            </td>
              <td colspan="3">
           <asp:RequiredFieldValidator ControlToValidate="txtEmployerZip" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Please Enter a valid Zip code"> </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ControlToValidate="txtEmployerZip" CssClass="failureNotification" runat="server" Display="Dynamic"
                   ErrorMessage="Zip code should be 5 or 9 digits"
                    ValidationExpression="^(\d{5}|\d{5}\-\d{4})$">
                </asp:RegularExpressionValidator>
            </td>
           

            
    </tr>
    </table>

    <h2><i>Please Provide a Brief Job Description Below:</i></h2>
    <table>
    <tr>
    <td>
        <asp:TextBox runat="server" ID="txtJobDescription" TextMode="MultiLine" Rows="6"></asp:TextBox>
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
                    style="font-weight: 700; color: #0000FF; background-color: #C0C0C0" OnClick="ClearStudentBtn_Click" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="ITMS.Web.StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        #TextArea1 {
            height: 86px;
            width: 764px;
            margin-left: 9px;
        }

        .style2 {
            width: 309px;
        }

        #LimitationsYes {
            width: 816px;
        }

        .style3 {
            width: 886px;
        }

        .style4 {
            width: 171px;
        }

        #txtboxLimitationsYes {
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

    <%--<h1><b>Enter student personal information:</b></h1>--%>
    <%-- rm commented out summary
    <br />
<asp:ValidationSummary
HeaderText="You must enter a value in the following fields:"
DisplayMode="BulletList"
EnableClientScript="true"
 CssClass="text-danger"
runat="server"/>
    --%>

    <h1 class="text-primary">Student Registration</h1>
    <hr />

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="txtCUNYID">Cuny First ID</label>
                <asp:TextBox ID="txtCUNYID" runat="server" class="form-control" placeholder="Cuny First Id"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtCUNYID" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please enter your CUNY First ID">
                </asp:RequiredFieldValidator>

            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtLast4SSN">Last 4 SSN</label>
                <asp:TextBox ID="txtLast4SSN" runat="server" class="form-control" placeholder="Last 4 SSN"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegExpCUNYID" ControlToValidate="txtCUNYID" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="EMPLID length must be 8 characters"
                    ValidationExpression="^[a-zA-Z0-9\s]{8,8}$">
                </asp:RegularExpressionValidator>

                <asp:RequiredFieldValidator ControlToValidate="txtLast4SSN" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter last 4 digits of Social Security Number"> </asp:RequiredFieldValidator>

                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4SSN"  ControlToValidate="txtLast4SSN" CssClass="text-danger" runat="server"  Display="Dynamic"   
              ErrorMessage="SSN length must be 4 integers."
              ValidationExpression="^[0-9\d]{4,4}$" > 
              </asp:RegularExpressionValidator> 

                <asp:CompareValidator ID="CompareValidatorSSN" ControlToValidate="txtLast4SSN" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="SSN must be an integer"
                    Operator="DataTypeCheck" Type="Integer">
                </asp:CompareValidator>
            </div>
        </div>



    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="txtFirstName">First Name</label>
                <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtFirstName" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your First Name">
                </asp:RequiredFieldValidator>

            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtLastName">Last Name</label>
                <asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtLastName" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your Last Name">
                </asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="txtStreet">Street</label>
                <asp:TextBox ID="txtStreet" runat="server" class="form-control" placeholder="Street Address"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtStreet" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter a Valid Street Address">
                </asp:RequiredFieldValidator>

            </div>

        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtCity">City</label>
                <asp:TextBox ID="txtCity" runat="server" class="form-control" placeholder="City"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtCity" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter a your City">
                </asp:RequiredFieldValidator>

            </div>

        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="ddlState">State</label>
                <asp:DropDownList runat="server" ID="ddlState" CssClass="form-control">
                    <asp:ListItem Text="NY" />
                    <asp:ListItem Text="NJ" />
                    <asp:ListItem Text="PA" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddlState" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please select your State">
                </asp:RequiredFieldValidator>

            </div>

        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtZip">Zip</label>
                <asp:TextBox ID="txtZip" runat="server" class="form-control" placeholder="Zip"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtZip" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter a valid Zip code"> </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ControlToValidate="txtZip" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Zip code should be 5 or 9 digits"
                    ValidationExpression="^(\d{5}|\d{5}\-\d{4})$">
                </asp:RegularExpressionValidator>

            </div>

        </div>


    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="txtDayPhone">Day Phone</label>
                <asp:TextBox ID="txtDayPhone" runat="server" class="form-control" placeholder="Day Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtDayPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your Day phone"> </asp:RequiredFieldValidator>
                <%--
                <asp:RegularExpressionValidator ControlToValidate="txtDayPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your Day phone in a valid format e.g., (999) 999-9999"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
                 --%>
              <asp:RegularExpressionValidator  ControlToValidate="txtDayPhone" CssClass="text-danger" runat="server"  Display="Dynamic"   
              ErrorMessage="Day Phone must be 10 integers only."
              ValidationExpression="^[0-9\d]{10,10}$" > 
              </asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtEveningPhone">Evening Phone</label>
                <asp:TextBox ID="txtEveningPhone" runat="server" class="form-control" placeholder="Evening Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtEveningPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your Evening phone"> </asp:RequiredFieldValidator>
                <%--
                <asp:RegularExpressionValidator ControlToValidate="txtEveningPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your Evening phone in a valid format e.g., (999) 999-9999"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
                 --%>
                 <asp:RegularExpressionValidator  ControlToValidate="txtEveningPhone" CssClass="text-danger" runat="server"  Display="Dynamic"   
              ErrorMessage="Evening Phone must be 10 integers only."
              ValidationExpression="^[0-9\d]{10,10}$" > 
              </asp:RegularExpressionValidator> 
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtCellPhone">Cell Phone</label>
                <asp:TextBox ID="txtCellPhone" runat="server" class="form-control" placeholder="Cell Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtCellPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your Cell phone"> </asp:RequiredFieldValidator>
                <%--
                <asp:RegularExpressionValidator ControlToValidate="txtCellPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your Cell phone in a valid format e.g., (999) 999-9999"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                </asp:RegularExpressionValidator>
                --%>
                 <asp:RegularExpressionValidator  ControlToValidate="txtCellPhone" CssClass="text-danger" runat="server"  Display="Dynamic"   
              ErrorMessage="Cell Phone must be 10 integers only."
              ValidationExpression="^[0-9\d]{10,10}$" > 
              </asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtEmail" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your E-mail Address"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtEmail" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your E-mail Address in a valid format e.g., user@domain.com"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
            </div>
        </div>

    </div>


    <h2 class="text-primary">Student Profile Information</h2>


    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="ddlCurrentSemester">Current Semester</label>
                <asp:DropDownList runat="server" ID="ddlCurrentSemester" CssClass="form-control">
                    <asp:ListItem Text="" />
                    <asp:ListItem Text="Fall" />
                    <asp:ListItem Text="Spring" />
                    <asp:ListItem Text="Summer" />
                    <asp:ListItem Text="Winter" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddlCurrentSemester" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please select a semester"> </asp:RequiredFieldValidator>

            </div>

        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtSemesterYear">Year</label>
                <asp:TextBox runat="server" ID="txtSemesterYear" CssClass="form-control" placeholder="Year"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtSemesterYear" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please select a semester year"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtSemesterYear" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Semester year length must be 4 integers yyyy."
                    ValidationExpression="^[0-9\d]{4,4}$"> 
                </asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtSemesterYear" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage=" Semester Year must be an integer."
                    Operator="DataTypeCheck" Type="Integer">
                </asp:CompareValidator>
                <%-- 
              <asp:CompareValidator ID="CompValidatorSemesterYear" CssClass="text-danger" runat="server" Display="Dynamic"
	ErrorMessage="Semester year is less than today's " ControlToValidate="txtSemesterYear" Type="Date" Operator="GreaterThanEqual">
       </asp:CompareValidator>
                --%>
                <asp:CustomValidator ID="CustomValidator1" CssClass="text-danger" runat="server" Display="Dynamic"
                    ControlToValidate="txtSemesterYear" EnableClientScript="true"
                    ClientValidationFunction="ValidateSemesterYr"
                    ErrorMessage="Invalid year">
                </asp:CustomValidator>
            </div>

        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="txtGPA">GPA</label>
                <asp:TextBox ID="txtGPA" runat="server" class="form-control" placeholder="GPA"></asp:TextBox>

                <asp:RequiredFieldValidator ControlToValidate="txtGPA" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your GPA"> </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorGPA" ControlToValidate="txtGPA" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Invalid format  ex 1.1"
                    ValidationExpression="^[0-9]{1,1}(?:\.[0-9]{1,1})?$"> 
                </asp:RegularExpressionValidator>

                <asp:CustomValidator ID="CustomValidatorGPA" CssClass="text-danger" runat="server" Display="Dynamic"
                    ControlToValidate="txtGPA" EnableClientScript="true"
                    ClientValidationFunction="ValidateGPA"
                    ErrorMessage=" The value must be from 1.000 to 4.000!">
                </asp:CustomValidator>
            </div>

        </div>


        <div class="col-md-3">
            <div class="form-group">
                <label for="txtGradDate">Graduation Date</label>
                <asp:TextBox ID="txtGradDate" runat="server" class="form-control" placeholder="Graduation Date"></asp:TextBox>

                <asp:RequiredFieldValidator ControlToValidate="txtGradDate" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please Enter your expected graduation date"> </asp:RequiredFieldValidator>


                <asp:CompareValidator ID="CompareValidatorDate" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="not a valid date mm/dd/yyyy" ControlToValidate="txtGradDate"
                    Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>

                <asp:CompareValidator ID="CompValidatorGradDte2" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="grad date is less than today's date" ControlToValidate="txtGradDate" Type="Date" Operator="GreaterThanEqual">
                </asp:CompareValidator>

            </div>

        </div>


    </div>


    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="ddlModule1">Module 1</label>

                <asp:DropDownList runat="server" ID="ddlModule1" OnSelectedIndexChanged="ddlModule1_SelectedIndexChangedX" class="form-control">
                    <asp:ListItem Text="Advanced Database Systems Design" />
                    <asp:ListItem Text="Project Management" />
                    <asp:ListItem Text="Local Area Networks" />
                    <asp:ListItem Text="Programming Design" />
                    <asp:ListItem Text="Client/Server Technology" />
                    <asp:ListItem Text="Web Design and Implementation" />
                    <asp:ListItem Text="Information Security" />
                </asp:DropDownList>

                <asp:RequiredFieldValidator ControlToValidate="ddlModule1" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>

                <asp:CustomValidator ID="CustomValidatorMod1"
                    ClientValidationFunction="ValidateModules"
                    EnableClientScript="true"
                    ControlToValidate="ddlModule1" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Duplicate modules chosen. Please select different ones.">
                </asp:CustomValidator>
            </div>
        </div>



        <div class="col-md-3">
            <div class="form-group">
                <label for="ddlModule2">Module 2</label>
                <asp:DropDownList runat="server" ID="ddlModule2" OnSelectedIndexChanged="ddlModule2_SelectedIndexChanged" class="form-control">
                    <asp:ListItem Text="Advanced Database Systems Design" />
                    <asp:ListItem Text="Project Management" />
                    <asp:ListItem Text="Local Area Networks" />
                    <asp:ListItem Text="Programming Design" />
                    <asp:ListItem Text="Client/Server Technology" />
                    <asp:ListItem Text="Web Design and Implementation" />
                    <asp:ListItem Text="Information Security" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddlModule2" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>


                <asp:CustomValidator ID="CustomValidatorMod2"
                    ClientValidationFunction="ValidateModules"
                    EnableClientScript="true"
                    ControlToValidate="ddlModule2" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Duplicate modules chosen. Please select different ones.">
                </asp:CustomValidator>



            </div>
        </div>


        <div class="col-md-3">
            <div class="form-group">
                <label for="ddlModule3">Module 3</label>
                <asp:DropDownList runat="server" ID="ddlModule3" OnSelectedIndexChanged="ddlModule3_SelectedIndexChanged" class="form-control">
                    <asp:ListItem Text="Advanced Database Systems Design" />
                    <asp:ListItem Text="Project Management" />
                    <asp:ListItem Text="Local Area Networks" />
                    <asp:ListItem Text="Programming Design" />
                    <asp:ListItem Text="Client/Server Technology" />
                    <asp:ListItem Text="Web Design and Implementation" />
                    <asp:ListItem Text="Information Security" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddlModule3" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Please select at least 3 modules you have taken"> </asp:RequiredFieldValidator>

                <asp:CustomValidator ID="CustomValidatorMod"
                    ClientValidationFunction="ValidateModules"
                    EnableClientScript="true"
                    ControlToValidate="ddlModule3" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="Duplicate modules chosen. Please select different ones.">
                </asp:CustomValidator>



            </div>
        </div>
    </div>

    <h2 class="text-primary">Internship Requirment Information
        <br />
        <small class="text-info">Select CST4905 only if currently employed and cannot be engaged in company sponsored internship program.</small>
    </h2>
    <hr />


    <div class="row">

        <div class="col-md-2">
            <label for="DropDownListCST">Internship Program</label>
            <asp:DropDownList runat="server" ID="DropDownListCST" CssClass="form-control"
                OnSelectedIndexChanged="CheckCST" AutoPostBack="True">
                <asp:ListItem Text=" " />
                <asp:ListItem Text="CST4900" />
                <asp:ListItem Text="CST4905" />
            </asp:DropDownList>

            <asp:RequiredFieldValidator ControlToValidate="DropDownListCST" CssClass="text-danger" runat="server" Display="Dynamic"
                ErrorMessage="Please check one option"> </asp:RequiredFieldValidator>
        </div>
        <div class="col-md-2">
            <label for="ddlProgramming">Programming</label>

            <asp:DropDownList ID="ddlProgramming" runat="server" CssClass="form-control">
                <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="ddlProgramming" CssClass="text-danger" runat="server" Display="Dynamic"
                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>

        </div>

        <div class="col-md-2">
            <label for="ddlWebDesign">Web Design</label>
            <asp:DropDownList ID="ddlWebDesign" runat="server" CssClass="form-control">
                <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="ddlWebDesign" CssClass="text-danger" runat="server" Display="Dynamic"
                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>

        </div>

        <div class="col-md-2">
            <label for="ddlDatabase">Database</label>
            <asp:DropDownList ID="ddlDatabase" runat="server" CssClass="form-control">
                <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
            </asp:DropDownList>

            <asp:RequiredFieldValidator ControlToValidate="ddlDatabase" CssClass="text-danger" runat="server" Display="Dynamic"
                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>


        </div>

        <div class="col-md-2">
            <label for="ddlNetworking">Networking</label>
            <asp:DropDownList ID="ddlNetworking" runat="server" CssClass="form-control">
                <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
            </asp:DropDownList>

            <asp:RequiredFieldValidator ControlToValidate="ddlNetworking" CssClass="text-danger" runat="server" Display="Dynamic"
                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>

        </div>

        <div class="col-md-2">
            <label for="ddlSecurity">Security</label>
            <asp:DropDownList ID="ddlSecurity" runat="server" CssClass="form-control">
                <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="ddlSecurity" CssClass="text-danger" runat="server" Display="Dynamic"
                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>

        </div>

    </div>

    <asp:Panel ID="CST4900Panel" runat="server" Height="300px" Width="945px">
        <div class="row">
            <div class="col-lg-12">



                <h3 class="text-primary">Information for CST 4900</h3>

                <div class="row">
                    <div class="col-md-4">

                        <div class="form-group">
                            <label for="ddlDriverLicense">Do you have a Driver's license?"</label>

                            <asp:DropDownList ID="ddlDriverLicense" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ControlToValidate="ddlDriverLicense" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>

                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="form-group">
                            <label for="ddlDriverLicense">Do you own a car?"</label>

                            <asp:DropDownList ID="ddlOwnAcar" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="ddlOwnAcar" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>


                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="form-group">

                            <label>Are you willing to drive to NJ?</label>
                            <asp:DropDownList ID="ddlTravelToNJ" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="ddlTravelToNJ" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>

                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Are you willing to drive to westchester?</label>

                            <asp:DropDownList ID="ddlTravelToWestchester" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ControlToValidate="ddlTravelToWestchester" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>




                <div class="row">
                    <div class="col-md-4">

                        <div class="form-group">
                            <label>Do you have any limitations in the Internship Program?</label>
                            <asp:DropDownList ID="ddlLimitations" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ControlToValidate="ddlLimitations" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please select an option"> </asp:RequiredFieldValidator>

                           
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-4">

                        <div class="form-group">
                            <label>If Yes Please explain your limitations</label>

                            <asp:TextBox runat="server" ID="txtLimitations" TextMode="MultiLine" Rows="6" CssClass="form-control"></asp:TextBox>

                             <asp:RegularExpressionValidator ControlToValidate="txtLimitations" CssClass="text-danger" runat="server" Display="Dynamic"   
                             ErrorMessage="A maximum of 250 characters is allowed."   ValidationExpression="^(.|\s){0,250}$" >
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </asp:Panel>


        <div class="row">
            <div class="col-lg-12">
                    <asp:Panel ID="CST4905Panel" runat="server" Height="300px" Width="945px">


                <h2 class="text-primary"><i>CST 4905 Student Employer Information - Section to be filled out by CST4905 Students Only!!!</i></h2>


                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Employer Name</label>
                            <asp:TextBox ID="txtEmpName" runat="server" placeholder="Employer Name" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmpName" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please enter the name of the firm"> </asp:RequiredFieldValidator>

                        </div>


                    </div>


                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Title</label>
                            <asp:TextBox ID="txtEmployeeTitle" runat="server" placeholder="Employee Title" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmployeeTitle" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please select your title"> </asp:RequiredFieldValidator>
                        </div>


                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Department</label>
                            <asp:TextBox ID="txtEmployeeDept" runat="server" placeholder="Department" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmployeeDept" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please Enter your Department"> </asp:RequiredFieldValidator>
                        </div>


                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Manager</label>
                            <asp:TextBox ID="TxtMgrName" runat="server" placeholder="Manager" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TxtMgrName" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please enter the name of your Supervisor"> </asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Manager Phone</label>
                            <asp:TextBox ID="txtMgrPhone" runat="server" CssClass="form-control" placeholder="Manager Phone"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtMgrPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please Enter a contact number for the company"> </asp:RequiredFieldValidator>
                            <%--
                            <asp:RegularExpressionValidator ControlToValidate="txtMgrPhone" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please Enter a contact number for the company in a valid format e.g., (999) 999-9999"
                                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                            </asp:RegularExpressionValidator>
                             --%>
                   <asp:RegularExpressionValidator  ControlToValidate="txtMgrPhone" CssClass="text-danger" runat="server"  Display="Dynamic"   
              ErrorMessage="Manager Phone must be 10 integers only."
              ValidationExpression="^[0-9\d]{10,10}$" > 
              </asp:RegularExpressionValidator>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Street</label>
                            <asp:TextBox ID="txtEmployerStreet" runat="server" CssClass="form-control" placeholder="Street"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmployerStreet" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please Enter a valid Street address"> </asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>City</label>
                            <asp:TextBox runat="server" ID="txtEmployerCity" CssClass="form-control" placeholder="Street"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmployerCity" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please Enter your City"> </asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>State</label>
                            <asp:DropDownList runat="server" ID="ddlEmployerState" CssClass="form-control" placeholder="State">
                                <asp:ListItem Text="NY" />
                                <asp:ListItem Text="NJ" />
                                <asp:ListItem Text="PA" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="ddlEmployerState" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please Enter your State"> </asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Zip</label>
                            <asp:TextBox runat="server" ID="txtEmployerZip" CssClass="form-control" placeholder="State"></asp:TextBox>

                            <asp:RequiredFieldValidator ControlToValidate="txtEmployerZip" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Please Enter a valid Zip code"> </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ControlToValidate="txtEmployerZip" CssClass="text-danger" runat="server" Display="Dynamic"
                                ErrorMessage="Zip code should be 5 or 9 digits"
                                ValidationExpression="^(\d{5}|\d{5}\-\d{4})$">
                            </asp:RegularExpressionValidator>

                        </div>
                    </div>



                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Job Description</label>
                            <asp:TextBox runat="server" ID="txtJobDescription" TextMode="MultiLine" Rows="6" CssClass="form-control" placeholder="Job Description"></asp:TextBox>

                       <asp:RegularExpressionValidator ControlToValidate="txtJobDescription" CssClass="text-danger" runat="server" Display="Dynamic"   
                       ErrorMessage="A maximum of 250 characters is allowed."   ValidationExpression="^(.|\s){0,250}$" >
                      </asp:RegularExpressionValidator>
                        </div>
                    </div>

                </div>

 </asp:Panel>
            </div>
        </div>
   

   
    <br />
    <br />
    <br />

    <div class="row">

        <div class="col-md-4">
             
            <asp:Button ID="SubmitStudentBtn" runat="server"
                    Text="Submit Student Information..."
                    OnClick="SubmitStudentBtn_Click" CssClass="btn btn-primary btn-lg" />
                 
        </div>

          <div class="col-md-2">
               <asp:Button ID="ClearStudentBtn" runat="server" Text="Clear Form..."
                    CssClass="btn btn-default btn-lg" OnClick="ClearStudentBtn_Click" />
               </div>
    </div>
       






    <asp:Panel ID="StudentTestPanel1" runat="server">


        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label><br />



        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>





    </asp:Panel>




</asp:Content>

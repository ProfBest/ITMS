<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="WebApplication.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Table ID="tblStudentInfo" runat="server" BorderStyle="Double" Height="374px" Width="923px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" Font-Size="Large" HorizontalAlign="Center" BorderStyle="Double" Height="25px" ColumnSpan="5">Student Information</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">CUNY First ID</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtCunyFirstId" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">Day Phone</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtDayPhone" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">First Name</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtFirstName" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">Evening Phone</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtEveningPhone" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Last Name</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtLastName" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">Cell Phone</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtCellPhone" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Last 4# SSNumber</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtSsnum" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">Email</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtEmail" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Address</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtAddress" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">Semester</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtSemester" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">City</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtCity" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">Graduation Date</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtGraduationDate1" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">State</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtState" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">GPA</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtGpa" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Zip Code</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtZipCode" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True">Graduation Date</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtGraduationDate2" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="100%" ColumnSpan="5" runat="server" Height="25px" BorderStyle="Double"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="100%" ColumnSpan="5" runat="server" Height="25px" BorderStyle="Double"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <br/><br/><br/>
        
        <asp:Table ID="tblAcademicInfo" runat="server" BorderStyle="Double" Width="923px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" Font-Size="Large" HorizontalAlign="Center" BorderStyle="Double" Height="25px" ColumnSpan="5">Student Academic Information</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Graduation Date</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtInfoGraduationDate" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True" RowSpan="3">Modules Taken</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" RowSpan="3">
                    <asp:TextBox ID="txtModulesTaken" TextMode="MultiLine" Width="95%" runat="server" Height="75" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">GPA</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtInfoGpa" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Internship Semester</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtInternshipSemester" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="100%" ColumnSpan="5" runat="server" Height="25px" BorderStyle="Double"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="100%" ColumnSpan="5" runat="server" Height="25px" BorderStyle="Double"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <br/><br/><br/>

        <asp:Table ID="tblInternshipReq" runat="server" BorderStyle="Double" Width="923px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" Font-Size="Large" HorizontalAlign="Center" BorderStyle="Double" ColumnSpan="5">Internship Requirements Information</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="100%" ColumnSpan="5" runat="server" Height="25px" BorderStyle="Double"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Internship Class</asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtInternshipClass" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Font-Bold="True"></asp:TableCell>
                <asp:TableCell Width="30%" runat="server" BorderStyle="Double" >
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="100%" ColumnSpan="5" runat="server" Height="25px" BorderStyle="Double"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <br/><br/><br/>

        <asp:Table ID="tblPreferences" runat="server" BorderStyle="Double" Width="923px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Height="25px" ColumnSpan="5"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" Height="25px" ColumnSpan="2" HorizontalAlign="Center" Font-Bold="True">Internship Preference Ranking</asp:TableCell>
                <asp:TableCell Width="10%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="15%" runat="server" BorderStyle="Double" ColumnSpan="2" HorizontalAlign="Center" Font-Bold="True">Travel Information</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Height="25px" HorizontalAlign="Center" Font-Bold="True">Work Preference</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" HorizontalAlign="Center" Font-Bold="True">Ranking</asp:TableCell>
                <asp:TableCell Width="8%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Font-Bold="True">Has Driver's License?</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtHasDriverLicense" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Programming</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtProgramming" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="8%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Font-Bold="True">Owns a Car?</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtOwnsCar" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Database</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtDatabase" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="8%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Font-Bold="True">Willing to Travel to NJ?</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtTravelNj" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Web Design</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtWebDesign" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="8%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Font-Bold="True">Willing to Travel to Westchester NY?</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtTravelNy" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Networking</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtNetworking" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="8%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Font-Bold="True"></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Height="25px" ColumnSpan="5"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Height="25px" Font-Bold="True">Internship Limitations</asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" HorizontalAlign="Center" Font-Bold="True"></asp:TableCell>
                <asp:TableCell Width="8%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Font-Bold="True"></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Height="25px" ColumnSpan="2" Font-Bold="True">
                    <asp:TextBox TextMode="MultiLine" ID="txtLimitations" Width="95%" runat="server" BackColor="Silver" Height="100"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="8%" runat="server" BorderStyle="Double" ></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" Font-Bold="True"></asp:TableCell>
                <asp:TableCell Width="23%" runat="server" BorderStyle="Double" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Height="25px" ColumnSpan="5"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <br/><br/><br/>

        <asp:Table ID="tblEmpInfo" runat="server" BorderStyle="Double" >
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" Font-Size="Large" Height="25px" HorizontalAlign="Center" BorderStyle="Double" ColumnSpan="8">CST 4905 Student Employer Information</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" Font-Size="Large" Height="25px" HorizontalAlign="Center" BorderStyle="Double" ColumnSpan="8"/>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Employer Name</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtEmployerName" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Title</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtTitle" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Department</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtDepartment" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True"></asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Managers Name</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtManagerName" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Managers Phone</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtManagerPhone" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Work Phone</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtWorkPhone" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True"></asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Street</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtStreet" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">City</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtEmpInfoCity" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">State</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:DropDownList ID="ddlStates" Width="90%" BackColor="Silver" runat="server"/>
                </asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True">Zip</asp:TableCell>
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" >
                    <asp:TextBox ID="txtZip" Width="90%" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True" Height="25px" ColumnSpan="8">Job Description</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True" ColumnSpan="8">
                    <asp:TextBox ID="txtJobDescription" TextMode="MultiLine" Width="98%" Height="75px" runat="server" BackColor="Silver"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell Width="12%" runat="server" BorderStyle="Double" Font-Bold="True" Height="25px" ColumnSpan="8"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <asp:Button runat="server" ID="btnTest" Text="Submit" OnClick="ShowFilledInformation" />
        
        <br/><br/><asp:Label ID="lblTest" runat="server"></asp:Label>

        <script runat="server">
            public void ShowFilledInformation(object sender, EventArgs e)
            {
                StringBuilder sb = new StringBuilder();

                sb.AppendLine("Student Information table<br>");
                sb.AppendFormat("txtCunyFirstId: {0}; txtDayPhone: {1}<br>", txtCunyFirstId.Text, txtDayPhone.Text);
                sb.AppendFormat("txtFirstName: {0}; txtEveningPhone: {1}<br>", txtFirstName.Text, txtEveningPhone.Text);
                sb.AppendFormat("txtLastName: {0}; txtCellPhone: {1}<br>", txtLastName.Text, txtCellPhone.Text);
                sb.AppendFormat("txtSsnum: {0}; txtEmail: {1}<br>", txtSsnum.Text, txtEmail.Text);
                sb.AppendFormat("txtAddress: {0}; txtSemester: {1}<br>", txtAddress.Text, txtSemester.Text);
                sb.AppendFormat("txtCity: {0}; txtDayPhone: {1}<br>", txtCity.Text, txtGraduationDate1.Text);
                sb.AppendFormat("txtState: {0}; txtGpa: {1}<br>", txtState.Text, txtGpa.Text);
                sb.AppendFormat("txtZipCode: {0}; txtGraduationDate2: {1}<br>", txtZipCode.Text, txtGraduationDate2.Text);


                sb.AppendLine("Student Academic Information table<br>");
                sb.AppendFormat("txtInfoGraduationDate: {0}; txtModulesTaken: {1}<br>", txtInfoGraduationDate.Text, txtModulesTaken.Text);
                sb.AppendFormat("txtInfoGpa: {0}; <br>", txtInfoGpa.Text);
                sb.AppendFormat("txtInternshipSemester: {0}; <br>", txtInternshipSemester.Text);


                sb.AppendLine("Internship Requirements Information table<br>");
                sb.AppendFormat("txtInternshipClass: {0}; <br>", txtInternshipClass.Text);


                sb.AppendLine("Internship Preference table<br>");
                sb.AppendFormat("txtHasDriverLicense: {0}; <br>", txtHasDriverLicense.Text);
                sb.AppendFormat("txtProgramming: {0}; txtOwnsCar: {1}<br>", txtProgramming.Text, txtOwnsCar.Text);
                sb.AppendFormat("txtDatabase: {0}; txtTravelNj: {1}<br>", txtDatabase.Text, txtTravelNj.Text);
                sb.AppendFormat("txtWebDesign: {0}; txtTravelNy: {1}<br>", txtWebDesign.Text, txtTravelNy.Text);
                sb.AppendFormat("txtNetworking: {0}; <br>", txtNetworking.Text);
                sb.AppendFormat("txtLimitations: {0}; <br>", txtLimitations.Text);

                sb.AppendLine("CST 4905 Student Employer Information table<br>");
                sb.AppendFormat("txtEmployerName: {0}; txtTitle: {1}; txtDepartment: {2}<br>", txtEmployerName.Text, txtTitle.Text, txtDepartment.Text);
                sb.AppendFormat("txtManagerName: {0}; txtManagerPhone: {1}; txtWorkPhone: {2}<br>", txtManagerName.Text, txtManagerPhone.Text, txtWorkPhone.Text);
                sb.AppendFormat("txtStreet: {0}; txtEmpInfoCity: {1}; ddlStates: {2} txtZip: {3}<br>", txtStreet.Text, txtEmpInfoCity.Text, ddlStates.SelectedValue, txtZip.Text);
                sb.AppendFormat("txtJobDescription: {0}; <br>", txtJobDescription.Text);
                
                lblTest.Text = sb.ToString();
            }
        </script>
</asp:Content>

<%@ Page Title="Sponsor Registration Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="SponsorCompanyRegistration.aspx.cs" Inherits="ITMS.Web.SponsorCompanyRegistrationPage" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <h2>Sponsor Registration Page
    </h2>
    <asp:Panel ID="Panel2" runat="server" Height="278px">
        <p class="auto-style1">
            <strong>Add New Internship Sponser Company</strong></p>
        <p>
            First Name:
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:<asp:TextBox ID="txtLname" runat="server" Width="127px"></asp:TextBox>
        </p>
        <p>
            Title:<asp:TextBox ID="txtTitle" runat="server" style="margin-left: 6px" Width="435px"></asp:TextBox>
        </p>
        <p>
            Department:
            <asp:TextBox ID="txtDept" runat="server" style="margin-left: 4px" Width="157px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Organization:<asp:TextBox ID="txtOrg" runat="server" style="margin-left: 6px" Width="115px"></asp:TextBox>
        </p>
        <p>
            Office Phone:
            <asp:TextBox ID="txt1OP" runat="server" Width="153px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CellPhone:
            <asp:TextBox ID="txt1CP" runat="server" style="margin-left: 5px" Width="127px"></asp:TextBox>
            &nbsp;&nbsp; Email:<asp:TextBox ID="txt1Email" runat="server" Width="182px" style="margin-left: 6px"></asp:TextBox>
        </p>
        <p>
            Street:
            <asp:TextBox ID="txt1Street" runat="server" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:
            <asp:TextBox ID="txt1City" runat="server" style="margin-left: 5px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp; State:&nbsp;
            <asp:DropDownList ID="drpState1" runat="server">
                <asp:ListItem Value="NY"></asp:ListItem>
                <asp:ListItem Value="NJ"></asp:ListItem>
                <asp:ListItem Value="PA"></asp:ListItem>
                <asp:ListItem Value="CT"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zip:
            <asp:TextBox ID="txt1Zip" runat="server" Width="76px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Button ID="btnIntern" runat="server" OnClick="Button1_Click" Text="Add Manager to Sponsor Company" />
        </p>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="margin-top: 4px" Visible="False">
        <p class="auto-style1">
            <strong>Add Manager to Sponsor Company</strong></p>
        <p>
            Manager Name:&nbsp;<asp:TextBox ID="txtMgrName" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Title:<asp:TextBox ID="txt2Title" runat="server"></asp:TextBox>
        </p>
        <p>
            Department:&nbsp;<asp:TextBox ID="txt2Dept" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ogranization:<asp:TextBox ID="txt2Org" runat="server"></asp:TextBox>
        </p>
        <p>
            Office Phone:&nbsp;<asp:TextBox ID="txt2OP" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cell Phone (Optional):&nbsp;<asp:TextBox ID="txt2CP" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:<asp:TextBox ID="txt2Email" runat="server"></asp:TextBox>
        </p>
        <p>
            Street:&nbsp;<asp:TextBox ID="txt2Street" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:&nbsp;<asp:TextBox ID="txt2City" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:&nbsp;<asp:DropDownList ID="drpState2" runat="server">
                <asp:ListItem Value="NY"></asp:ListItem>
                <asp:ListItem Value="NJ"></asp:ListItem>
                <asp:ListItem Value="PA"></asp:ListItem>
                <asp:ListItem Value="CT"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zip:<asp:TextBox ID="txt2Zip" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnManager" runat="server" Text="Add Manager to Sponsor Company" OnClick="btnManager_Click" />
        </p>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Visible="False">
        <p class="auto-style1">
            <strong>Add Internship Position to assign Manager</strong></p>
        <p>
            Manger Name:&nbsp;<asp:TextBox ID="txt2MgrName" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Position title:<asp:TextBox ID="txt3Title" runat="server"></asp:TextBox>
        </p>
        <p>
            Position Description:<asp:TextBox ID="txtDes" runat="server"></asp:TextBox>
        </p>
        <p>
            Position Type:&nbsp;<asp:TextBox ID="txtPos" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work Hours:&nbsp;<asp:TextBox ID="txtWrkHr" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No Work Days:<asp:TextBox ID="txtWrkDay" runat="server"></asp:TextBox>
        </p>
        <p>
            Skill Set Required:<asp:TextBox ID="txtSkillset" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnAddPosition" runat="server" Text="Add Position to Sponsor Manager" OnClick="btnAddPosition_Click" />
        </p>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" Visible="False">
        <p class="auto-style1">
            <strong>Sumit &amp; Register Sponsor Company</strong></p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="Register Sponsor Company, Managers &amp; Positions ..." OnClick="Button4_Click" />
        </p>
    </asp:Panel>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        </p>


    <asp:Panel ID="Panel6" runat="server" Height="545px">
        <span class="auto-style1"><strong>TEST<br />
        </strong>
        <span>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label25" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label26" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label27" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label28" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label30" runat="server" Text=""></asp:Label>
        <br />
        <br />
        </span></asp:Panel>


</asp:Content>

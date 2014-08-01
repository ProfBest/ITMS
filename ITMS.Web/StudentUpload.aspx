<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="StudentUpload.aspx.cs" Inherits="RegSkillUploadPage._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
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

    <div class="row">
        <div class="col-lg-12">
            <h1 class="text-primary">Student Upload</h1>
        </div>
    </div>


    <div class="row">
        <div class="col-md-4">
            <h3 class="text-primary">Resume</h3>

        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Resume Content</label>
                    <asp:TextBox ID="txtResumeFormContent" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    <label>Please upload resume</label>
                    <asp:FileUpload ID="ResumeUpload" runat="server" CssClass="form-control2" />
                    <asp:Label ID="lblResumeFileName" runat="server" Text="" CssClass="text-danger"></asp:Label>
                </div>
            </div>
        </div>


    </div>

    <div class="row">
        <div class="col-md-4">
            <h3 class="text-primary">Transcript</h3>

        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Transcript Content</label>

                    <asp:TextBox ID="txtTranscriptFormContent" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    <label>Please upload transcript</label>
                    <asp:FileUpload ID="TranscriptUpload" runat="server" />
                    <asp:Label ID="lblTranscriptFileName" runat="server" Text="" CssClass="text-danger"></asp:Label>
                </div>
            </div>
        </div>


    </div>


    <div class="row">
        <div class="col-md-4">
            <h3 class=" text-primary">Technical Skills
            </h3>
            <small class="text-primary">Based on your resume, select your Technical Skill Sets:</small>
        </div>

    </div>

    <div class="row">
        <div class="col-sm-3">
            <label>Networking</label>
            <asp:CheckBoxList ID="chkNetworking" runat="server" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" Class="ckbNetworking">
                <asp:ListItem Value="1">Cisco Router</asp:ListItem>
                <asp:ListItem Value="2">WAN</asp:ListItem>
                <asp:ListItem Value="3">TCP/IP</asp:ListItem>

            </asp:CheckBoxList>
        </div>
        <div class="col-sm-3">
            <label>Security</label>
            <asp:CheckBoxList ID="chkSecurity" runat="server" CssClass="ckbSecurity" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" Font-Size="Small" Width="108px">
                <asp:ListItem Value="4">Data</asp:ListItem>
                <asp:ListItem Value="5">Network</asp:ListItem>

            </asp:CheckBoxList>
        </div>
        <div class="col-sm-3">
            <label>Programming</label>
            <asp:CheckBoxList ID="chkProgramming" runat="server" CssClass="ckbProgramming" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" Font-Size="Small" Width="108px">
                <asp:ListItem Value="6">Java</asp:ListItem>
                <asp:ListItem Value="7">C#</asp:ListItem>
                <asp:ListItem Value="8">VBNET</asp:ListItem>
                <asp:ListItem Value="9">C++</asp:ListItem>
                <asp:ListItem Value="10">PHP</asp:ListItem>
                <asp:ListItem Value="11">ASP.NET</asp:ListItem>

            </asp:CheckBoxList>
        </div>
        <div class="col-sm-3">
            <label>Database</label>
            <asp:CheckBoxList ID="chkDatabase" runat="server" CssClass="ckbDatabase" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID">
                <asp:ListItem Value="12">SQL</asp:ListItem>
                <asp:ListItem Value="13">Oracle</asp:ListItem>
                <asp:ListItem Value="14">MySQL</asp:ListItem>

            </asp:CheckBoxList>

        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <p>Please enter other technical skills</p>
                <asp:TextBox ID="txtAreaTechSkill" runat="server" Height="134px" TextMode="MultiLine" Width="599px"></asp:TextBox>
                <asp:RegularExpressionValidator ControlToValidate="txtAreaTechSkill" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="A maximum of 250 characters is allowed." ValidationExpression="^(.|\s){0,250}$">
                </asp:RegularExpressionValidator>
            </div>

        </div>

    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <p>Works experience from resume</p>
                <asp:TextBox ID="txtAreaWorkExpFormContent" runat="server" Height="64px" TextMode="MultiLine" Width="599px"></asp:TextBox>
                <asp:RegularExpressionValidator ControlToValidate="txtAreaWorkExpFormContent" CssClass="text-danger" runat="server" Display="Dynamic"
                    ErrorMessage="A maximum of 250 characters is allowed." ValidationExpression="^(.|\s){0,250}$">
                </asp:RegularExpressionValidator>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Your Uploaded Documents" />
            <asp:Label ID="lblTestingErrors" runat="server" Text="Label"></asp:Label>

        </div>
    </div>


</asp:Content>

























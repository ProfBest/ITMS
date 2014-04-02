<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="StudentUpload.aspx.cs" Inherits="RegSkillUploadPage._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">

        <div class="col-lg-12">
            <div class="page-header">
                <h2>Student Internship Registration Document</h2>
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-6">

            <div class="form-group">
                <label for="exampleInputFile">Resume Upload</label>
                <asp:FileUpload ID="ResumeUpload" runat="server" Width="355px" />
                <p class="help-block">only the following formats .docx, .doc, .txt, .pdf</p>



            </div>

        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="exampleInputFile">Transcript Upload</label>
                <asp:FileUpload ID="TranscriptUpload" runat="server" />
                <p class="help-block">only the following formats .docx, .doc, .txt, .pdf</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="exampleInputFile">Resume Text</label>
                <asp:TextBox ID="txtResumeFormContent" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="6"></asp:TextBox>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="exampleInputFile">Transcript Text</label>
                <asp:TextBox ID="txtTranscriptFormContent" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="6"></asp:TextBox>
            </div>
        </div>
    </div>



    <div class="row">
        <div class="col-md-12">
            <h3>Based on your resume, select your Technical Skill Sets:</h3>
        </div>

        <div class="col-sm-3">
            <h4>Networking</h4>
            <div class="checkbox">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Class="ckbNetworking">
                    <asp:ListItem>Cisco Router</asp:ListItem>
                    <asp:ListItem>WAN</asp:ListItem>
                    <asp:ListItem>TCP/IP</asp:ListItem>

                </asp:CheckBoxList>

            </div>


        </div>

        <div class="col-sm-3">
            <h4>Security</h4>
            <div class="checkbox">
                <asp:CheckBoxList ID="CheckBoxList2" runat="server" CssClass="ckbSecurity" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Font-Size="Small" Width="108px">
                    <asp:ListItem>Data</asp:ListItem>
                    <asp:ListItem>Network</asp:ListItem>

                </asp:CheckBoxList>
            </div>
        </div>

        <div class="col-sm-3">
            <h4>Programming</h4>
            <div class="checkbox">
                <asp:CheckBoxList ID="CheckBoxList3" runat="server" CssClass="ckbProgramming" classAutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Font-Size="Small" Width="108px">
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>C#</asp:ListItem>
                    <asp:ListItem>Vilnet</asp:ListItem>
                    <asp:ListItem>C++</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>ASP.NET</asp:ListItem>

                </asp:CheckBoxList>
            </div>
        </div>

        <div class="col-sm-3">
            <h4>Database</h4>
            <div class="checkbox">
                <asp:CheckBoxList ID="CheckBoxList4" runat="server" CssClass="ckbDatabase" AutoPostBack="false" Font-Bold="True" ClientIDMode="AutoID" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                    <asp:ListItem>SQL</asp:ListItem>
                    <asp:ListItem>Oracle</asp:ListItem>
                    <asp:ListItem>MySQL</asp:ListItem>

                </asp:CheckBoxList>
            </div>

        </div>
    </div>


     <asp:Button ID="myb" runat="server" Text="Testing" OnClick="myb_Click" />


  
     <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Please Enter Other Technical Skills:</label>
                <asp:TextBox ID="txtAreaTechSkill" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="6"></asp:TextBox>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Work Experience From Resume:</label>
                <asp:TextBox ID="txtAreaWorkExpFormContent" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="6"></asp:TextBox>
            </div>
        </div>
    </div>

   
    <div class="row">
        <div class="col-md-3">
              <asp:Label ID="lblTestingErrors" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
   
    <div class="row">
        <div class="col-sm-12">
        <div class="text-center">
       <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Your Uploaded Documents" CssClass="btn btn-primary" />
            </div>
        </div>

    </div>
</asp:Content>

























<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentSearch.aspx.cs" Inherits="ITMS.Web.StudentSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js" />--%>
<h4>Student Look up page</h4>

    <asp:GridView runat="server"  ID="grdVwStudentResults" class="table">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" 
                DataNavigateUrlFormatString="StudentDetails.aspx?Id={0}" DataTextField="Name" 
                HeaderText="Name" NavigateUrl="~/StudentDetails.aspx" />
        </Columns>
    </asp:GridView>
</asp:Content>

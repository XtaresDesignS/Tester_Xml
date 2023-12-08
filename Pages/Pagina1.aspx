<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="Testing_XML.Pages.Pagina1" %>

<%@ Register Src="~/UserControls/Login.ascx" TagPrefix="uc1" TagName="Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <uc1:Login runat="server" id="Login" />


</asp:Content>

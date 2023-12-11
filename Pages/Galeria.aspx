<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Galeria.aspx.cs" Inherits="Testing_XML.Pages.Galeria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
        <asp:Xml ID="Xml1" runat="server" DocumentSource="~/XML/XML_Gallery/Gallerry.xml" TransformSource="~/XML/XML_Gallery/Carrega_Gallery.xslt"></asp:Xml>
     
         <script src="https://cdn.tailwindcss.com"></script>

</asp:Content>

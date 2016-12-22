<%@ Page Title="Subir Imagen" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubirFoto.aspx.cs" Inherits="ACMENCOMLEWEB.SubirFoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode ="Conditional" runat="server">
        <Triggers>
            <asp:PostBackTrigger  ControlID="Button1"/>
        </Triggers>
        <ContentTemplate>

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" Text="Upload to FTP" runat="server" OnClick="FTPUpload" />
            <hr />
            <asp:Label ID="lblMessage" runat="server" />
           <telerik:RadLinkButton runat="server" NavigateUrl="~/Imagenes.aspx" Text="Lista Imagenes" ></telerik:RadLinkButton>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

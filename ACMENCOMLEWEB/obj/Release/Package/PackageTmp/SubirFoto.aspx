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
            <div style="margin-left:15px;">
                <asp:FileUpload ID="FileUpload1" runat="server" style="color:black;"  />
                <br />

                <asp:Button ID="Button1" Text="Cargar Foto" ForeColor="Black" style="color:black;" runat="server" OnClick="FTPUpload" />
                <br />
                 <br />

                <asp:Label ID="lblMessage" runat="server" />
                <br />
                 <br />

                <telerik:RadLinkButton ID="RadLinkButton1" runat="server" NavigateUrl="~/Imgs.aspx" Text="Lista Imagenes" ></telerik:RadLinkButton>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

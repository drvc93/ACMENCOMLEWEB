<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Imagenes.aspx.cs" Inherits="ACMENCOMLEWEB.Imagenes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode ="Conditional" runat="server">

        <ContentTemplate>

            <asp:Repeater ID="RepeaterImages" runat="server">
                <ItemTemplate>
                    <div style="margin-bottom:10px; width:30%; height:70%">
                    <asp:Image ID="Image" runat="server" ImageUrl='<%# Container.DataItem %>' />
                    </div>
                    
                </ItemTemplate>
            </asp:Repeater>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaSocios.aspx.cs" Inherits="ACMENCOMLEWEB.ListaSocios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div id="content">
        <div id="content-gen">

            <div style="margin:0 auto; width:90%;margin-top:5%;">
                <telerik:RadGrid RenderMode="Lightweight" ID="GVListaSocios"   AllowSorting="false" AllowPaging="True" runat="server"   >
                    <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                    <MasterTableView Width="100%" 
                                     AutoGenerateColumns="false">

                        <Columns>
                            <telerik:GridBoundColumn DataField="Dni"  HeaderText="DNI">
                            </telerik:GridBoundColumn>
                            
                            <telerik:GridBoundColumn DataField="Nombres" HeaderText="Nombres">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ApellidoPat" HeaderText="Apellido Pat.">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ApellidoMat" HeaderText="Apellido Mat.">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Celular" HeaderText="Celular">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="FechaRegistro" HeaderText="FechaRegistro">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Estado" HeaderText="Estado">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Correo" HeaderText="Correo">
                            </telerik:GridBoundColumn>
                            
                            
                            

                        </Columns>

                    </MasterTableView>

                </telerik:RadGrid>
            </div>

        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPagos.aspx.cs" Inherits="ACMENCOMLEWEB.ListaPagos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <style type="text/css">

                

                .modalBackground
                {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
                }
                .modalPopup
                {
                background-color: #FFFFFF;
                border-width: 3px;
                border-style: solid;
                border-color: black;
                padding-top: 10px;
                padding-left: 10px;
                width: 300px;
                height: 140px;
                }
            </style>

            <div id="content">
                <div id="content-gen">

                    <div style="margin:0 auto; width:90%;margin-top:5%;">
                        <telerik:RadGrid RenderMode="Lightweight" ID="GVListaPagos"  AllowSorting="false" AllowPaging="True" runat="server" OnItemCommand="GVListaPagos_ItemCommand"   >
                            <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                            <MasterTableView Width="100%"  ViewStateMode="Enabled"
                                             AutoGenerateColumns="false">

                                <Columns>
                                    <telerik:GridBoundColumn DataField="codPago"  HeaderText="Codigo">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Nombres" HeaderText="Nombres">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Seccion" HeaderText="Seccion">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Puesto" HeaderText="Puesto">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Concepto" HeaderText="Concepto">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Banco" HeaderText="Banco">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Monto" HeaderText="Monto">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridDateTimeColumn DataField="FechaPago" HeaderText="FechaPago"></telerik:GridDateTimeColumn>
                                   
                                    <telerik:GridBoundColumn DataField="Estado" HeaderText="Estado">
                                    </telerik:GridBoundColumn>
                             
                                    <telerik:GridTemplateColumn  UniqueName="TemplateActualizarEstado" ShowSortIcon="true">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="ConfirmPago"   runat="server" AlternateText="ae" CausesValidation="False"
                                                            CommandArgument="Dni"  CommandName="ConfirmarPago"
                                                            Text="Confirmar" Enabled='<%#  Eval("Enabledbtn") %>' ToolTip="Editar">

                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </telerik:GridTemplateColumn>

                                </Columns>

                            </MasterTableView>

                        </telerik:RadGrid>
                    </div>

                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>

    <div style="display: none">
        <asp:Button runat="server" ID="btnShowPopup"  />
    </div>

</asp:Content>

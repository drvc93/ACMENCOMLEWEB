<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPagos.aspx.cs" Inherits="ACMENCOMLEWEB.ListaPagos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <%--  <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />--%>

  

    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("¿Desea confirmar el pago ?")) {
                confirm_value.value = "Si";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>

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
            <div runat="server" id="divcorrect" visible="false" class="alert alert-success" style="margin-top:10px" >
                <strong>Exito!</strong> Se realizó la operación correctamente
                <a href="#" class="alert-link"></a>.
            </div>
            <div id="content">
                <div id="content-gen">

                    <div style="margin:0 auto; width:90%;margin-top:5%;">
                        <telerik:RadGrid  RenderMode="Lightweight" ID="GVListaPagos"  OnNeedDataSource="GVListaPagos_NeedDataSource" AllowSorting="false" AllowPaging="True" runat="server" OnItemCommand="GVListaPagos_ItemCommand"   >
                            <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                            <MasterTableView Width="100%"  ViewStateMode="Enabled"
                                             AutoGenerateColumns="false">

                                <Columns>
                                    <telerik:GridBoundColumn DataField="codPago"  UniqueName="codPago" HeaderText="Codigo">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Nombres" HeaderText="Nombres">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Seccion" HeaderText="Seccion">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Puesto" HeaderText="Puesto">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Concepto" HeaderText="Concepto" SortExpression="Concepto">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Banco" SortExpression="Banco" HeaderText="Banco">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Monto" HeaderText="Monto">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridDateTimeColumn SortExpression="FechaPago"  DataField="FechaPago" HeaderText="FechaPago"></telerik:GridDateTimeColumn>

                                    <telerik:GridBoundColumn DataField="Estado" HeaderText="Estado">
                                    </telerik:GridBoundColumn>

                                    <telerik:GridTemplateColumn  UniqueName="TemplateActualizarEstado" ShowSortIcon="true">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="ConfirmPago"   runat="server" AlternateText="ae" CausesValidation="False"
                                                            CommandArgument="Dni"  CommandName="ConfirmarPago"
                                                            Text="Confirmar" Enabled='<%#  Eval("Enabledbtn") %>' OnClientClick="Confirm()"  OnClick="ConfirmPago_Click"  Visible ='<%#  Eval("Enabledbtn") %>' ToolTip ="Editar">

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

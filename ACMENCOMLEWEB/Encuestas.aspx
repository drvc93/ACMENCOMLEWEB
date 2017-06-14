<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Encuestas.aspx.cs" Inherits="ACMENCOMLEWEB.Encuestas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
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
                        <telerik:RadGrid RenderMode="Lightweight"    ID="gvListaEncuestas"  AllowSorting="false" AllowPaging="True" runat="server"   >
                            <PagerStyle Mode="NextPrevAndNumeric"  ></PagerStyle>
                            <MasterTableView Width="100%"  ViewStateMode="Enabled"
                                             AutoGenerateColumns="false">

                                <Columns>
                                    <telerik:GridBoundColumn DataField="codEncuesta"  HeaderText="Codigo"  >
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Descrip" HeaderText="Descripcion" >
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="FechaReg"  HeaderText="Fecha"  >
                                    </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="UserReg"  HeaderText="Usuario Registro"  >
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Estado" HeaderText="Estado">
                                    </telerik:GridBoundColumn>
                                    
                                 
                                    <telerik:GridTemplateColumn  UniqueName="TemplateActualizarEstado" ShowSortIcon="true">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="actualizarEstado"   runat="server" AlternateText="ae" CausesValidation="False"
                                                            CommandArgument="codEncuesta"  CommandName="VerDetalle"
                                                            Text="Ver detalle" ToolTip="Ver Encuesta">

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

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.vb" Inherits="Gestion_ASADA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <div class="card p-4" style="background-color:#8fa2bd;"/>
            
            <div class="row mb-3">
                <div class="col-6">
                    <asp:Button ID="btnConsultar" runat="server" Text="CONSULTAR" CssClass="btn btn-light w-100" />
                </div>
                <div class="col-6">
                    <asp:Button ID="btnLimpiar" runat="server" Text="LIMPIAR" CssClass="btn btn-light w-100" />
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-6">
                    <asp:Button ID="btnModificar" runat="server" Text="MODIFICAR" CssClass="btn btn-light w-100" />
                </div>
                <div class="col-6">
                    <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" CssClass="btn btn-light w-100" />
                </div>
            </div>

            <div class="row">
                <div class="col-6">
                    <asp:Button ID="btnInsertar" runat="server" Text="INSERTAR" CssClass="btn btn-light w-100" />
                </div>
                <div class="col-6">
                    <asp:Button ID="btnAtras" runat="server" Text="ATRAS" CssClass="btn btn-success w-100" />
                </div>
            </div>


</asp:Content>

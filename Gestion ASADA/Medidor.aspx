<%@ Page Title="Gestion de Medidor" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Medidor.aspx.vb" Inherits="Gestion_ASADA.Medidor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


 <%--          https://github.com/DavidCc04/Gestion-ASADA/commits/master/                 --%>

    <%--*************************   ID suscriptor    *******************************--%>

    <div class="form-group">
        <asp:Label ID="lblIDsuscriptor" runat="server" Text="ID de Suscriptor:" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtIDsuscriptor" runat="server" placeholder="0001" CssClass="form-control"></asp:TextBox>
    </div>

    <%--* Validacion suscriptor *--%>
    <asp:RequiredFieldValidator ID="rfvIDsuscriptor" runat="server"
        ErrorMessage="Es necesario indicar el ID de suscriptor."
        ControlToValidate="txtIDsuscriptor" Display="Dynamic" CssClass="text-danger">
    </asp:RequiredFieldValidator>


    <%--*************************   ID Medidor    *******************************--%>
    
    <div class="form-group">
        <asp:Label ID="lblIDmedidor" runat="server" Text="ID de Medidor" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtIDmedidor" runat="server" placeholder="San Francisco" CssClass="form-control"></asp:TextBox>
    </div>

    <%--* Validacion medidor *--%>
    <asp:RequiredFieldValidator ID="rfvIDmedidor" runat="server"
        ErrorMessage="Es necesario indicar el ID de Medidor."
        ControlToValidate="txtIDmedidor" Display="Dynamic" CssClass="text-danger">
    </asp:RequiredFieldValidator>
    

    <%--*************************   Ubucacion   *******************************--%>
  
    <div class="form-group">
        <asp:Label ID="lblUbicacion" runat="server" Text="Ubicacion" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtUbicacion" runat="server" placeholder="San Francisco" CssClass="form-control"></asp:TextBox>
        <%--<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>--%>
       
        <%--* Validacion Ubicacion *--%>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ErrorMessage="Debe indicar la ubicacion del medidor."
            ControlToValidate="txtubicacion" Display="Dynamic" ForeColor="Red">  
        </asp:RequiredFieldValidator> 
    </div>


    <%--*************************   Estado   *******************************--%>
  
    <div class="form-group">
        <asp:Label ID="lblEstadoActual" runat="server" Text="Estado Actual" CssClass="control-label"></asp:Label>
        <asp:DropDownList ID="ddlEstadoActual" runat="server" CssClass="form-control">
            <asp:ListItem Text="Seleccione el estado actual" Value="" />
            <asp:ListItem Text="ACTIVO" Value="1"></asp:ListItem>
            <asp:ListItem Text="INACTIVO" Value="2" />
            <asp:ListItem Text="MOROSO" Value="3" />
        </asp:DropDownList>
    </div>

    <%--* Validacion Estado *--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ErrorMessage="Es necesario indicar el estado del medidor."
        ControlToValidate="ddlEstadoActual" InitialValue=""  Display="Dynamic"  CssClass="text-danger"> 
    </asp:RequiredFieldValidator>
    <br />
    <br />

    <asp:Label ID="lblResultado" runat="server" Text="Resultado:" CssClass="control-label"></asp:Label>

    <%--Agrega una linea en blanco     <hr class="my-3" />                  --%>
    <%--<br />                                          Espacio sin linea      --%>
    <hr style="border-top: 2px solid #333;" />
    <%--  Agrega una linea Gruesa--%>



    <%--  ********************************    Solo botones ******************************************** --%>


    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn btn-success my-2" OnClick="btnConsultar_Click" />
    <asp:Button ID="btnInsertar" runat="server" Text="Insertar" CssClass="btn btn-success" OnClick="btnInsertar_Click" />
    <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-success" />
    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-success" />
    <asp:Button ID="Eliminar" runat="server" Text="Eliminar" CssClass="btn btn-success" />


    <%--  *******************************    cuadro para los botones   ************************************** --%>



    <%--  <div class="row justify-content-center mt-5">
    <div class="col-md-6">

        <div class="card p-4" style="background-color:#8fa2bd;">
            
            
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
                    <asp:Button ID="btnAtras" runat="server" Text="ATRAS" CssClass="btn btn-light w-100" />
                </div>
            </div>
            
        </div>

    </div>
</div>--%>



    <%-- <div class="card p-4" style="background-color:#8fa2bd;">
            
            <div class="row mb-3">
                <div class="col-6">
                    <asp:Button ID="Button1" runat="server" Text="CONSULTAR" CssClass="btn btn-light w-100" />
                </div>
                <div class="col-6">
                    <asp:Button ID="Button2" runat="server" Text="LIMPIAR" CssClass="btn btn-light w-100" />
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-6">
                    <asp:Button ID="Button3" runat="server" Text="MODIFICAR" CssClass="btn btn-light w-100" />
                </div>
                <div class="col-6">
                    <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" CssClass="btn btn-light w-100" />
                </div>
            </div>

            <div class="row">
                <div class="col-6">
                    <asp:Button ID="Button4" runat="server" Text="INSERTAR" CssClass="btn btn-light w-100" />
                </div>
                <div class="col-6">
                    <asp:Button ID="btnAtras" runat="server" Text="ATRAS" CssClass="btn btn-success w-100" />
                </div>
            </div>--%>


   <%-- ********************************************************************************************************************** --%>

  
    
    <asp:GridView ID="gvMedidores" runat="server" AutoGenerateColumns="False" DataKeyNames="IDSuscriptor" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="IDSuscriptor" HeaderText="IDSuscriptor" InsertVisible="False" ReadOnly="True" SortExpression="IDSuscriptor" />
            <asp:BoundField DataField="IDMedidor" HeaderText="IDMedidor" SortExpression="IDMedidor" />
            <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionAsadaConnectionString %>" ProviderName="<%$ ConnectionStrings:GestionAsadaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Medidor]"></asp:SqlDataSource>


</asp:Content>




Public Class Medidor
    Inherits System.Web.UI.Page

    Private ReadOnly txtSuscripcion As Object
    Private txtEstado As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnConsultar_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnInsertar_Click(sender As Object, e As EventArgs)
        Dim medidor As New Models.Medidor()

        If txtIDmedidor.Text = "" Then
            lblResultado.Text = "rellene los campos"
            Return

        End If
        medidor.MedidorId = txtIDmedidor.Text.Trim()
        medidor.Suscripcion = txtIDsuscriptor.Text.Trim()
        medidor.Ubicacion = txtUbicacion.Text.Trim()
        medidor.Estado = ddlEstadoActual.SelectedItem.Text.Trim()

        lblResultado.Text = medidor.Resumen()



    End Sub
End Class
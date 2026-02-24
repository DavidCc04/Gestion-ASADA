Imports Gestion_ASADA.Models
Imports System.Data.SqlClient

Public Class MedidorDB
    Private db As New DbHelper()
    'crear medidor

    Public Function CrearMedidor(ByVal pMedidor As Models.Medidor) As Boolean
        'logica para crear un nuevo medidor en la base de datos

        Using db.GetConnection()
            Dim query As String = "INSERT INTO medidor (IDSuscriptor, Ubicacion, Estado) VALUES (@IDSuscriptor, @Ubicacion, @Estado)"

            Dim parameters As New Dictionary(Of String, Object) From {
             {"@IDSuscriptor", pMedidor.Suscripcion},
            {"@Ubicacion", pMedidor.Ubicacion},
            {"@Estado", pMedidor.Estado}
            }
            db.ExecuteNonQuery(query, parameters)
        End Using
        Return True
    End Function


End Class

Imports System.Data.SqlClient

'DBHelper Se utiliza para manejar la conexión a la base de datos y ejecutar consultas SQL. 
'La clase MedidorDB contiene métodos para interactuar con la tabla de medidores en la base de datos, como crear un nuevo medidor.


Public Class DbHelper

    Private connectionString As String = ConfigurationManager.ConnectionStrings("GestionAsadaConnectionString").ConnectionString

    Public Function GetConnection() As SqlConnection
        Dim conn As New SqlConnection(connectionString)
        Try
            conn.Open()
        Catch ex As Exception
            conn.Dispose()
            Throw New Exception("Error al conectar a la base de datos: " & ex.Message)
        End Try
        Return conn
    End Function



    Public Function ExecuteNonQuery(query As String, parameters As Dictionary(Of String, Object)) As Object ' FUNCION PARA EJECUTAR CONSULTAS SQL QUE NO DEVUELVEN RESULTADOS, COMO INSERT, UPDATE O DELETE.
        If String.IsNullOrWhiteSpace(query) Then
            Throw New ArgumentException("La consulta no puede estar vacía")
        End If
        Using conn As SqlConnection = GetConnection()
            Using cmd As New SqlCommand(query, conn)
                If parameters IsNot Nothing Then
                    For Each p In parameters
                        cmd.Parameters.AddWithValue(p.Key, p.Value)
                    Next
                End If

                Try
                    cmd.ExecuteNonQuery()
                    Return True
                Catch ex As Exception
                    Return False
                End Try
            End Using
        End Using
    End Function

End Class
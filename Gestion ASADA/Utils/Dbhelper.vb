Imports System.Data.SqlClient

Public Class DbHelper

    Private connectionString As String = ConfigurationManager.ConnectionStrings("GestionAsadaConnectionString").ConnectionString

    Public Function GetConnection() As SqlConnection
        Return New SqlConnection(connectionString)
    End Function

End Class

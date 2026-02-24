Namespace Models

    Public Class Medidor

        Private _medidorId As Integer
        Private _suscripcion As String
        Private _ubicacion As String
        Private _estado As String


        Public Sub New()
        End Sub

        Public Sub New(medidorId As Integer, suscripcion As String, ubicacion As String, estado As String)
            _medidorId = medidorId
            _suscripcion = suscripcion
            _ubicacion = ubicacion
            _estado = estado

        End Sub

        Public Property MedidorId As Integer
            Get
                Return _medidorId
            End Get
            Set(value As Integer)
                _medidorId = value
            End Set
        End Property

        Public Property Suscripcion As String
            Get
                Return _suscripcion
            End Get
            Set(value As String)
                _suscripcion = value
            End Set
        End Property

        Public Property Ubicacion As String
            Get
                Return _ubicacion
            End Get
            Set(value As String)
                _ubicacion = value
            End Set
        End Property

        Public Property Estado As String
            Get
                Return _estado
            End Get
            Set(value As String)
                _estado = value
            End Set
        End Property


        Public Function Resumen() As String
            Return $"Medidor: {Suscripcion} -  {MedidorId} - {Ubicacion} - {Estado}"
        End Function

    End Class




End Namespace


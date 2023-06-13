using System.Data.SqlClient;
using Dapper;
public static class BD
{
    public static void AgregarCandidatos(Candidato can)
    {
        string SQL = "INSERT INTO Candidatos(IdPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@IdPartido, @Apellido, @Nombre, @FechaNacimiento, @Foto, @Postulacion)";
    }  
    public static void EliminarCandidato(int idCandidato)
    {

    }
    public static Partido VerInfoPartido(int idPartido)
    {

    }
    public static Candidato VerInfoCandidato(int idCandidato)
    {

    }
    public static List<Partido> ListarPartidos()
    {

    }
    public static List<Candidato> ListarCandidatos(int idPartido)
    {

    }
}

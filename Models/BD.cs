using System.Data.SqlClient;
using Dapper;
public static class BD
{
    public static string _connectionString = @"Server=A-PHZ2-CIDI-047;
    DataBase=TP_Elecciones;Trusted_Connection=True;";
    public static void AgregarCandidatos(Candidato can)
    {
        string sql = "INSERT INTO Candidato(IdPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@IdPartido, @Apellido, @Nombre, @FechaNacimiento, @Foto, @Postulacion)";
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new {IdPartido = can.IdPartido, Apellido = can.Apellido, Nombre = can.Nombre, FechaNacimiento = can.FechaNacimiento, Foto = can.Foto, Postulacion = can.Postulacion});
        }
    }  
    public static void EliminarCandidato(int idCandidato)
    {
        string sql = "DELETE FROM Candidato WHERE IdCandidato = @pidCandidato";
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new {pidCandidato = idCandidato});
        }
    }
    public static Partido VerInfoPartido(int idPartido)
    {
        Partido infoPartido = null;
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Partido WHERE IdPartido = @pidPartido";
            infoPartido = db.QueryFirstOrDefault<Partido>(sql, new {pidPartido = idPartido});
        }
        return infoPartido;
    }
    public static Candidato VerInfoCandidato(int idCandidato)
    {
        Candidato infoCandidato = null;
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Candidato WHERE IdCandidato = @pidCandidato";
            infoCandidato = db.QueryFirstOrDefault<Candidato>(sql, new {pidCandidato = idCandidato});
        }
        return infoCandidato;
    }
    public static List<Partido> ListarPartidos()
    {
        List<Partido> ListaPartidos = new List<Partido>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Partido";
            ListaPartidos = db.Query<Partido>(sql).ToList();
        }
        return ListaPartidos;
    }
    public static List<Candidato> ListarCandidatos(int idPartido)
    {
        List<Candidato> ListaCandidato = new List<Candidato>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Candidato WHERE IdPartido = @pidPartido";
            ListaCandidato = db.Query<Candidato>(sql, new{ pidPartido = idPartido}).ToList();
        }
        return ListaCandidato;
    }
}

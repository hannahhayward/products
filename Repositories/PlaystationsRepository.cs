using System.Data;
using Dapper;
using products.Models;

namespace products.Repositories
{
  public class PlaystationsRepository
  {
    private readonly IDbConnection _db;
    public PlaystationsRepository(IDbConnection db)
    {
      _db = db;
    }
    internal Playstation Create(Playstation p)
    {
      string sql = @"
      INSERT INTO 
      playstations(series, creatorId)
      VALUES (@Series, @CreatorId);
      SELECT LAST_INSERT_ID();";
      p.Id = _db.ExecuteScalar<int>(sql, p);
      return p;
    }
  internal Playstation GetPlaystationById(int id)
  {
    string sql = @"
    SELECT
      p*
      FROM playstations p
      WHERE r.id = @id ;";
      return _db.Query<Playstation>(sql, p)
  }
  }
}
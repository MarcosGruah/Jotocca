using System.Data;
using System.Data.SqlClient;
using Dapper;
using Microsoft.Extensions.Configuration;

namespace Jotocca.DataAccess.DbAccess;

public class SqlDataAccess(IConfiguration config) : ISqlDataAccess
{
    public async Task<IEnumerable<T>> LoadData<T, U>(
        string storedProcedure,
        U parameters,
        string connectionId = "Default")
    {
        using IDbConnection connection = new SqlConnection(config.GetConnectionString(connectionId));

        return await connection.QueryAsync<T>(
            storedProcedure,
            parameters,
            commandType: CommandType.StoredProcedure);
    }

    public async Task SaveData<T>(
        string storedProcedure,
        T parameters,
        string connectionId = "Default")
    {
        using IDbConnection connection = new SqlConnection(config.GetConnectionString(connectionId));

        await connection.ExecuteAsync(
            storedProcedure,
            parameters,
            commandType: CommandType.StoredProcedure);
    }
}
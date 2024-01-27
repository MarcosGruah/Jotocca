using Jotocca.DataAccess.DbAccess;
using Jotocca.DataAccess.Models;

namespace Jotocca.DataAccess.Data;

public class UserData(ISqlDataAccess db)
{
    public Task<IEnumerable<UserModel>> GetAll() => db.LoadData<UserModel, dynamic>("dbo.spUser_GetAll", new { });

    public async Task<UserModel?> GetUser(string id) => (await db.LoadData<UserModel, dynamic>("dbo.spUser_Get", new { Id = id })).FirstOrDefault();

    public Task InsertUser(UserModel user) => db.SaveData("spUser_Insert", new { user.Name });

    public Task UpdateUser(UserModel user) => db.SaveData("dbo.spUser_Update", user);

    public Task DeleteUser(string id) => db.SaveData("dbo.spUser_Delete", new { Id = id });
}
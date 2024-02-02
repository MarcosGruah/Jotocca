using Jotocca.DataAccess.Data.Interface;
using Jotocca.DataAccess.DbAccess;
using Jotocca.DataAccess.Models;

namespace Jotocca.DataAccess.Data;

public class UserData(ISqlDataAccess db) : IUserData
{
    public Task<IEnumerable<UserModel>> GetAll() => db.LoadData<UserModel, dynamic>("dbo.spUser_GetAll", new { });

    public async Task<UserModel?> GetUser(string id) => (await db.LoadData<UserModel, dynamic>("dbo.spUser_Get", new { UserId = id })).FirstOrDefault();

    public Task InsertUser(UserModel user) => db.SaveData("spUser_Insert", new { user.Name });

    public Task UpdateUser(UserModel user) => db.SaveData("dbo.spUser_Update", new { user.UserId, user.Name });

    public Task DeleteUser(string id) => db.SaveData("dbo.spUser_Delete", new { UserId = id });
}
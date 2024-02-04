using Jotocca.DataAccess.Data.Interface;
using Jotocca.DataAccess.DbAccess;
using Jotocca.DataAccess.DTO.User;

namespace Jotocca.DataAccess.Data;

public class UserData(ISqlDataAccess db) : IUserData
{
    public Task<IEnumerable<UserReadDTO>> GetAll() => db.LoadData<UserReadDTO, dynamic>("dbo.spUser_GetAll", new { });

    public async Task<UserReadDTO?> GetUser(string id) => (await db.LoadData<UserReadDTO, dynamic>("dbo.spUser_Get", new { UserId = id })).FirstOrDefault();

    public Task InsertUser(UserInsertDTO user) => db.SaveData("spUser_Insert", new { user.Name });

    public Task UpdateUser(UserPutDTO user) => db.SaveData("dbo.spUser_Update", new { user.UserId, user.Name });

    public Task DeleteUser(string id) => db.SaveData("dbo.spUser_Delete", new { UserId = id });
}
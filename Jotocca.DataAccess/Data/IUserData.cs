using Jotocca.DataAccess.Models;

namespace Jotocca.DataAccess.Data;

public interface IUserData
{
    Task DeleteUser(string id);

    Task<IEnumerable<UserModel>> GetAll();

    Task<UserModel?> GetUser(string id);

    Task InsertUser(UserModel user);

    Task UpdateUser(UserModel user);
}
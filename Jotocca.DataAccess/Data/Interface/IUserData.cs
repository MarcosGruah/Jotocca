using Jotocca.DataAccess.DTO.User;

namespace Jotocca.DataAccess.Data.Interface;

public interface IUserData
{
    Task DeleteUser(string id);

    Task<IEnumerable<UserReadDTO>> GetAll();

    Task<UserReadDTO?> GetUser(string id);

    Task InsertUser(UserInsertDTO user);

    Task UpdateUser(UserPutDTO user);
}
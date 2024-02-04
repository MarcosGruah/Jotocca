namespace Jotocca.DataAccess.DTO.User;

public class UserPutDTO
{
    public Guid UserId { get; set; }
    public required string Name { get; set; }
}
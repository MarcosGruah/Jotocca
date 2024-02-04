namespace Jotocca.DataAccess.DTO.User;

public class UserReadDTO
{
    public Guid UserId { get; set; }
    public required string Name { get; set; }
    public DateTime CreatedDate { get; }
    public DateTime ModifiedDate { get; }
}
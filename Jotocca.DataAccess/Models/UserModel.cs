namespace Jotocca.DataAccess.Models;

public class UserModel
{
    public Guid UserId { get; set; }
    public string Name { get; set; } = string.Empty;
    public DateTime CreatedDate { get; }
    public DateTime ModifiedDate { get; }
}
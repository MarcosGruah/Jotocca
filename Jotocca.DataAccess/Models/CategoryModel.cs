namespace Jotocca.DataAccess.Models;

public class CategoryModel
{
    public Guid CategoryId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public DateTime CreatedDate { get; }
    public DateTime ModifiedDate { get; }
}
namespace Jotocca.DataAccess.Models;

public class ProductModel
{
    public Guid ProductId { get; set; }
    public Guid SubcategoryId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public DateTime CreatedDate { get; set; }
    public DateTime ModifiedDate { get; set; }
}
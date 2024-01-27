﻿namespace Jotocca.DataAccess.Models;

internal class SubcategoryModel
{
    public Guid SubcategoryId { get; set; }
    public Guid CategoryId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public DateTime CreatedDate { get; set; }
    public DateTime ModifiedDate { get; set; }
}
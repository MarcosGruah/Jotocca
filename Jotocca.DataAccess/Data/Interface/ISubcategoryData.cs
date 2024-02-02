using Jotocca.DataAccess.Models;

namespace Jotocca.DataAccess.Data.Interface;

public interface ISubcategoryData
{
    Task DeleteSubcategory(string id);

    Task<IEnumerable<SubcategoryModel>> GetAll();

    Task<SubcategoryModel?> GetSubcategory(string id);

    Task InsertSubcategory(SubcategoryModel subcategory);

    Task UpdateSubcategory(SubcategoryModel subcategory);
}
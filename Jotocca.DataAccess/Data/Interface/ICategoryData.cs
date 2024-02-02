using Jotocca.DataAccess.Models;

namespace Jotocca.DataAccess.Data.Interface;

public interface ICategoryData
{
    Task DeleteCategory(string id);

    Task<IEnumerable<CategoryModel>> GetAll();

    Task<CategoryModel?> GetCategory(string id);

    Task InsertCategory(CategoryModel category);

    Task UpdateCategory(CategoryModel category);
}
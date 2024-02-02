using Jotocca.DataAccess.Data.Interface;
using Jotocca.DataAccess.DbAccess;
using Jotocca.DataAccess.Models;

namespace Jotocca.DataAccess.Data;

public class CategoryData(ISqlDataAccess db) : ICategoryData
{
    public Task<IEnumerable<CategoryModel>> GetAll() => db.LoadData<CategoryModel, dynamic>("dbo.spCategory_GetAll", new { });

    public async Task<CategoryModel?> GetCategory(string id) => (await db.LoadData<CategoryModel, dynamic>("dbo.spCategory_Get", new { CategoryId = id })).FirstOrDefault();

    public Task InsertCategory(CategoryModel category) => db.SaveData("spCategory_Insert", new { category.Name, category.Description });

    public Task UpdateCategory(CategoryModel category) => db.SaveData("dbo.spCategory_Update", new { category.CategoryId, category.Name, category.Description });

    public Task DeleteCategory(string id) => db.SaveData("dbo.spCategory_Delete", new { CategoryId = id });
}
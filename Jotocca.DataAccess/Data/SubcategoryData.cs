using Jotocca.DataAccess.Data.Interface;
using Jotocca.DataAccess.DbAccess;
using Jotocca.DataAccess.Models;

namespace Jotocca.DataAccess.Data;

public class SubcategoryData(ISqlDataAccess db) : ISubcategoryData
{
    public Task<IEnumerable<SubcategoryModel>> GetAll() => db.LoadData<SubcategoryModel, dynamic>("dbo.spSubcategory_GetAll", new { });

    public async Task<SubcategoryModel?> GetSubcategory(string id) => (await db.LoadData<SubcategoryModel, dynamic>("dbo.spSubcategory_Get", new { SubcategoryId = id })).FirstOrDefault();

    public Task InsertSubcategory(SubcategoryModel subcategory) => db.SaveData("spSubcategory_Insert", new { subcategory.CategoryId, subcategory.Name, subcategory.Description });

    public Task UpdateSubcategory(SubcategoryModel subcategory) => db.SaveData("dbo.spSubcategory_Update", new { subcategory.SubcategoryId, subcategory.CategoryId, subcategory.Name, subcategory.Description });

    public Task DeleteSubcategory(string id) => db.SaveData("dbo.spSubcategory_Delete", new { SubcategoryId = id });
}
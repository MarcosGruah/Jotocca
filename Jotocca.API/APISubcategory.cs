using Jotocca.DataAccess.Data.Interface;
using Jotocca.DataAccess.Models;

namespace Jotocca.API;

public static class APISubcategory
{
    public static void ConfigureSubcategoryAPI(this WebApplication app)
    {
        app.MapGet("/Subcategories/GetAll", GetAll);
        app.MapGet("/Subcategories/GetCategory/{id}", GetSubcategory);
        app.MapPost("/Subcategories", InsertSubcategory);
        app.MapPut("/Subcategories", UpdateSubcategory);
        app.MapDelete("/Subcategories", DeleteSubcategory);
    }

    private static async Task<IResult> GetAll(ISubcategoryData data)
    {
        try
        {
            return Results.Ok(await data.GetAll());
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> GetSubcategory(ISubcategoryData data, string id)
    {
        try
        {
            var results = await data.GetSubcategory(id);

            if (results is null)
            {
                return Results.NotFound();
            }
            else
            {
                return Results.Ok(results);
            }
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> InsertSubcategory(ISubcategoryData data, SubcategoryModel subcategory)
    {
        try
        {
            await data.InsertSubcategory(subcategory);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> UpdateSubcategory(ISubcategoryData data, SubcategoryModel subcategory)
    {
        try
        {
            await data.UpdateSubcategory(subcategory);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> DeleteSubcategory(ISubcategoryData data, string id)
    {
        try
        {
            await data.DeleteSubcategory(id);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }
}
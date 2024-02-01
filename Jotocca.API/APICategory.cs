using Jotocca.DataAccess.Data;
using Jotocca.DataAccess.Models;

namespace Jotocca.API;

public static class APICategory
{
    public static void ConfigureCategoryAPI(this WebApplication app)
    {
        app.MapGet("/Categories/GetAll", GetAll);
        app.MapGet("/Categories/GetCategory/{id}", GetCategory);
        app.MapPost("/Categories", InsertCategory);
        app.MapPut("/Categories", UpdateCategory);
        app.MapDelete("/Categories", DeleteCategory);
    }

    private static async Task<IResult> GetAll(ICategoryData data)
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

    private static async Task<IResult> GetCategory(ICategoryData data, string id)
    {
        try
        {
            var results = await data.GetCategory(id);

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

    private static async Task<IResult> InsertCategory(ICategoryData data, CategoryModel category)
    {
        try
        {
            await data.InsertCategory(category);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> UpdateCategory(ICategoryData data, CategoryModel category)
    {
        try
        {
            await data.UpdateCategory(category);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> DeleteCategory(ICategoryData data, string id)
    {
        try
        {
            await data.DeleteCategory(id);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }
}
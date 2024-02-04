using Jotocca.DataAccess.Data.Interface;
using Jotocca.DataAccess.DTO.User;

namespace Jotocca.API;

public static class APIUser
{
    public static void ConfigureUserAPI(this WebApplication app)
    {
        app.MapGet("/Users/GetAll", GetAll);
        app.MapGet("/Users/GetUser/{id}", GetUser);
        app.MapPost("/Users", InsertUser);
        app.MapPut("/Users", UpdateUser);
        app.MapDelete("/Users", DeleteUser);
    }

    private static async Task<IResult> GetAll(IUserData data)
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

    private static async Task<IResult> GetUser(IUserData data, string id)
    {
        try
        {
            var results = await data.GetUser(id);

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

    private static async Task<IResult> InsertUser(IUserData data, UserInsertDTO user)
    {
        try
        {
            await data.InsertUser(user);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> UpdateUser(IUserData data, UserPutDTO user)
    {
        try
        {
            await data.UpdateUser(user);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> DeleteUser(IUserData data, string id)
    {
        try
        {
            await data.DeleteUser(id);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }
}
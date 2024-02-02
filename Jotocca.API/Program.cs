using Jotocca.API;
using Jotocca.DataAccess.Data;
using Jotocca.DataAccess.Data.Interface;
using Jotocca.DataAccess.DbAccess;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddSingleton<ISqlDataAccess, SqlDataAccess>();
builder.Services.AddSingleton<IUserData, UserData>();
builder.Services.AddSingleton<ICategoryData, CategoryData>();
builder.Services.AddSingleton<ISubcategoryData, SubcategoryData>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.ConfigureUserAPI();
app.ConfigureCategoryAPI();
app.ConfigureSubcategoryAPI();

app.Run();
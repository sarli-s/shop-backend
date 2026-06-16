using Microsoft.EntityFrameworkCore;
using Repository;
using Servers;
using Entitys;
using NLog.Web;
using Services;
using WebAPIShop;
using WebAPIShop.Middleware;
using Microsoft.AspNetCore.Builder;
using PresidentsApp.Middlewares;
using WebAPIShop.Extensions;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddScoped<IUserRepository, UserRepository>();
builder.Services.AddScoped<IUserService, UserService>();


builder.Services.AddScoped<ICategoriesRepository, CategoriesRepository>();
builder.Services.AddScoped<ICategoryService, CategoryService>();


builder.Services.AddScoped<IProductRepository,ProductRepository>();
builder.Services.AddScoped<IPrudectsService, PrudectsService>();


builder.Services.AddScoped<IOrderRepository, OrderRepository>();
builder.Services.AddScoped<IOrdersService, OrdersService>();


builder.Services.AddScoped<IPasswordService, PasswordService>();

builder.Services.AddDbContext<dbSHOPContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("projectWithAngular")));

builder.Host.UseNLog();

builder.Services.AddScoped<IRatingRepository, RatingRepository>();
builder.Services.AddScoped<IRatingService, RatingService>();

builder.Services.AddScoped<IChatRepository, ChatRepository>();
builder.Services.AddScoped<IChatService, ChatService>();
builder.Services.AddScoped<ISearchService, SearchService>();
builder.Services.AddHttpClient();
builder.Services.AddHttpClient("PythonAI")
    .ConfigurePrimaryHttpMessageHandler(() => new HttpClientHandler
    {
        ServerCertificateCustomValidationCallback =
            HttpClientHandler.DangerousAcceptAnyServerCertificateValidator
    });

builder.Services.AddCustomRateLimiter();

builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
// Add services to the container.

// הוספת שירות CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAngular",
        policy => policy.WithOrigins("http://localhost:4200") // הכתובת של אנגולר
                        .AllowAnyMethod()
                        .AllowAnyHeader());
});
builder.Services.AddControllers();
builder.Services.AddOpenApi();

var app = builder.Build();


if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
    app.UseSwaggerUI(options =>
    {
        options.SwaggerEndpoint("/openapi/v1.json", "My API V1");
    });
}
// Configure the HTTP request pipeline.

app.UseHttpsRedirection();

app.UseCors("AllowAngular");

app.UseRateLimiter();

app.UseErrorHandlingMiddleware();

app.UseRatingMiddleware();

app.UseStaticFiles();

app.UseAuthorization();

app.MapControllers();

// Seed the AI vector store on startup
using (var scope = app.Services.CreateScope())
{
    try { await scope.ServiceProvider.GetRequiredService<ISearchService>().SeedAsync(); }
    catch { /* AI server may not be up yet; re-seed via POST /api/search/seed */ }
}

app.Run();

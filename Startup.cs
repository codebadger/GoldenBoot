using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;

namespace GoldenBoot
{
    public class Startup
    {
        public static IConfiguration Configuration;

        public Startup(IHostingEnvironment env)
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(env.ContentRootPath)
                .AddJsonFile("api/sql-connection.json");
            var config = builder.Build();

            Configuration = config;
        }

        public void ConfigureServices(IServiceCollection services)
        {
            // Frameworks
            services.AddMvc().AddJsonOptions(
                x => x.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore
            );

            // GoldenBoot Api Services
            services.AddTransient<ICompetitionRepository, CompetitionSqlRepository>();

            // Swagger
            services.AddSwaggerGen();
        }
        
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            app.UseDeveloperExceptionPage();
            app.UseDefaultFiles();
            app.UseStaticFiles();

            app.UseMvc(routes => 
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}"
                );
            });

            app.UseSwagger();
            app.UseSwaggerUi();
        }
    }
}
using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PMSWeb.Startup))]
namespace PMSWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

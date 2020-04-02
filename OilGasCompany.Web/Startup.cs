using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OilGasCompany.Web.Startup))]
namespace OilGasCompany.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

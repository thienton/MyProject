using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OnlineForms.Startup))]
namespace OnlineForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

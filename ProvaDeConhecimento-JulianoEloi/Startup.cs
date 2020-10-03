using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProvaDeConhecimento_JulianoEloi.Startup))]
namespace ProvaDeConhecimento_JulianoEloi
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

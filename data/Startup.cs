using Microsoft.AspNet.Builder;

namespace HelloWorldWeb
{
  public class Startup
  {
    public void Configure(IApplicationBuilder app)
    {
      app.UseWelcomePage();
    }
  }
}

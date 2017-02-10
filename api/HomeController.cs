using Microsoft.AspNetCore.Mvc;

namespace GoldenBoot
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View("/wwwroot/index.html");
        }
    }
}
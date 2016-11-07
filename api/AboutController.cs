using Microsoft.AspNetCore.Mvc;

namespace GoldenBoot
{
    public class AboutController : Controller
    {   
        [HttpGet]
        [Route("api/about")]
        public JsonResult Index()
        {
            var OSDescription = System.Runtime.InteropServices.RuntimeInformation.OSDescription;
            var OSArchitecture = System.Runtime.InteropServices.RuntimeInformation.OSArchitecture;
            var ProcessArchitecture = System.Runtime.InteropServices.RuntimeInformation.ProcessArchitecture;

            return Json(new {
                OSDescription,
                OSArchitecture,
                ProcessArchitecture
            });
        }
    }
}
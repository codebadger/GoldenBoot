using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace GoldenBoot.Api.Controllers
{
    [Produces("application/json")]
    public class AboutController : Controller
    {
        [HttpGet]
        [Route("api/about")]
        public JsonResult Index()
        {
            var OSDescription = System.Runtime.InteropServices.RuntimeInformation.OSDescription;
            var OSArchitecture = System.Runtime.InteropServices.RuntimeInformation.OSArchitecture;
            var ProcessArchitecture = System.Runtime.InteropServices.RuntimeInformation.ProcessArchitecture;

            return Json(new
            {
                OSDescription,
                OSArchitecture,
                ProcessArchitecture
            });
        }
    }
}
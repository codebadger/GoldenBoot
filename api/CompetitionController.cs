using Microsoft.AspNetCore.Mvc;

namespace GoldenBoot
{
    [Route("api/[controller]")]
    public class CompetitionController : Controller
    {
        [Route("{id}")]
        public JsonResult GetCompetition(int id)
        {
            var repository = new CompetitionSqlRepository();

            var competition = repository.Get("copa2016");

            var json = Json(new {
                data = competition
            });

            return json;

        }
    }
}

using System.Linq;
using Microsoft.AspNetCore.Mvc;

namespace GoldenBoot
{
    [Route("api/[controller]")]
    public class CompetitionController : Controller
    {
        [Route("{id}")]
        public JsonResult GetCompetition(int id)
        {
            Competition competition;

            using (var context = new GoldenBootContext())
            {
                competition = context.Competition.First(x => x.Id == id);
                competition.Players = context.Player.Where(x => x.Competition.Id == id)
                    .OrderByDescending(x => x.Goals)
                    .ToList();

            }

            var json = Json(new {
                data = competition
            });

            return json;

        }
    }
}

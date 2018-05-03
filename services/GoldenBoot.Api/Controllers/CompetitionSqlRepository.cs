using GoldenBoot.Api.Models;
using System.Linq;

namespace GoldenBoot.Api
{
    public class CompetitionSqlRepository : ICompetitionRepository
    {
        private readonly GoldenBootContext _context;

        public CompetitionSqlRepository(GoldenBootContext context)
        {
            _context = context;
        }

        public Competition Get(string code)
        {
            var competition = _context.Competition.FirstOrDefault(x => x.Code == code);
                
            if (competition == null) return competition;

            competition.Players = _context.Player.Where(x => x.Competition.Code == code)
                .OrderByDescending(x => x.Goals)
                .ToList();
                
            return competition;
        }
    }

    public interface ICompetitionRepository
    {
        Competition Get(string code);
    }
}
using System.Linq;

namespace GoldenBoot
{
    public class CompetitionSqlRepository : ICompetitionRepository
    {
        public Competition Get(string code)
        {
            using (var context = new GoldenBootContext())
            {
                var competition = context.Competition.FirstOrDefault(x => x.Code == code);
                
                if (competition == null) return competition;

                competition.Players = context.Player.Where(x => x.Competition.Code == code)
                    .OrderByDescending(x => x.Goals)
                    .ToList();
                
                return competition;
            }
        }
    }

    public interface ICompetitionRepository
    {
        Competition Get(string code);
    }
}
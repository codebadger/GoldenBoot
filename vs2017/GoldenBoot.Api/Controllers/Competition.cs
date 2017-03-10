using System.Collections.Generic;

namespace GoldenBoot.Api
{
    public partial class Competition
    {
        public Competition()
        {
            Players = new HashSet<Player>();
        }

        public int Id { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Player> Players { get; set; }
        public virtual Competition IdNavigation { get; set; }
        public virtual Competition InverseIdNavigation { get; set; }
    }
}

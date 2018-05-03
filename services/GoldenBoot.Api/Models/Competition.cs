using System;
using System.Collections.Generic;

namespace GoldenBoot.Api.Models
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

        public Competition IdNavigation { get; set; }
        public Competition InverseIdNavigation { get; set; }
        public ICollection<Player> Players { get; set; }
    }
}

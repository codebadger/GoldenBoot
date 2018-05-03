using System;
using System.Collections.Generic;

namespace GoldenBoot.Api.Models
{
    public partial class Player
    {
        public int Id { get; set; }
        public int CompetitionId { get; set; }
        public string Name { get; set; }
        public string Country { get; set; }
        public string Club { get; set; }
        public int Goals { get; set; }

        public Competition Competition { get; set; }
    }
}

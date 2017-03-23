export class Player {

    constructor(
        public name: string,
        public country: string,
        public club: string,
        public goals: number){}

}

export class Competition {

  constructor(
    public code: string,
    public name: string,
    public players: Player[]) { }

}

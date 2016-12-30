import { Component, OnInit }  from '@angular/core';
import './rxjs-operators';

import { CompetitionService } from './competition.service';
import { Competition }        from './competition';
import { RouterModule, Routes } from '@angular/router';

@Component({
  selector:       'my-app',
  templateUrl:    'app/app.template.html',
  providers:      [CompetitionService]
})
export class AppComponent implements OnInit {

    error: string;
    competition: Competition;

    constructor(private service: CompetitionService) {
        this.competition = new Competition("one", "copa", null);
    }

    ngOnInit() {

        this.service.getCompetition().subscribe(
            x => this.competition = x,
            error => this.error = <any>error
        );

    }

}

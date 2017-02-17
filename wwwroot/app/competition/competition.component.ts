import { Component, OnInit }  from '@angular/core';

import { CompetitionService } from './competition.service';
import { Competition } from './competition';
import { RouterModule, Routes, ActivatedRoute } from '@angular/router';

import '../rxjs-operators';

@Component({
  templateUrl: 'app/competition/competition.template.html',
  providers: [CompetitionService]
})
export class CompetitionComponent implements OnInit {

    error: string;
    competition: Competition;

    constructor(private service: CompetitionService, private route: ActivatedRoute) {
        this.competition = new Competition("one", "copa", null);
    }

    ngOnInit() {

        this.route.params
            .map(x => x['id'])
            .subscribe((id) => {

                if (!id) { id = "copa-2016" };
                
                this.service.getCompetition(id).subscribe(
                    x => this.competition = x,
                    error => this.error = <any>error
                );

        })

    }

}
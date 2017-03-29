import { Component, OnInit } from '@angular/core';
import { RouterModule, Routes, ActivatedRoute } from '@angular/router';

import { CompetitionService } from './competition.service';
import { Competition } from './competition';

@Component({
  selector: 'app-competition',
  templateUrl: './competition.component.html',
  styleUrls: ['./competition.component.css'],
  providers: [CompetitionService]
})
export class CompetitionComponent implements OnInit {

    error: string;
    competition: Competition;

    constructor(private service: CompetitionService, private route: ActivatedRoute) {
        this.competition = new Competition('one', 'copa', null);
    }

    ngOnInit() {

        this.route.params
            .map(x => x['id'])
            .subscribe((id) => {

                if (!id) { id = 'copa-2016'; };

                this.service.getCompetition(id).subscribe(
                    x => this.competition = x,
                    error => this.error = <any>error
                );

        });

    }

}

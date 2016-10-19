import { Component, OnInit } from '@angular/core';

import { Competition }       from './competition';

@Component({
  selector: 'my-app',
  templateUrl: 'app/app.template.html'
})
export class AppComponent {

   competition: Competition;

    constructor() {
        this.competition = new Competition("one", "copa", null);
    }

    ngOnInit() {

    }

}

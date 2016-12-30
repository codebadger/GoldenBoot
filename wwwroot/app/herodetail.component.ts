import { Component, OnInit }  from '@angular/core';
import './rxjs-operators';

@Component({
  template:    'HERO DETAIL COMPONENT'
})
export class HeroDetailComponent implements OnInit {

    constructor() {

        console.log('hero detail component constructor');

    }

    ngOnInit() {

        console.log('hero detail component');

    }

}

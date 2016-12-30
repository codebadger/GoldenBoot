import { Component, OnInit }  from '@angular/core';
import './rxjs-operators';

@Component({
  template:    'CRISIS LIST COMPONENT'
})
export class CrisisListComponent implements OnInit {

    constructor() {

        console.log('crisis list component constructor');

    }

    ngOnInit() {

        console.log('crisis list component');

    }

}

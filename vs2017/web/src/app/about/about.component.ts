import { Component, OnInit } from '@angular/core';
import { RouterModule, Routes, ActivatedRoute } from '@angular/router';

import { AboutService } from './about.service';
import { About } from './about';

@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css'],
  providers: [AboutService]
})
export class AboutComponent implements OnInit {

    error: string;
    about: About;

    constructor(private service: AboutService, private route: ActivatedRoute) {
        this.about = new About('1', '2', '3');
    }

    ngOnInit() {

        console.log('ngoninit');
        console.log(this.about);

        this.service.getAbout().subscribe(
            x => this.about = x,
            error => this.error = <any>error
        );

        function temp(x) {
            console.log('about');
            console.log(this.about);
        }

    }

}

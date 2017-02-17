import { Component, OnInit }  from '@angular/core';
import { RouterModule, Routes, ActivatedRoute } from '@angular/router';
import '../rxjs-operators';

import { AboutService } from './about.service';
import { About } from './about';

@Component({
    templateUrl: 'app/about/about.template.html',
    providers: [AboutService]
})
export class AboutComponent implements OnInit {

    error: string;
    about: About;

    constructor(private service: AboutService, private route: ActivatedRoute) {
        this.about = new About("1", "2", "3");
        //this.about.osDescription = "temp";
    }

    ngOnInit() {

        console.log('ngoninit');
        console.log(this.about);

        this.service.getAbout().subscribe(
            x => this.about = x,
            error => this.error = <any>error
        );

        function temp(x)
        {
            //console.log(x);
            //this.about = x;

            console.log('about');
            console.log(this.about);
        }

    }

}
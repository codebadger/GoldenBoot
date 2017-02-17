import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpModule, JsonpModule } from '@angular/http';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent }  from './app.component';
import { AboutComponent } from './about/about.component';
import { CompetitionComponent } from './competition/competition.component';

const appRoutes: Routes = [
  { path: '', component: CompetitionComponent },
  { path: 'about', component: AboutComponent },
  { path: 'competition', component: CompetitionComponent },
  { path: 'competition/:id', component: CompetitionComponent }
];

@NgModule({
  imports:      [ BrowserModule, HttpModule, JsonpModule, RouterModule.forRoot(appRoutes) ],
  declarations: [ AppComponent, AboutComponent, CompetitionComponent ],
  bootstrap:    [ AppComponent ]
})

export class AppModule { }
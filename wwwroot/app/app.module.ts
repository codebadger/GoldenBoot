import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpModule, JsonpModule } from '@angular/http';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent }  from './app.component';
import { HeroDetailComponent } from './herodetail.component';
import { CrisisListComponent } from './crisis.component';

const appRoutes: Routes = [
  { path: '', component: HeroDetailComponent },
  { path: 'hero', component: HeroDetailComponent },
  { path: 'crisis-center', component: CrisisListComponent }
];

@NgModule({
  imports:      [ BrowserModule, HttpModule, JsonpModule, RouterModule.forRoot(appRoutes) ],
  declarations: [ AppComponent, HeroDetailComponent, CrisisListComponent ],
  bootstrap:    [ AppComponent ]
})

export class AppModule { }
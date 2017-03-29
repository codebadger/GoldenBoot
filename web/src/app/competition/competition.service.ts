import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';

import { Competition } from './competition';

@Injectable()
export class CompetitionService {

  constructor(private http: Http) { }

  getCompetition(id: string): Observable<Competition> {

    const results = this.http.get(`http://localhost:2194/api/competition/${id}`)
      .map(this.extractData)
      .catch(this.handleError);

    return results;
  }

  private extractData(res: Response) {

    const body = res.json();
    return body || {};

  }

  private handleError(error: any) {

    // In a real world app, we might use a remote logging infrastructure
    // We'd also dig deeper into the error to get a better message
    const errMsg = (error.message) ? error.message :
      error.status ? `${error.status} - ${error.statusText}` : 'Server error';
    console.error(errMsg); // log to console instead
    return Observable.throw(errMsg);
  }

}

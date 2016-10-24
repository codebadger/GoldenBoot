import { Injectable }       from '@angular/core';
import { Http, Response }   from '@angular/http';

import { Observable }       from 'rxjs/Observable';

import { Competition }      from './competition';

@Injectable()
export class CompetitionService {

    constructor (private http: Http) {}

    getCompetition(): Observable<Competition> {

        var results = this.http.get('api/competition/copa2016')
            .map(this.extractData)
            .catch(this.handleError);

        return results;
    }

    private extractData(res: Response) {

        let body = res.json();
        return body || { };        

    }

    private handleError (error: any) {

        // In a real world app, we might use a remote logging infrastructure
        // We'd also dig deeper into the error to get a better message
        let errMsg = (error.message) ? error.message :
            error.status ? `${error.status} - ${error.statusText}` : 'Server error';
        console.error(errMsg); // log to console instead
        return Observable.throw(errMsg);
    } 

}
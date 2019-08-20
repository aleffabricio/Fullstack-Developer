import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import {catchError} from "rxjs/operators";
import { Observable, of } from 'rxjs';


import { apiUrl } from "../../environments/environment";


@Injectable({
  providedIn: 'root'
})
export class FreightService {

  private freightUrl = `${apiUrl}/calculateFreight`;

  constructor(private http: HttpClient) { }

  getCalculateFreight(qtdItens): Observable<any> {
    return this.http.get(`${this.freightUrl}/${qtdItens}`).pipe(
      catchError(_ => of(null))
    );
  }
}

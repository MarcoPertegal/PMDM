import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { BerriesListResponse } from '../models/berries-list.interface';

@Injectable({
  providedIn: 'root'
})
export class BerryService {

  constructor(private http: HttpClient) { }

  getBerryList(): Observable<BerriesListResponse> {
    return this.http.get<BerriesListResponse>(`https://pokeapi.co/api/v2/berry`);
  }
}

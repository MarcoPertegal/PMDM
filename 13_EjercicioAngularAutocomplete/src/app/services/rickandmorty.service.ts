import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RickandmortyListResponse } from '../models/rickandmorty-list.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class RickandmortyService {

  constructor(private http: HttpClient) { }

  getRickandmortyList(): Observable<RickandmortyListResponse> {
    return this.http.get<RickandmortyListResponse>(`https://rickandmortyapi.com/api/character`);
  }

  getRickandmortyListByName(name: string): Observable<RickandmortyListResponse> {
    return this.http.get<RickandmortyListResponse>(`https://rickandmortyapi.com/api/character?name=${name}`);
  }

}

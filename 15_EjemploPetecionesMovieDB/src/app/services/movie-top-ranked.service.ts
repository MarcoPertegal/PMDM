import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MovieTopRankedResponse } from '../models/movie-top-ranked.interface';
import { MovieDetailsResponse } from '../models/movie-details.interface';

@Injectable({
  providedIn: 'root'
})
export class MovieTopRankedService {

  constructor(private http: HttpClient) { }

  getMovieTopRanked(): Observable<MovieTopRankedResponse> {
    return this.http.get<MovieTopRankedResponse>(`https://api.themoviedb.org/3/movie/top_rated?api_key=18c6dd9c77bfcc97e862001655abfba9`);
  }

  getMovieTopRatedById(id: number): Observable<MovieDetailsResponse> {
    const url = `https://api.themoviedb.org/3/movie/${id}?api_key=18c6dd9c77bfcc97e862001655abfba9`;
    return this.http.get<MovieDetailsResponse>(url);
  }
}

import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MovieTopRankedResponse } from '../models/movie-top-ranked.interface';
import { MovieDetailsResponse } from '../models/movie-details.interface';
import { environment } from 'src/environments/environment.development';

const MOVIE_BASE_URL = 'https://api.themoviedb.org/3/movie';

@Injectable({
  providedIn: 'root'
})
export class MovieTopRankedService {

  constructor(private http: HttpClient) { }

  getMovieTopRanked(): Observable<MovieTopRankedResponse> {
    return this.http.get<MovieTopRankedResponse>(`${MOVIE_BASE_URL}/top_rated?api_key=${environment.apiKey}`);
  }

  getMovieTopRatedById(id: number): Observable<MovieDetailsResponse> {
    const url = `${MOVIE_BASE_URL}/${id}?api_key=${environment.apiKey}`;
    return this.http.get<MovieDetailsResponse>(url);
  }
}

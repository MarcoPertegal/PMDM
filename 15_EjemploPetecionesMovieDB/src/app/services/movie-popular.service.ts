import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { MoviePopularResponse } from '../models/movie-popular.interface';
import { MovieDetailsResponse } from '../models/movie-details.interface';

@Injectable({
  providedIn: 'root'
})
export class MoviePopularService {

  constructor(private http: HttpClient) { }

  getMoviePopularList(): Observable<MoviePopularResponse> {
    return this.http.get<MoviePopularResponse>(`https://api.themoviedb.org/3/movie/popular?api_key=18c6dd9c77bfcc97e862001655abfba9`);
  }
  getMoviePopularById(id: number): Observable<MovieDetailsResponse> {
    const url = `https://api.themoviedb.org/3/movie/${id}?api_key=18c6dd9c77bfcc97e862001655abfba9`;
    return this.http.get<MovieDetailsResponse>(url);
  }
}

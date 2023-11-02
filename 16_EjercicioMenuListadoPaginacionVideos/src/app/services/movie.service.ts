import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MovieResponse } from '../models/movie.interface';
import { environment } from 'src/environments/environment.development';
import { MovieDetailsResponse } from '../models/movie-details.interface';
import { MovieVideoResponse } from '../models/movie-video.interface';

const MOVIE_BASE_URL = 'https://api.themoviedb.org/3/movie';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getMovies(page: number): Observable<MovieResponse> {
    return this.http.get<MovieResponse>(`${MOVIE_BASE_URL}/popular?api_key=${environment.apiKey}&page=${page}`);
  }
  getDetailsById(id: number): Observable<MovieDetailsResponse> {
    return this.http.get<MovieDetailsResponse>(`${MOVIE_BASE_URL}/${id}?api_key=${environment.apiKey}`);
  }
  getVideoById(id: number): Observable<MovieVideoResponse> {
    return this.http.get<MovieVideoResponse>(`${MOVIE_BASE_URL}/${id}/videos?language=en-US&api_key=${environment.apiKey}`);
  }
}

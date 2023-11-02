import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { MoviePopularResponse } from '../models/movie-popular.interface';
import { MovieDetailsResponse } from '../models/movie-details.interface';
import { environment } from 'src/environments/environment.development';
//para no repetir la url nos podemos hacer una cosntante
//DEBERIAMOS TENER UN SERVICE POR TIPO DE OBJETO QUE RESCATAMOS EN ESTE CASO ABRÍA 
//QUE TENER SOLO UN SERVICIO PORQUESOLO RESCATAMOS PELICULAS
const MOVIE_BASE_URL = 'https://api.themoviedb.org/3/movie';

@Injectable({
  providedIn: 'root'
})
export class MoviePopularService {

  constructor(private http: HttpClient) { }

  getPopular(): Observable<MoviePopularResponse> {
    return this.http.get<MoviePopularResponse>(`${MOVIE_BASE_URL}/popular?api_key=${environment.apiKey}`);
  }
  getDetailsById(id: number): Observable<MovieDetailsResponse> {
    return this.http.get<MovieDetailsResponse>(`${MOVIE_BASE_URL}/${id}?api_key=${environment.apiKey}`);
  }
}

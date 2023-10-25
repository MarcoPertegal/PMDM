import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { VehicleListResponse } from '../models/vehicle-list.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class VehicleService {

  constructor(private http: HttpClient) { }

  getVehicleList(): Observable<VehicleListResponse> {
    return this.http.get<VehicleListResponse>('https://swapi.dev/api/vehicles');
  }
}

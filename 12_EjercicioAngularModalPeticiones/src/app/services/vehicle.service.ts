import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { VehicleListResponse } from '../models/vehicle-list.interface';
import { ViewVehicleDetail } from '../models/vehicle-details.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class VehicleService {

  constructor(private http: HttpClient) { }

  //El Observable indica de que tipo es el obejto que devuelve, dentro montamos la peticion le decimos el tipo y entre parentesis la url de donde debe sacar los datos 
  //el nombre del tipo debe ser igual que los tipos que tenemos en la interfaz 
  getVehicleList(): Observable<VehicleListResponse> {
    return this.http.get<VehicleListResponse>('https://swapi.dev/api/vehicles/?page=1');
  }


  //esta url: string viene dada en el vehicle-list  
  getVehicleUrl(url: string): Observable<ViewVehicleDetail> {
    return this.http.get<ViewVehicleDetail>(url);
  }
}

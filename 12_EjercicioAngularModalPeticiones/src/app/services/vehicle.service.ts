import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { VehicleListResponse } from '../models/vehicle-list.interface';
import { ViewVehicleDetailResponse } from '../models/vehicle-details.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class VehicleService {

  constructor(private http: HttpClient) { }

  //El Observable indica de que tipo es el obejto que devuelve, dentro montamos la peticion le decimos el tipo y entre parentesis la url de donde debe sacar los datos 
  //el nombre del tipo debe ser igual que los tipos que tenemos en la interfaz 
  //Para paginar modificamos la consulta y le pasamos el numero de la página que tenemos guardada en la variable 
  //del componente padre
  //la propia url de la SWAPI nos trae un atributo ?page 
  getVehicleList(page: number): Observable<VehicleListResponse> {
    return this.http.get<VehicleListResponse>(`https://swapi.dev/api/vehicles/?page=${page}`);
  }


  //esta url: string viene dada en el vehicle-list  
  getVehicleUrl(url: string): Observable<ViewVehicleDetailResponse> {
    return this.http.get<ViewVehicleDetailResponse>(url);
  }
}

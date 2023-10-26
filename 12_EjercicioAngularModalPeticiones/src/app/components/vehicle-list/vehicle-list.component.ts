import { Component } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Vehicle } from 'src/app/models/vehicle-list.interface';
import { VehicleService } from 'src/app/services/vehicle.service';

@Component({
  selector: 'app-vehicle-list',
  templateUrl: './vehicle-list.component.html',
  styleUrls: ['./vehicle-list.component.css']
})
export class VehicleListComponent {
  vehicleList: Vehicle[] = [];
  vehicleUrl: Vehicle | undefined;
  selectedVehicle: Vehicle | undefined;

  //para poder llamar a los metodos del servicio hay que colocarlo en el contructor
  constructor(private vehicleService: VehicleService, private modalService: NgbModal) { }

  //ngOnInit indica que ese metodo se va a lanzar en cuanto se cargue la página
  //llamamos al metodo del servicio y guardamos lo que devuelve en una varible
  ngOnInit(): void {
    this.vehicleService.getVehicleList().subscribe(resp => {
      this.vehicleList = resp.results;
    })
  }

  //creamos un metodo que abre el modal que recibe la url desde el hijo con capturandolo con $event y colocamos el nombre de la varible que le llega
  //y se la pasamos al metodo del servicio, guardamos el vehiculo que nos devuelve la consulta en una varibale para poder pintala y le indicamos
  //que abra el modal
  //IMPORTANTE guardarlo en una varibale antes del abrir el modal sino este modal nos sadria vacio
  openModal(url: string, vehicleModal: any) {
    this.vehicleService.getVehicleUrl(url).subscribe(resp => {
      this.selectedVehicle = resp;
      this.modalService.open(vehicleModal);
    });
  }

}

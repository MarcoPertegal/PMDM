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

  //para la paginacion creamos una variable para el numero de la página y otra para el numero total de elementos
  pageNumber: number = 1;
  count: number = 0;

  //para poder llamar a los metodos del servicio hay que colocarlo en el contructor
  constructor(private vehicleService: VehicleService, private modalService: NgbModal) { }

  //ngOnInit indica que ese metodo se va a lanzar en cuanto se cargue la página
  //llamamos al metodo que nos pinta las paginas
  ngOnInit(): void {
    this.loadNewPage();
  }

  //Este metodo llama al servicio y le pasamos el pageNumber que tenemos guardado en nuestra variable que se va 
  //actualizado usando el [(page)]="pageNumber" del html para saber la página en la que estamos la consulta nos 
  //devuelve VehicleListResponse desdfe hay podemos acceder a count y para acceder a la lista accedemos a su 
  //array de results para obtener los vehiculos 
  loadNewPage() {
    this.vehicleService.getVehicleList(this.pageNumber).subscribe(resp => {
      this.vehicleList = resp.results;
      this.count = resp.count;
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
